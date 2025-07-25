package enums;

@:native("CacheFlag")
@:build(Macros.isaacBitset())
@:build(Macros.nativeNameMod(Prefix("CACHE_"), AllCaps))
extern enum abstract CacheFlag(Int) {
	final Damage;
	final FireDelay;
	final ShotSpeed;
	final Range;
	final Speed;
	final TearFlag;
	final TearColor;
	final Flying;
	final Weapon;
	final Familiars;
	final Luck;
    #if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
	final Size;
	final Color;
	@:native("CACHE_PICKUP_VISION") final PickupVision;
	@:native("CACHE_TWIN_SYNC")     final TwinSync;
    #end
	final All;
}