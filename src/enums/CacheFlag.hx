package enums;

@:native("CacheFlag")
extern enum CacheFlag {
	@:native("CACHE_DAMAGE") Damage;
	@:native("CACHE_FIREDELAY") FireDelay;
	@:native("CACHE_SHOTSPEED") ShotSpeed;
	@:native("CACHE_RANGE") Range;
	@:native("CACHE_SPEED") Speed;
	@:native("CACHE_TEARFLAG") TearFlag;
	@:native("CACHE_TEARCOLOR") TearColor;
	@:native("CACHE_FLYING") Flying;
	@:native("CACHE_WEAPON") Weapon;
	@:native("CACHE_FAMILIARS") Familiars;
	@:native("CACHE_LUCK") Luck;
    #if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
	@:native("CACHE_SIZE") Size;
	@:native("CACHE_COLOR") Color;
	@:native("CACHE_PICKUP_VISION") PickupVision;
	@:native("CACHE_TWIN_SYNC") TwinSync;
    #end
	@:native("CACHE_ALL") All;
}