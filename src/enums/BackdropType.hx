package enums;

@:native("BackdropType")
extern enum BackdropType {
	#if (IsaacVersion == "RepPlus" || IsaacVersion == "Rep" || IsaacVersion == "REPENTOGON")
	@:native("NULL") Null_;
	@:native("BASEMENT") Basement;
	@:native("CELLAR") Cellar;
	@:native("BURNT_BASEMENT") BurntBasement;
	@:native("CAVES") Caves;
	@:native("CATACOMBS") Catacombs;
	@:native("FLOODEDCAVES") FloodedCaves;
	@:native("DEPTHS") Depths;
	@:native("NECROPOLIS") Necropolis;
	@:native("DANK_DEPTHS") DankDepths;
	@:native("WOMB") Womb;
	@:native("UTERO") Utero;
	@:native("SCARRED_WOMB") ScarredWomb;
	@:native("BLUE_WOMB") BlueWomb;
	@:native("SHEOL") Sheol;
	@:native("CATHEDRAL") Cathedral;
	@:native("DARK_ROOM") DarkRoom;
	@:native("CHEST") Chest;
	@:native("MEGA_SATAN") MegaSatan;
	@:native("LIBRARY") Library;
	@:native("SHOP") Shop;
	@:native("ISAAC") Isaac;
	@:native("BARREN") Barren;
	@:native("SECRET") Secret;
	@:native("DICE") Dice;
	@:native("ARCADE") Arcade;
	@:native("ERROR_ROOM") ErrorRoom;
	@:native("BLUE_WOMB_PASS") BlueWombPass;
	@:native("GREED_SHOP") GreedShop;
	@:native("DUNGEON") Dungeon;
	@:native("SACRIFICE") Sacrifice;
	@:native("DOWNPOUR") Downpour;
	@:native("MINES") Mines;
	@:native("MAUSOLEUM") Mausoleum;
	@:native("CORPSE") Corpse;
	@:native("PLANETARIUM") Planetarium;
	@:native("DOWNPOUR_ENTRANCE") DownpourEntrance;
	@:native("MINES_ENTRANCE") MinesEntrance;
	@:native("MAUSOLEUM_ENTRANCE") MausoleumEntrance;
	@:native("CORPSE_ENTRANCE") CorpseEntrance;
	@:native("MAUSOLEUM_2") Mausoleum2;
	@:native("MAUSOLEUM_3") Mausoleum3;
	@:native("MAUSOLEUM_4") Mausoleum4;
	@:native("CORPSE_2") Corpse2;
	@:native("CORPSE_3") Corpse3;
	@:native("DROSS") Dross;
	@:native("ASHPIT") Ashpit;
	@:native("GEHENNA") Gehenna;
	@:native("MORTIS") Mortis;
	@:native("ISAACS_BEDROOM") IsaacsBedroom;
	@:native("HALLWAY") Hallway;
	@:native("MOMS_BEDROOM") MomsBedroom;
	@:native("CLOSET") Closet;
	@:native("CLOSET_B") ClosetB;
	@:native("DOGMA") Dogma;
	@:native("DUNGEON_GIDEON") DungeonGideon;
	@:native("DUNGEON_ROTGUT") DungeonRotgut;
	@:native("DUNGEON_BEAST") DungeonBeast;
	@:native("MINES_SHAFT") MinesShaft;
	@:native("ASHPIT_SHAFT") AshpitShaft;
	@:native("DARK_CLOSET") DarkCloset;
	#end
	#if (IsaacVersion == "RepPlus" || IsaacVersion == "REPENTOGON")
	@:native("DEATHMATCH") Deathmatch;
	@:native("LIL_PORTAL") LilPortal;
	#end
	@:native("NUM_BACKDROPS") NumBackdrops;
}
