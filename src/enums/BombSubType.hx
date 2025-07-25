package enums;

@:native("BombSubType")
@:build(Macros.nativeNameMod(Prefix("BOMB_"), AllCaps))
extern enum BombSubType {
	Normal;
	DoublePack;
	Troll;
	Golden;
	SuperTroll;
	#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
	GoldenTroll;
	Giga;
    #end
}