package enums;

#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
@:native("CallbackPriority")
extern enum CallbackPriority {
    @:native("IMPORTANT") Important;
    @:native("EARLY") Early;
    @:native("DEFAULT") Default;
    @:native("LATE") Late;
}
#end