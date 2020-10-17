.class public LDaemon/Service/MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MyPhoneStateListener.java"


# instance fields
.field private LastState:I

.field private mCtx:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "Ctx"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 16
    iput-object p1, p0, LDaemon/Service/MyPhoneStateListener;->mCtx:Landroid/content/Context;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, LDaemon/Service/MyPhoneStateListener;->LastState:I

    .line 18
    iget-object v0, p0, LDaemon/Service/MyPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, LDaemon/Service/MyPhoneStateListener;->mCtx:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, LDaemon/Service/MyPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 21
    :cond_0
    iget-object v0, p0, LDaemon/Service/MyPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0xe1

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "callNumber"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "BootReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 34
    const-string v0, "BootReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDataActivity():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 107
    const-string v0, "BootReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDataConnectionStateChanged():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-lez p1, :cond_0

    .line 118
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v0}, LDaemon/Global/RegHttp;->readrms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-static {v0}, LDaemon/Service/RerviceHttp;->m39bca0c7(LDaemon/Base/HttpBase;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 28
    const-string v0, "BootReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceStateChanged():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
