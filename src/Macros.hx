package;

import haxe.macro.Expr.ComplexType;
#if macro
import haxe.Exception;
import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.Expr.Field;

class Macros {
    macro static function setupVersion() {
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
            name: localClass.module.split('.')[localClass.module.split('.').length-1]
        });

        final bitAnd:Field = {
            meta: [{
                name: ":op",
                params: [(macro A & B)],
                pos: Context.currentPos()
            }],
            access: [APrivate, AExtern],
			name: '_nativeBitwiseAnd${Math.floor((Math.random() * 9999))}',
            kind: FFun({
                args: [{
                    name: "a0",
                    type: lctype
                }],
				ret: lctype,
            }),
            pos: Context.currentPos(),
            
        }
        final bitwiseOr:Field = {
            meta: [{
                name: ":op",
                params: [(macro A | B)],
                pos: Context.currentPos()
            }],
            access: [APrivate, AExtern],
			name: '_nativeBitwiseOr${Math.floor((Math.random() * 9999))}',
            kind: FFun({
                args: [{
                    name: "a0",
                    type: lctype
                }],
                ret: lctype
            }),
            pos: Context.currentPos()
        }
        final bitwiseXOr:Field = {
            meta: [{
                name: ":op",
                params: [(macro A ^ B)],
                pos: Context.currentPos()
            }],
            access: [APrivate, AExtern],
			name: '_nativeBitwiseXOr${Math.floor((Math.random() * 9999))}',
            kind: FFun({
                args: [{
                    name: "a0",
                    type: lctype
                }],
                ret: lctype
            }),
            pos: Context.currentPos()
        }
        return fields.concat([bitAnd, bitwiseOr, bitwiseXOr]);
    }
}
#end