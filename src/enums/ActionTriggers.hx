package enums;

//This includes every version but idk if mcmillian is gonna release more for some reason
#if (IsaacVersion == "RepPlus" || IsaacVersion == "Rep" || IsaacVersion == "Abp" || IsaacVersion == REPENTOGON)
@:native("ActionTriggers")
extern enum ActionTriggers {
    @:native("ACTIONTRIGGER_NONE") None;
	@:native("ACTIONTRIGGER_BOMBPLACED") BombPlaced;
	@:native("ACTIONTRIGGER_MOVED") Moved;
	@:native("ACTIONTRIGGER_SHOOTING") Shooting;
	@:native("ACTIONTRIGGER_CARDPILLUSED") CardPillUsed;
	@:native("ACTIONTRIGGER_ITEMACTIVATED") ItemActivated;
	@:native("ACTIONTRIGGER_ITEMSDROPPED") ItemsDropped;
}
#end