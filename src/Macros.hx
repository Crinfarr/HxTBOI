package;

#if macro
import haxe.Exception;
import haxe.macro.Compiler;
import haxe.macro.Context;

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
}
#end