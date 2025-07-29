package enums;

//This includes every version but idk if mcmillian is gonna release more for some reason
#if (IsaacVersion == "RepPlus" || IsaacVersion == "Rep" || IsaacVersion == "Abp" || IsaacVersion == REPENTOGON)
@:native("ActionTriggers")
@:build(Macros.isaacBitset())
@:build(Macros.nativeNameMod(Prefix("ACTIONTRIGGER_"), AllCaps))
extern enum abstract ActionTriggers(Int) {
	final None;
	final BombPlaced;
	final Moved;
	final Shooting;
	final CardPillUsed;
	final ItemActivated;
	final ItemsDropped;
}
#end