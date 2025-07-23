package enums;

#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
@:native("BedSubType")
extern enum BedSubType {
    @:native("BED_ISAAC") Isaac;
    @:native("BED_MOM") Mom;
}
#end