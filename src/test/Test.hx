package test;

import enums.CacheFlag;

class Test {
    static function main() {
        Sys.print(CacheFlag.Damage & CacheFlag.Flying);
    }
}