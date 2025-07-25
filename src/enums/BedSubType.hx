package enums;

#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
@:native("BedSubType")
@:build(Macros.nativeNameMod(Prefix("BED_"), AllCaps))
extern enum BedSubType {
    Isaac;
    Mom;
}
#end