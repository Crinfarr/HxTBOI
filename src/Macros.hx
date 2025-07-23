package;

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
    macro static function allowBitwise():Array<Field> {
        var fields = Context.getBuildFields();
		final localClass = Context.getLocalClass().get();
        final bitAnd:Field = {
            meta: [
                {
                    name: ":op",
                    params: [macro "A & B"],
                    pos: Context.currentPos()
                }
            ],
            access: [APrivate],
            name: "_nativeBitwiseAnd",
            pos: Context.currentPos(),
            kind: FFun({
                args: [{
                    name: "a0",
                    type: TPath({
						pack: localClass.pack,
                        name: localClass.name
                    })
                }],
                ret: TPath({
                    pack: localClass.pack,
                    name: localClass.name
                })
            })
        }
        fields.push(bitAnd);
        return fields;
    }
    // T.__nativeAnd(T)
	// @:op(A & B) private function __nativeAnd(a0:T):T;
}
#end