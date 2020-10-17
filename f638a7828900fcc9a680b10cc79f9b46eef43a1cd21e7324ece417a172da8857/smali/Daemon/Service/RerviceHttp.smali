.class public LDaemon/Service/RerviceHttp;
.super Ljava/lang/Object;
.source "RerviceHttp.java"


# static fields
.field public static final Overtime:I = 0xb

.field public static final Specifications_error:I = 0x6

.field public static final TAG_CMCC:[B

.field public static final client_error:I = 0x5

.field public static final cmnet:I = 0x2

.field public static final cmwap:I = 0x1

.field public static final http:I = 0x1

.field public static final http_error:I = 0x0

.field public static http_mode:I = 0x0

.field public static final http_mode_end:I = 0x0

.field public static final http_mode_start:I = 0x1

.field public static final http_msg:I = 0x2

.field public static final http_open_num:I = 0x2

.field public static final http_play_end:I = 0x3

.field public static final http_play_free:I = 0x0

.field public static final http_play_get:I = 0x2

.field public static final http_play_start:I = 0x1

.field public static http_state:I = 0x0

.field public static http_time:J = 0x0L

.field public static httpbase:LDaemon/Base/HttpBase; = null

.field public static msg:Ljava/lang/String; = null

.field public static final net_wap_error:I = 0xa

.field public static open_num:I = 0x0

.field public static final otherhttp:I = 0xc

.field private static final tag:Ljava/lang/String; = "RerviceHttp"

.field public static final user_error:I = 0x3

.field public static final version_error:I = 0x4


# instance fields
.field private conn:Ljava/net/URLConnection;

.field private http_end:I

.field private httpmode:I

.field private myurl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    const-string v0, "\u7528\u4e8e\u4efb\u4f55\u63d0\u793a"

    sput-object v0, LDaemon/Service/RerviceHttp;->msg:Ljava/lang/String;

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LDaemon/Service/RerviceHttp;->TAG_CMCC:[B

    .line 45
    const-wide/16 v0, 0x0

    sput-wide v0, LDaemon/Service/RerviceHttp;->http_time:J

    .line 48
    sput v2, LDaemon/Service/RerviceHttp;->http_state:I

    .line 55
    sput v2, LDaemon/Service/RerviceHttp;->http_mode:I

    .line 59
    sput v2, LDaemon/Service/RerviceHttp;->open_num:I

    .line 16
    return-void

    .line 29
    nop

    :array_0
    .array-data 1
        0x3ct
        0x3ft
        0x78t
        0x6dt
        0x6ct
        0x20t
        0x76t
        0x65t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, LDaemon/Service/RerviceHttp;->httpmode:I

    .line 26
    iput-object v1, p0, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    .line 27
    iput-object v1, p0, LDaemon/Service/RerviceHttp;->myurl:Ljava/net/URL;

    .line 16
    return-void
.end method

.method public static m7898dd4b()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput v0, LDaemon/Service/RerviceHttp;->http_state:I

    .line 64
    const/4 v0, 0x1

    sput v0, LDaemon/Service/RerviceHttp;->http_mode:I

    .line 65
    const/4 v0, 0x0

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 66
    return-void
.end method

.method public static m39bca0c7(LDaemon/Base/HttpBase;)V
    .locals 5
    .param p0, "httpbase"    # LDaemon/Base/HttpBase;

    .prologue
    const/4 v4, 0x0

    .line 72
    const-string v0, "BootReceiver get Http"

    invoke-static {v0}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 74
    sget-wide v0, LDaemon/Service/RerviceHttp;->http_time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, LDaemon/Service/RerviceHttp;->http_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 77
    new-instance v0, LDaemon/Service/RerviceHttp;

    invoke-direct {v0}, LDaemon/Service/RerviceHttp;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->http:LDaemon/Service/RerviceHttp;

    .line 78
    const-string v0, "new http"

    invoke-static {v0}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 80
    :cond_0
    const/4 v0, 0x1

    sput v0, LDaemon/Service/RerviceHttp;->http_state:I

    .line 81
    sput v4, LDaemon/Service/RerviceHttp;->http_mode:I

    .line 82
    sput-object p0, LDaemon/Service/RerviceHttp;->httpbase:LDaemon/Base/HttpBase;

    .line 84
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, LDaemon/Service/OnlineThread;

    invoke-direct {v0}, LDaemon/Service/OnlineThread;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 87
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    invoke-virtual {v0}, LDaemon/Service/OnlineThread;->start()V

    .line 90
    :cond_1
    sput v4, LDaemon/Service/RerviceHttp;->open_num:I

    .line 91
    return-void
.end method

.method public static mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string v0, "RerviceHttp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void
.end method


# virtual methods
.method public Httpconnect(Ljava/lang/String;)I
    .locals 18
    .param p1, "connURL"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, LDaemon/Service/RerviceHttp;->http_end:I

    .line 154
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Service/RerviceHttp;->http_end:I

    move v13, v0

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Service/RerviceHttp;->http_end:I

    move v13, v0

    const/4 v14, 0x5

    if-ne v13, v14, :cond_2

    :cond_1
    sget v13, LDaemon/Service/RerviceHttp;->open_num:I

    const/4 v14, 0x2

    if-lt v13, v14, :cond_3

    .line 259
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Service/RerviceHttp;->http_end:I

    move v13, v0

    :goto_1
    return v13

    .line 157
    :cond_3
    const/4 v5, 0x0

    .line 158
    .local v5, "dos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 159
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .line 160
    .local v11, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    check-cast v7, [B

    .line 164
    .local v7, "downim":[B
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "URL:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 165
    const/4 v13, 0x2

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, LDaemon/Service/RerviceHttp;->httpmode:I

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Service/RerviceHttp;->httpmode:I

    move v13, v0

    packed-switch v13, :pswitch_data_0

    .line 201
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "httpmode:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Service/RerviceHttp;->httpmode:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 204
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 205
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 207
    .end local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    .local v6, "dos":Ljava/io/ByteArrayOutputStream;
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v10

    .local v10, "hh":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_6

    .line 215
    sget v13, LDaemon/Service/RerviceHttp;->http_state:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 218
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 221
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 222
    const/4 v3, 0x0

    .line 223
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 224
    const/4 v11, 0x0

    .line 225
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    .line 226
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LDaemon/Service/RerviceHttp;->myurl:Ljava/net/URL;

    .line 230
    const/4 v12, 0x0

    .line 231
    .local v12, "temp":Ljava/lang/String;
    const-string v13, "UTF-8"

    invoke-static {v7, v13}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 232
    invoke-static {v12}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, LDaemon/Service/RerviceHttp;->parsePackage(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Service/RerviceHttp;->http_end:I

    move v13, v0

    if-nez v13, :cond_0

    .line 237
    sget v13, LDaemon/Service/RerviceHttp;->open_num:I

    add-int/lit8 v13, v13, 0x1

    sput v13, LDaemon/Service/RerviceHttp;->open_num:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 246
    .end local v12    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v9, v13

    move-object v5, v6

    .line 248
    .end local v6    # "dos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "hh":I
    .restart local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    .local v9, "ex":Ljava/lang/Exception;
    :goto_4
    sget v13, LDaemon/Service/RerviceHttp;->open_num:I

    add-int/lit8 v13, v13, 0x1

    sput v13, LDaemon/Service/RerviceHttp;->open_num:I

    .line 251
    const-wide/16 v13, 0x7530

    :try_start_4
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 252
    :catch_1
    move-exception v8

    .line 254
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 170
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "ex":Ljava/lang/Exception;
    :pswitch_0
    :try_start_5
    new-instance v13, Ljava/net/URL;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LDaemon/Service/RerviceHttp;->myurl:Ljava/net/URL;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/RerviceHttp;->myurl:Ljava/net/URL;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    .line 172
    const-string v13, "http://"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    const-string v14, "X-Online-Host"

    const-string v15, "http://"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x7

    const-string v16, "/"

    const/16 v17, 0x7

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    const-string v14, "Accept"

    const-string v15, "*/*"

    invoke-virtual {v13, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded"

    invoke-virtual {v13, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    const-string v14, "User-Agent"

    const-string v15, "microedition.platform"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 182
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Service/RerviceHttp;->httpmode:I

    move v13, v0

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 184
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 185
    const/4 v11, 0x0

    .line 186
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    .line 187
    const/16 v13, 0xa

    goto/16 :goto_1

    .line 175
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    const-string v14, "X-Online-Host"

    const/4 v15, 0x0

    const-string v16, "/"

    const/16 v17, 0x7

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 246
    :catch_2
    move-exception v13

    move-object v9, v13

    goto/16 :goto_4

    .line 189
    :cond_5
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, LDaemon/Service/RerviceHttp;->httpmode:I

    goto/16 :goto_2

    .line 194
    :pswitch_1
    new-instance v13, Ljava/net/URL;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LDaemon/Service/RerviceHttp;->myurl:Ljava/net/URL;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/RerviceHttp;->myurl:Ljava/net/URL;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/RerviceHttp;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 197
    const/4 v13, 0x2

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, LDaemon/Service/RerviceHttp;->httpmode:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 208
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "hh":I
    :cond_6
    :try_start_6
    sget v13, LDaemon/Service/RerviceHttp;->http_state:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 209
    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    .line 246
    .end local v10    # "hh":I
    :catch_3
    move-exception v13

    move-object v9, v13

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "dos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4

    .line 211
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "hh":I
    :cond_7
    const/16 v13, 0xc

    goto/16 :goto_1

    .line 244
    :cond_8
    const/16 v13, 0xc

    goto/16 :goto_1

    .line 246
    .end local v6    # "dos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "hh":I
    .restart local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v13

    move-object v9, v13

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Send_Queue()V
    .locals 5

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 99
    :try_start_0
    sget v2, LDaemon/Service/RerviceHttp;->http_mode:I

    if-nez v2, :cond_0

    .line 100
    sget v2, LDaemon/Service/RerviceHttp;->http_state:I

    if-eqz v2, :cond_0

    .line 101
    sget v2, LDaemon/Service/RerviceHttp;->http_state:I

    if-ne v2, v3, :cond_2

    .line 104
    :cond_0
    const-string v2, "wait other thread"

    invoke-static {v2}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 105
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    sget v2, LDaemon/Service/RerviceHttp;->http_state:I

    packed-switch v2, :pswitch_data_0

    .line 132
    const-string v2, "type wait other thread"

    invoke-static {v2}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 133
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BootReceiver get Http"

    invoke-static {v2}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 139
    invoke-static {}, LDaemon/Service/RerviceHttp;->m7898dd4b()V

    .line 140
    const/4 v2, 0x0

    sput-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    const/4 v2, 0x2

    :try_start_1
    sput v2, LDaemon/Service/RerviceHttp;->http_state:I

    .line 115
    const/4 v2, 0x1

    sput v2, LDaemon/Service/RerviceHttp;->http_mode:I

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, LDaemon/Service/RerviceHttp;->http_time:J

    .line 117
    const/4 v1, 0x1

    .line 118
    .local v1, "end":I
    sget-object v2, LDaemon/Service/RerviceHttp;->httpbase:LDaemon/Base/HttpBase;

    invoke-interface {v2}, LDaemon/Base/HttpBase;->getHttpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, LDaemon/Service/RerviceHttp;->Httpconnect(Ljava/lang/String;)I

    move-result v1

    .line 119
    const/4 v2, 0x0

    sput v2, LDaemon/Service/RerviceHttp;->http_mode:I

    .line 120
    const-wide/16 v2, 0x0

    sput-wide v2, LDaemon/Service/RerviceHttp;->http_time:J

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V

    .line 123
    sget v2, LDaemon/Service/RerviceHttp;->http_state:I

    if-ne v2, v4, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 124
    const/4 v2, 0x3

    sput v2, LDaemon/Service/RerviceHttp;->http_state:I

    .line 126
    sget-object v2, LDaemon/Service/RerviceHttp;->httpbase:LDaemon/Base/HttpBase;

    invoke-interface {v2, v1}, LDaemon/Base/HttpBase;->setPaintState(I)V

    .line 127
    const-string v2, "thread is stop"

    invoke-static {v2}, LDaemon/Service/RerviceHttp;->mf7531e2d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected isCmccTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "temp"    # Ljava/lang/String;
    .param p2, "Match"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCmccTag([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 287
    if-eqz p1, :cond_2

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, LDaemon/Service/RerviceHttp;->TAG_CMCC:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 293
    const/4 v1, 0x1

    .line 295
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 289
    .restart local v0    # "i":I
    :cond_0
    aget-byte v1, p1, v0

    sget-object v2, LDaemon/Service/RerviceHttp;->TAG_CMCC:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 290
    goto :goto_1

    .line 288
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    move v1, v3

    .line 295
    goto :goto_1
.end method

.method public join([B[B)[B
    .locals 5
    .param p1, "a1"    # [B
    .param p2, "a2"    # [B

    .prologue
    const/4 v4, 0x0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "a1length":I
    const/4 v1, 0x0

    .line 317
    .local v1, "a2length":I
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 319
    array-length v0, p1

    .line 321
    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    .line 323
    array-length v1, p2

    .line 327
    :cond_1
    add-int v3, v0, v1

    new-array v2, v3, [B

    .line 329
    .local v2, "result":[B
    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    .line 331
    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    :cond_2
    if-eqz p2, :cond_3

    if-lez v1, :cond_3

    .line 335
    invoke-static {p2, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    :cond_3
    return-object v2
.end method

.method public parsePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "end_text"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v1, 0x1

    iput v1, p0, LDaemon/Service/RerviceHttp;->http_end:I

    .line 274
    iget v0, p0, LDaemon/Service/RerviceHttp;->http_end:I

    .line 276
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 279
    :pswitch_0
    sget v1, LDaemon/Service/RerviceHttp;->http_state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 280
    sget-object v1, LDaemon/Service/RerviceHttp;->httpbase:LDaemon/Base/HttpBase;

    invoke-interface {v1, p1}, LDaemon/Base/HttpBase;->parsePackage(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, LDaemon/Service/RerviceHttp;->http_end:I

    goto :goto_0

    .line 282
    :cond_0
    const/16 v1, 0xc

    iput v1, p0, LDaemon/Service/RerviceHttp;->http_end:I

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
