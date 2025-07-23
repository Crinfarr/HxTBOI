package test;

import enums.CallbackPriority;
import enums.CacheFlag;

class Test {
    static function main() {
        Sys.print(CacheFlag.Damage & CacheFlag.Flying);
    }
}