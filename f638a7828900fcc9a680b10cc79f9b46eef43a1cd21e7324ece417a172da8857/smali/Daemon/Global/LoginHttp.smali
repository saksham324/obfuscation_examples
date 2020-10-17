.class public LDaemon/Global/LoginHttp;
.super Ljava/lang/Object;
.source "LoginHttp.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field private static final url:Ljava/lang/String; = "http://localhost:8080/client/loggingall.php?"


# instance fields
.field private passWord:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, "123456"

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "617915"

    iput-object v0, p0, LDaemon/Global/LoginHttp;->userId:Ljava/lang/String;

    .line 19
    const-string v0, "123456"

    iput-object v1, p0, LDaemon/Global/LoginHttp;->passWord:Ljava/lang/String;

    .line 20
    const-string v0, "123456"

    iput-object v1, p0, LDaemon/Global/LoginHttp;->z:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getHttpUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    const-string v0, ""

    .line 52
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "u_field="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/LoginHttp;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/Global/LoginHttp;->passWord:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, LDaemon/Base/URLEncoder;->m97a57645(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&chanel=91316001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://localhost:8080/client/loggingall.php?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, LDaemon/Global/LoginHttp;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, LDaemon/Global/LoginHttp;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getuser_value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, LDaemon/Global/LoginHttp;->z:Ljava/lang/String;

    return-object v0
.end method

.method public parsePackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    const-string v4, "http"

    .line 61
    const-string v2, "http"

    const-string v2, "parsePackage state:start"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "<msg>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 64
    const-string v2, "msg"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, LDaemon/Service/RerviceHttp;->msg:Ljava/lang/String;

    .line 65
    const/4 v2, 0x2

    .line 77
    :goto_0
    return v2

    .line 70
    :cond_0
    :try_start_0
    const-string v2, "z"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "z":Ljava/lang/String;
    invoke-virtual {p0, v1}, LDaemon/Global/LoginHttp;->setuser_value(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    const-string v2, "http"

    const-string v2, "parsePackage state:end"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "z":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setPaintState(I)V
    .locals 0
    .param p1, "httpEnd"    # I

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 99
    :pswitch_0
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "passWord"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, LDaemon/Global/LoginHttp;->passWord:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, LDaemon/Global/LoginHttp;->userId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setuser_value(Ljava/lang/String;)V
    .locals 0
    .param p1, "z"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, LDaemon/Global/LoginHttp;->z:Ljava/lang/String;

    .line 42
    return-void
.end method
