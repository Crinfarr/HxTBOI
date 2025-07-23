package enums;

#if (IsaacVersion == "Rep" || IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
@:native("BatterySubType")
extern enum BatterySubType {
	@:native("BATTERY_NORMAL") Normal;
	@:native("BATTERY_MICRO") Micro;
	@:native("BATTERY_MEGA") Mega;
	@:native("BATTERY_GOLDEN") Golden;
}
#end
