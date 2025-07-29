package;

import haxe.macro.Type.Ref;
import haxe.ValueException;
import haxe.macro.Type.ModuleType;
import haxe.macro.ComplexTypeTools;
import haxe.macro.ExprTools;
#if macro
import haxe.macro.Expr.ComplexType;
import haxe.Exception;
import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.Expr.Field;
import haxe.macro.Expr.ExprOf;
import haxe.macro.Expr;

using StringTools;
using haxe.macro.TypeTools;
using haxe.macro.TypedExprTools;

class Macros {
	macro static function setup() {
		final tboiVersion = Context.getDefines()["IsaacVersion"];
		if (tboiVersion == null) {
			Compiler.define("IsaacVersion", "RepPlus");
			Sys.println("No target specified, using Repentence+");
			return null;
		}
		if (!["REPENTAGON", "RepPlus", "Rep", "Abp"].contains(tboiVersion)) {
			throw new Exception('IsaacVersion was set to an invalid value, expected one of "REPENTOGON", "Rep", "RepPlus" or "Abp", got "${tboiVersion}"');
		}
		return null;
	}

	macro static function isaacBitset():Array<Field> {
		var fields = Context.getBuildFields();

		final localClass = Context.getLocalClass().get();
		final lctype = TPath({
			pack: localClass.module.split('.').slice(localClass.module.split('.').length),
			name: localClass.module.split('.')[localClass.module.split('.').length - 1]
		});

		final bitAnd:Field = {
			meta: [
				{
					name: ":op",
					params: [(macro A & B)],
					pos: Context.currentPos()
				}
			],
			access: [APrivate, AExtern],
			name: '_nativeBitwiseAnd${Math.floor((Math.random() * 9999)).hex()}',
			kind: FFun({
				args: [
					{
						name: "a0",
						type: lctype
					}
				],
				ret: lctype,
			}),
			pos: Context.currentPos(),
		}
		final bitwiseOr:Field = {
			meta: [
				{
					name: ":op",
					params: [(macro A | B)],
					pos: Context.currentPos()
				}
			],
			access: [APrivate, AExtern],
			name: '_nativeBitwiseOr${Math.floor((Math.random() * 9999)).hex()}',
			kind: FFun({
				args: [
					{
						name: "a0",
						type: lctype
					}
				],
				ret: lctype
			}),
			pos: Context.currentPos()
		}
		final bitwiseXOr:Field = {
			meta: [
				{
					name: ":op",
					params: [(macro A ^ B)],
					pos: Context.currentPos()
				}
			],
			access: [APrivate, AExtern],
			name: '_nativeBitwiseXOr${Math.floor((Math.random() * 9999)).hex()}',
			kind: FFun({
				args: [
					{
						name: "a0",
						type: lctype
					}
				],
				ret: lctype
			}),
			pos: Context.currentPos()
		}
		return fields.concat([bitAnd, bitwiseOr, bitwiseXOr]);
	}

	macro static function nativeNameMod(...enamemods:ExprOf<ENameMod>):Array<Field> {
		final namemods:Array<ENameMod> = enamemods.toArray().map((eo) -> {
			switch (eo.expr) {
				case EConst(CIdent(s)):
					return ENameMod.createByName(s);
				case ECall({expr: EConst(CIdent(s)), pos: _}, [{expr: EConst(CString(p, _)), pos: _}]):
					return ENameMod.createByName(s, [p]);
				default:
					throw 'Unknown value ${eo}';
			}
		});
		final fields = Context.getBuildFields();
		for (field in fields) {
			if (field.kind.match(FVar(null, null)) && !field.meta.map((meta) -> meta.name).contains(':native')) {
				var nativeName = field.name;
                trace('Basename: ${nativeName}');
				for (mod in namemods) {
					switch (mod) {
						case RemoveLeadingUnderscore:
							if (nativeName.startsWith('_'))
								nativeName = nativeName.substr(1);
						case RemoveTrailingUnderscore:
							if (nativeName.endsWith('_'))
								nativeName = nativeName.substr(0, nativeName.length - 1);
						case AllCaps:
							nativeName = nativeName.toUpperCase();
						case Prefix(pref):
							nativeName = '${pref}${nativeName}';
						case Snakeify:
							// This is a pain in the ass
							final wn = [];
							for (idx => char in nativeName.keyValueIterator()) {
								if ((char & 32) == 0) { // ASCII lower case letter flag
									if (idx > 0)
										wn.push('_');
									wn.push(String.fromCharCode(char | 32));
								} else
									wn.push(String.fromCharCode(char));
							}
							nativeName = wn.join("");
						case _:
							trace('Unmatched pattern ${mod}');
					}
					trace('Applied ${mod} : ${nativeName}');
				}
				field.meta.push({
					name: ":native",
					pos: Context.currentPos(),
					params: [(macro $v{nativeName})]
				});
			}
		}
		return fields;
	}
    macro static function ensureMainIsIsaacMod() {
        final conf = Compiler.getConfiguration();
		final mainModule = Context.resolveType(TPath({pack: conf.mainClass.pack, name: conf.mainClass.name}), Context.currentPos()).toModuleType();
		switch (mainModule) {
            case ModuleType.TClassDecl(rClassType):
                if (!(rClassType
                        .get()
                        .interfaces
                        .filter(iface -> iface.t.toString() == "IsaacMod")
                        .length > 0)
                ) {
                    throw new ValueException('Invalid Main class: An Isaac mod\'s main class must implement IsaacMod');
                }
            default:
                throw new ValueException('Invalid Main: ${mainModule} is somehow not TClassDecl');
        }
        return null;
    }
}

enum ENameMod {
	RemoveLeadingUnderscore;
	RemoveTrailingUnderscore;
	AllCaps;
	Prefix(pref:String);
	Snakeify;
}
#end
