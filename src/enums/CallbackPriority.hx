package enums;

#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
@:native("CallbackPriority")
@:build(Macros.nativeNameMod(AllCaps))
extern enum CallbackPriority {
    Important;
    Early;
    Default;
    Late;
}
#end