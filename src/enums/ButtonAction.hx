package enums;

@:native("ButtonAction")
extern enum ButtonAction {
	@:native("ACTION_LEFT") Left;
	@:native("ACTION_RIGHT") Right;
	@:native("ACTION_UP") Up;
	@:native("ACTION_DOWN") Down;
	@:native("ACTION_SHOOTLEFT") ShootLeft;
	@:native("ACTION_SHOOTRIGHT") ShootRight;
	@:native("ACTION_SHOOTUP") ShootUp;
	@:native("ACTION_SHOOTDOWN") ShootDown;
	@:native("ACTION_BOMB") Bomb;
	@:native("ACTION_ITEM") Item;
	@:native("ACTION_PILLCARD") PillCard;
	@:native("ACTION_DROP") Drop;
	@:native("ACTION_PAUSE") Pause;
	@:native("ACTION_MAP") Map_;
	@:native("ACTION_MENUCONFIRM") MenuConfirm;
	@:native("ACTION_MENUBACK") MenuBack;
	@:native("ACTION_RESTART") Restart;
	@:native("ACTION_FULLSCREEN") FullScreen;
	@:native("ACTION_MUTE") Mute;
	@:native("ACTION_JOINMULTIPLAYER") JoinMultiplayer;
	@:native("ACTION_MENULEFT") MenuLeft;
	@:native("ACTION_MENURIGHT") MenuRight;
	@:native("ACTION_MENUUP") MenuUp;
	@:native("ACTION_MENUDOWN") MenuDown;
	@:native("ACTION_MENULT") MenuLT;
	@:native("ACTION_MENURT") MenuRT;
	@:native("ACTION_MENUTAB") MenuTab;
	@:native("ACTION_CONSOLE") Console;
    #if (IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
	@:native("ACTION_MENUEX") MenuEx;
	@:native("ACTION_EMOTES") Emotes;
    #end
}