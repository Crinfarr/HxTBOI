package enums;

@:native("BombSubType")
extern enum BombSubType {
	@:native("BOMB_NORMAL") Normal;
	@:native("BOMB_DOUBLEPACK") DoublePack;
	@:native("BOMB_TROLL") Troll;
	@:native("BOMB_GOLDEN") Golden;
	@:native("BOMB_SUPERTROLL") SuperTroll;
	#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
	@:native("BOMB_GOLDENTROLL") GoldenTroll;
	@:native("BOMB_GIGA") Giga;
    #end
}