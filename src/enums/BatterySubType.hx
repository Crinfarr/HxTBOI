package enums;

#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
@:native("BatterySubType")
@:build(Macros.nativeNameMod(Prefix("BATTERY_"), AllCaps))
extern enum BatterySubType {
	Normal;
	Micro;
	Mega;
	Golden;
}
#end
