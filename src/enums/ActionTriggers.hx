package enums;

//This includes every version but idk if mcmillian is gonna release more for some reason
#if (IsaacVersion == "RepPlus" || IsaacVersion == "Rep" || IsaacVersion == "Abp" || IsaacVersion == REPENTOGON)
@:native("ActionTriggers")
@:build(Macros.isaacBitset())
extern enum abstract ActionTriggers(Int) {
    @:native("ACTIONTRIGGER_NONE")          final None;
	@:native("ACTIONTRIGGER_BOMBPLACED")    final BombPlaced;
	@:native("ACTIONTRIGGER_MOVED")         final Moved;
	@:native("ACTIONTRIGGER_SHOOTING")      final Shooting;
	@:native("ACTIONTRIGGER_CARDPILLUSED")  final CardPillUsed;
	@:native("ACTIONTRIGGER_ITEMACTIVATED") final ItemActivated;
	@:native("ACTIONTRIGGER_ITEMSDROPPED")  final ItemsDropped;
}
#end