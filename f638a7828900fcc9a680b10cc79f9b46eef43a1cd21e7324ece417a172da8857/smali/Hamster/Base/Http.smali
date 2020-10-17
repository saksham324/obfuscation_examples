.class public LHamster/Base/Http;
.super Ljava/lang/Object;
.source "Http.java"


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

.field public static final http_play_end:I = 0x3

.field public static final http_play_free:I = 0x0

.field public static final http_play_get:I = 0x2

.field public static final http_play_start:I = 0x1

.field public static http_state:I = 0x0

.field public static http_time:J = 0x0L

.field public static httpbase:LHamster/Base/HttpBase; = null

.field public static msg:Ljava/lang/String; = null

.field public static final net_wap_error:I = 0xa

.field public static final otherhttp:I = 0xc

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

    .line 23
    const-string v0, "\u7528\u4e8e\u4efb\u4f55\u63d0\u793a"

    sput-object v0, LHamster/Base/Http;->msg:Ljava/lang/String;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LHamster/Base/Http;->TAG_CMCC:[B

    .line 44
    const-wide/16 v0, 0x0

    sput-wide v0, LHamster/Base/Http;->http_time:J

    .line 47
    sput v2, LHamster/Base/Http;->http_state:I

    .line 54
    sput v2, LHamster/Base/Http;->http_mode:I

    .line 15
    return-void

    .line 28
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, LHamster/Base/Http;->httpmode:I

    .line 25
    iput-object v1, p0, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    .line 26
    iput-object v1, p0, LHamster/Base/Http;->myurl:Ljava/net/URL;

    .line 15
    return-void
.end method

.method public static m39bca0c7(LHamster/Base/HttpBase;)V
    .locals 5
    .param p0, "httpbase"    # LHamster/Base/HttpBase;

    .prologue
    const/4 v4, 0x1

    .line 64
    sget-wide v0, LHamster/Base/Http;->http_time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, LHamster/Base/Http;->http_time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->online:Ljava/lang/Thread;

    .line 68
    new-instance v0, LHamster/Base/Http;

    invoke-direct {v0}, LHamster/Base/Http;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->http:LHamster/Base/Http;

    .line 70
    :cond_0
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0, v4}, LHamster/Base/SuperBase;->setState(I)V

    .line 71
    sput v4, LHamster/Base/Http;->http_state:I

    .line 72
    sput-object p0, LHamster/Base/Http;->httpbase:LHamster/Base/HttpBase;

    .line 73
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->online:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->online:Ljava/lang/Thread;

    .line 76
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->online:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 78
    :cond_1
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    .line 81
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    :cond_2
    return-void
.end method


# virtual methods
.method public Httpconnect(Ljava/lang/String;)I
    .locals 18
    .param p1, "connURL"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string v13, "http://localhost:8080"

    .line 139
    const-string v14, "http://axy.waplove.cn:8080/Wukong"

    .line 138
    move-object/from16 v0, p1

    move-object v1, v13

    move-object v2, v14

    invoke-static {v0, v1, v2}, LHamster/Base/Tools;->mab885b58(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, LHamster/Base/Http;->http_end:I

    .line 142
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, LHamster/Base/Http;->http_end:I

    move v13, v0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, LHamster/Base/Http;->http_end:I

    move v13, v0

    const/4 v14, 0x5

    if-eq v13, v14, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, LHamster/Base/Http;->http_end:I

    move v13, v0

    :goto_1
    return v13

    .line 145
    :cond_0
    const/4 v5, 0x0

    .line 146
    .local v5, "dos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 147
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v11, 0x0

    .line 148
    .local v11, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    check-cast v7, [B

    .line 152
    .local v7, "downim":[B
    :try_start_0
    const-string v13, "http"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "URL:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v13, 0x2

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, LHamster/Base/Http;->httpmode:I

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, LHamster/Base/Http;->httpmode:I

    move v13, v0

    packed-switch v13, :pswitch_data_0

    .line 189
    :goto_2
    const-string v13, "http"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "httpmode:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, LHamster/Base/Http;->httpmode:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 193
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 195
    .end local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    .local v6, "dos":Ljava/io/ByteArrayOutputStream;
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v10

    .local v10, "hh":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_3

    .line 203
    sget v13, LHamster/Base/Http;->http_state:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    .line 206
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 209
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 210
    const/4 v3, 0x0

    .line 211
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 212
    const/4 v11, 0x0

    .line 213
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    .line 214
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LHamster/Base/Http;->myurl:Ljava/net/URL;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 219
    const/4 v12, 0x0

    .line 220
    .local v12, "temp":Ljava/lang/String;
    :try_start_4
    const-string v13, "UTF-8"

    invoke-static {v7, v13}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 221
    const-string v13, "http"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u8fdb\u884c\u5224\u65ad"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v13, "<f>"

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, LHamster/Base/Http;->isCmccTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 223
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, LHamster/Base/Http;->parsePackage(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 227
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 229
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v13, "http"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u751f\u6210\u7684\u9875\u9762\u51fa\u9519"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 235
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v13

    move-object v9, v13

    move-object v5, v6

    .line 241
    .end local v6    # "dos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "hh":I
    .restart local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    .local v9, "ex":Ljava/lang/Exception;
    :goto_4
    const/16 v13, 0xb

    goto/16 :goto_1

    .line 158
    .end local v9    # "ex":Ljava/lang/Exception;
    :pswitch_0
    :try_start_6
    new-instance v13, Ljava/net/URL;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LHamster/Base/Http;->myurl:Ljava/net/URL;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, LHamster/Base/Http;->myurl:Ljava/net/URL;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    .line 160
    const-string v13, "http://"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

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

    .line 165
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    const-string v14, "Accept"

    const-string v15, "*/*"

    invoke-virtual {v13, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    const-string v14, "Content-Type"

    const-string v15, "application/x-www-form-urlencoded"

    invoke-virtual {v13, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    const-string v14, "User-Agent"

    const-string v15, "microedition.platform"

    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, LHamster/Base/Http;->httpmode:I

    move v13, v0

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 172
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 173
    const/4 v11, 0x0

    .line 174
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    .line 175
    const/16 v13, 0xa

    goto/16 :goto_1

    .line 163
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

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

    .line 235
    :catch_2
    move-exception v13

    move-object v9, v13

    goto/16 :goto_4

    .line 177
    :cond_2
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, LHamster/Base/Http;->httpmode:I

    goto/16 :goto_2

    .line 182
    :pswitch_1
    new-instance v13, Ljava/net/URL;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LHamster/Base/Http;->myurl:Ljava/net/URL;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, LHamster/Base/Http;->myurl:Ljava/net/URL;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, LHamster/Base/Http;->conn:Ljava/net/URLConnection;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 185
    const/4 v13, 0x2

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, LHamster/Base/Http;->httpmode:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 196
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "hh":I
    :cond_3
    :try_start_7
    sget v13, LHamster/Base/Http;->http_state:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 197
    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 235
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

    .line 199
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v5    # "dos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "dos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "hh":I
    :cond_4
    const/16 v13, 0xc

    goto/16 :goto_1

    .line 225
    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v12    # "temp":Ljava/lang/String;
    :cond_5
    :try_start_8
    const-string v13, "http"

    const-string v14, "\u51fa\u73b0\u4e86\u79fb\u52a8\u9875\u9762"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 233
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "temp":Ljava/lang/String;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    :cond_6
    const/16 v13, 0xc

    goto/16 :goto_1

    .line 235
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

    .line 154
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
    const/4 v2, 0x3

    const/4 v4, 0x2

    const-string v1, "http"

    const-string v1, "Http"

    .line 92
    :try_start_0
    sget v1, LHamster/Base/Http;->http_mode:I

    if-nez v1, :cond_0

    .line 93
    sget v1, LHamster/Base/Http;->http_state:I

    if-eqz v1, :cond_0

    sget v1, LHamster/Base/Http;->http_state:I

    if-ne v1, v2, :cond_2

    .line 96
    :cond_0
    const-string v1, "http"

    const-string v2, "wait other thread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    sget v1, LHamster/Base/Http;->http_state:I

    packed-switch v1, :pswitch_data_0

    .line 123
    const-string v1, "http"

    const-string v2, "type wait other thread"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0

    .line 106
    :pswitch_0
    const/4 v1, 0x2

    sput v1, LHamster/Base/Http;->http_state:I

    .line 107
    const/4 v1, 0x1

    sput v1, LHamster/Base/Http;->http_mode:I

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, LHamster/Base/Http;->http_time:J

    .line 109
    sget-object v1, LHamster/Base/Http;->httpbase:LHamster/Base/HttpBase;

    invoke-interface {v1}, LHamster/Base/HttpBase;->getHttpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LHamster/Base/Http;->Httpconnect(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "end":I
    const/4 v1, 0x0

    sput v1, LHamster/Base/Http;->http_mode:I

    .line 111
    const-wide/16 v1, 0x0

    sput-wide v1, LHamster/Base/Http;->http_time:J

    .line 112
    const-string v1, "Http"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget v1, LHamster/Base/Http;->http_state:I

    if-ne v1, v4, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 115
    sget-object v1, LHamster/Base/Http;->httpbase:LHamster/Base/HttpBase;

    invoke-interface {v1, v0}, LHamster/Base/HttpBase;->setPaintState(I)V

    .line 116
    const/4 v1, 0x3

    sput v1, LHamster/Base/Http;->http_state:I

    .line 117
    const/4 v1, 0x0

    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->online:Ljava/lang/Thread;

    .line 118
    const-string v1, "Http"

    const-string v2, "thread is stop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
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
    .line 286
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 290
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

    .line 273
    if-eqz p1, :cond_2

    .line 274
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, LHamster/Base/Http;->TAG_CMCC:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 279
    const/4 v1, 0x1

    .line 281
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 275
    .restart local v0    # "i":I
    :cond_0
    aget-byte v1, p1, v0

    sget-object v2, LHamster/Base/Http;->TAG_CMCC:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 276
    goto :goto_1

    .line 274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_2
    move v1, v3

    .line 281
    goto :goto_1
.end method

.method public join([B[B)[B
    .locals 5
    .param p1, "a1"    # [B
    .param p2, "a2"    # [B

    .prologue
    const/4 v4, 0x0

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "a1length":I
    const/4 v1, 0x0

    .line 303
    .local v1, "a2length":I
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 305
    array-length v0, p1

    .line 307
    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    .line 309
    array-length v1, p2

    .line 313
    :cond_1
    add-int v3, v0, v1

    new-array v2, v3, [B

    .line 315
    .local v2, "result":[B
    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    .line 317
    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    :cond_2
    if-eqz p2, :cond_3

    if-lez v1, :cond_3

    .line 321
    invoke-static {p2, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    :cond_3
    return-object v2
.end method

.method public parsePackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "end_text"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v3, 0x1

    iput v3, p0, LHamster/Base/Http;->http_end:I

    .line 256
    const-string v3, "<state>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v3, 0x7

    .line 257
    .local v2, "start":I
    const-string v3, "</state>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 258
    .local v1, "end":I
    const/4 v0, 0x0

    .line 260
    .local v0, "code":I
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 262
    packed-switch v0, :pswitch_data_0

    .line 271
    :goto_0
    return-void

    .line 265
    :pswitch_0
    sget v3, LHamster/Base/Http;->http_state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 266
    sget-object v3, LHamster/Base/Http;->httpbase:LHamster/Base/HttpBase;

    invoke-interface {v3, p1}, LHamster/Base/HttpBase;->parsePackage(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, LHamster/Base/Http;->http_end:I

    goto :goto_0

    .line 268
    :cond_0
    const/16 v3, 0xc

    iput v3, p0, LHamster/Base/Http;->http_end:I

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
