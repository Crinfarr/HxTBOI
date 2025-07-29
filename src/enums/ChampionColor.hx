package enums;
#if (IsaacVersion == "REPENTAGON" || IsaacVersion == "RepPlus" || IsaacVersion == "Rep")
@:native("ChampionColor")
@:build(Macros.nativeNameMod(Snakeify, AllCaps))
extern enum ChampionColor {
    Red;
    Yellow;
    Green;
    Orange;
    Blue;
    Black;
    White;
    Grey;
    Transparent;
    Flicker;
    Pink;
    Purple;
    DarkRed;
    LightBlue;
    Camo;
    PulseGreen;
    PulseGrey;
    FlyProtected;
    Tiny;
    Giant;
    PulseRed;
    SizePulse;
    King;
    Death;
    Brown;
    Rainbow;
}
#end