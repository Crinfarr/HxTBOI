package enums;

@:native("ButtonAction")
@:build(Macros.nativeNameMod(Prefix("ACTION_"), AllCaps))
extern enum ButtonAction {
	Left;
	Right;
	Up;
	Down;
	ShootLeft;
	ShootRight;
	ShootUp;
	ShootDown;
	Bomb;
	Item;
	PillCard;
	Drop;
	Pause;
	Map_;
	MenuConfirm;
	MenuBack;
	Restart;
	FullScreen;
	Mute;
	JoinMultiplayer;
	MenuLeft;
	MenuRight;
	MenuUp;
	MenuDown;
	MenuLT;
	MenuRT;
	MenuTab;
	Console;
    #if (IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
	MenuEx;
	Emotes;
    #end
}