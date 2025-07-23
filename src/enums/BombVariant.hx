package enums;

@:native("BombVariant")
extern enum BombVariant {
	@:native("BOMB_NORMAL") Normal;
	@:native("BOMB_BIG") Big;
	@:native("BOMB_DECOY") Decoy;
	@:native("BOMB_TROLL") Troll;
	@:native("BOMB_SUPERTROLL") SuperTroll;
	@:native("BOMB_POISON") Poison;
	@:native("BOMB_POISON_BIG") BigPoison;
	@:native("BOMB_SAD") Sad;
	@:native("BOMB_HOT") Hot;
	@:native("BOMB_BUTT") Butt;
	@:native("BOMB_MR_MEGA") MrMega;
	@:native("BOMB_BOBBY") Bobby;
	@:native("BOMB_GLITTER") Glitter;
    #if (Isaac_Version == "Rep" || Isaac_Version == "RepPlus" || IsaacVersion == "REPENTOGON")
	@:native("BOMB_THROWABLE") Throwable;
	@:native("BOMB_SMALL") Small;
	@:native("BOMB_BRIMSTONE") Brimstone;
	@:native("BOMB_SAD_BLOOD") SadBlood;
	@:native("BOMB_GIGA") Giga;
	@:native("BOMB_GOLDENTROLL") GoldenTroll;
	@:native("BOMB_ROCKET") Rocket;
	@:native("BOMB_ROCKET_GIGA") GigaRocket;
    #end
}