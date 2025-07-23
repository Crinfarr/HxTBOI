package enums;

@:native("CacheFlag")
@:macro(Macros.allowBitwise())
extern enum abstract CacheFlag(Int) {
	@:op(A & B) private function _nativeAnd(a0:CacheFlag):CacheFlag;
	@:native("CACHE_DAMAGE")        final Damage;
	@:native("CACHE_FIREDELAY")     final FireDelay;
	@:native("CACHE_SHOTSPEED")     final ShotSpeed;
	@:native("CACHE_RANGE")         final Range;
	@:native("CACHE_SPEED")         final Speed;
	@:native("CACHE_TEARFLAG")      final TearFlag;
	@:native("CACHE_TEARCOLOR")     final TearColor;
	@:native("CACHE_FLYING")        final Flying;
	@:native("CACHE_WEAPON")        final Weapon;
	@:native("CACHE_FAMILIARS")     final Familiars;
	@:native("CACHE_LUCK")          final Luck;
    #if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
	@:native("CACHE_SIZE")          final Size;
	@:native("CACHE_COLOR")         final Color;
	@:native("CACHE_PICKUP_VISION") final PickupVision;
	@:native("CACHE_TWIN_SYNC")     final TwinSync;
    #end
	@:native("CACHE_ALL")           final All;
}