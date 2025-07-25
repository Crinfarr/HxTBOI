package enums;

@:native("BombVariant")
@:build(Macros.nativeNameMod(Snakeify, Prefix("BOMB_"), AllCaps))
extern enum BombVariant {
	Normal;
	Big;
	Decoy;
	Troll;
	@:native("BOMB_SUPERTROLL") SuperTroll;
	Poison;
	@:native("BOMB_POISON_BIG") BigPoison;
	Sad;
	Hot;
	Butt;
	MrMega;
	Bobby;
	Glitter;
    #if (Isaac_Version == "Rep" || Isaac_Version == "RepPlus" || IsaacVersion == "REPENTOGON")
	Throwable;
	Small;
	Brimstone;
	SadBlood;
	Giga;
	@:native("BOMB_GOLDENTROLL") GoldenTroll;
	Rocket;
	@:native("BOMB_ROCKET_GIGA") GigaRocket;
    #end
}