package enums;

@:native("Challenge")
@:build(Macros.nativeNameMod(RemoveTrailingUnderscore, Snakeify, Prefix("CHALLENGE_"), AllCaps))
extern enum Challenge {
    Null_;
    PitchBlack;
    HighBrow;
    HeadTrauma;
    DarknessFalls;
    TheTank;
    SolarSystem;
    SuicideKing;
    CatGotYourTongue;
    DemoMan;
    Cursed;
    GlassCannon;
    WhenLifeGivesLemons;
    Beans;
    ItsInTheCards;
    SlowRoll;
    ComputerSavy;
    WakaWaka;
    TheHost;
    TheFamilyMan;
    Purist;
    @:native("CHALLENGE_XXXXXXXXL") XXXXXXXXL;
    Speed;
    BlueBomber;
    PayToPlay;
    HaveAHeart;
    IRule;
    Brains;
    PrideDay;
    OnansStreak;
    Guardian;
    BackAsswards;
    AprilsFool;
    PokeyMans;
    UltraHard;
    Pong;
    #if (IsaacVersion == "REPENTAGON" || IsaacVersion == "RepPlus" || IsaacVersion == "Rep")
    ScatMan;
    BloodyMary;
    BaptismByFire;
    IsaacsAwakening;
    SeeingDouble;
    PicaRun;
    HotPotato;
    Cantripped;
    RedRedemption;
    DeleteThis;
    @:native("NUM_CHALLENGES") NumChallenges;
    #end
}