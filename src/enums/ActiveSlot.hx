package enums;

#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
@:native("ActiveSlot")
extern enum ActiveSlot {
	@:native("SLOT_PRIMARY") Primary;
	@:native("SLOT_SECONDARY") Secondary;
	@:native("SLOT_POCKET") Pocket;
	@:native("SLOT_POCKET2") Pocket2;
}
#end
