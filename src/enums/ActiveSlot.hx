package enums;

#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
@:native("ActiveSlot")
@:build(Macros.nativeNameMod(Prefix("SLOT_"), AllCaps))
extern enum ActiveSlot {
	Primary;
	Secondary;
	Pocket;
	Pocket2;
}
#end
