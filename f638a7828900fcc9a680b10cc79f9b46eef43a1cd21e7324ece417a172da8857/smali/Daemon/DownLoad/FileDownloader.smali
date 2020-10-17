.class public LDaemon/DownLoad/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileDownloader"

.field public static final threadsnoFinish:I = 0x0

.field public static final threadsnofound:I = 0x2

.field public static final threadsokFinish:I = 0x1


# instance fields
.field private block:I

.field private context:Landroid/content/Context;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private downloadSize:I

.field private downloadUrl:Ljava/lang/String;

.field private fileService:LDaemon/DownLoad/FileService;

.field private fileSize:I

.field private logFile:Ljava/io/File;

.field private saveFile:Ljava/io/File;

.field private threads:[LDaemon/DownLoad/DownloadThread;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, LDaemon/DownLoad/FileDownloader;->downloadSize:I

    .line 32
    iput v0, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    .line 189
    iput-object p1, p0, LDaemon/DownLoad/FileDownloader;->context:Landroid/content/Context;

    .line 190
    new-instance v0, LDaemon/DownLoad/FileService;

    invoke-direct {v0, p1}, LDaemon/DownLoad/FileService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    .line 192
    return-void
.end method

.method private me2843350(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 303
    iget-object v4, p0, LDaemon/DownLoad/FileDownloader;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LDaemon/DownLoad/FileDownloader;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    :cond_0
    const/4 v1, 0x0

    .line 309
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "mine":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v1    # "i":I
    .end local v3    # "mine":Ljava/lang/String;
    :cond_1
    move-object v4, v0

    .line 327
    :goto_1
    return-object v4

    .line 313
    .restart local v1    # "i":I
    .restart local v3    # "mine":Ljava/lang/String;
    :cond_2
    const-string v4, "content-disposition"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    const-string v4, ".*filename=(.*)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 317
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 307
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static m4182e031(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 4
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 451
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 453
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "mine":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 461
    return-object v0

    .line 457
    :cond_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 507
    const-string v0, "FileDownloader"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method

.method public static m16795faf(Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 475
    invoke-static {p0}, LDaemon/DownLoad/FileDownloader;->m4182e031(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v1

    .line 477
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0    # "http":Ljava/net/HttpURLConnection;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 485
    return-void

    .line 477
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 481
    .local v2, "key":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LDaemon/DownLoad/FileDownloader;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    move-object v2, v4

    goto :goto_1
.end method


# virtual methods
.method public UpdateFileDownloader(Ljava/lang/String;I)V
    .locals 9
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "threadNum"    # I

    .prologue
    .line 212
    :try_start_0
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 213
    iput-object p1, p0, LDaemon/DownLoad/FileDownloader;->downloadUrl:Ljava/lang/String;

    .line 214
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, LDaemon/DownLoad/FileDownloader;->url:Ljava/net/URL;

    .line 215
    const/4 v6, 0x0

    iput v6, p0, LDaemon/DownLoad/FileDownloader;->downloadSize:I

    .line 220
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v6, p1}, LDaemon/DownLoad/FileService;->getDataFileSize(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    .line 221
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v6, p1}, LDaemon/DownLoad/FileService;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 222
    .local v5, "logdata_temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v6, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    if-gtz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v6, p2, :cond_5

    .line 224
    new-array v6, p2, [LDaemon/DownLoad/DownloadThread;

    iput-object v6, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    .line 225
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 227
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v6, 0x1770

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 228
    const-string v6, "GET"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 229
    const-string v6, "Accept"

    const-string v7, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v6, "Accept-Language"

    const-string v7, "zh-CN"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v6, "Referer"

    invoke-virtual {v0, v6, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v6, "Charset"

    const-string v7, "UTF-8"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v6, "User-Agent"

    const-string v7, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 236
    invoke-static {v0}, LDaemon/DownLoad/FileDownloader;->m16795faf(Ljava/net/HttpURLConnection;)V

    .line 238
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_4

    .line 240
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    iput v6, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    .line 241
    iget v6, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    if-gtz v6, :cond_1

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "no found file size "

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "logdata_temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 283
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    if-eqz v6, :cond_0

    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v6, v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    .line 284
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v6, v6

    if-lt v3, v6, :cond_7

    .line 287
    .end local v3    # "i":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file size:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LDaemon/DownLoad/FileDownloader;->mf7531e2d(Ljava/lang/String;)V

    .line 288
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "url file is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "logdata_temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, LDaemon/DownLoad/FileDownloader;->me2843350(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "filename":Ljava/lang/String;
    const-string v6, ".zip"

    const-string v7, ".apk"

    invoke-static {v2, v6, v7}, LDaemon/Base/Tools;->mab885b58(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v6, v2}, LDaemon/DownLoad/FileService;->setfilename(Ljava/lang/String;)V

    .line 246
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v7}, LDaemon/DownLoad/FileService;->getfile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, LDaemon/DownLoad/FileDownloader;->saveFile:Ljava/io/File;

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file name:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, LDaemon/DownLoad/FileDownloader;->saveFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LDaemon/DownLoad/FileDownloader;->mf7531e2d(Ljava/lang/String;)V

    .line 248
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v6, p1}, LDaemon/DownLoad/FileService;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 249
    .local v4, "logdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 250
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 269
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "logdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    iget v6, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    iget-object v7, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v7, v7

    div-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, LDaemon/DownLoad/FileDownloader;->block:I

    .line 270
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    iget-object v7, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v7, v7

    if-ne v6, v7, :cond_3

    .line 272
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v6, v6

    if-lt v3, v6, :cond_6

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "down ok length:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, LDaemon/DownLoad/FileDownloader;->downloadSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LDaemon/DownLoad/FileDownloader;->mf7531e2d(Ljava/lang/String;)V

    .line 292
    .end local v3    # "i":I
    :cond_3
    return-void

    .line 257
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "http code: 505"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 264
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :cond_5
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file size is mode:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LDaemon/DownLoad/FileDownloader;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_1

    .line 273
    .restart local v3    # "i":I
    :cond_6
    iget v7, p0, LDaemon/DownLoad/FileDownloader;->downloadSize:I

    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v8, p0, LDaemon/DownLoad/FileDownloader;->block:I

    mul-int/2addr v8, v3

    sub-int/2addr v6, v8

    add-int/2addr v6, v7

    iput v6, p0, LDaemon/DownLoad/FileDownloader;->downloadSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 285
    .end local v5    # "logdata_temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v6, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v6, v6, v3

    invoke-virtual {v6}, LDaemon/DownLoad/DownloadThread;->setFinish()V

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method protected declared-synchronized append(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget v0, p0, LDaemon/DownLoad/FileDownloader;->downloadSize:I

    add-int/2addr v0, p1

    iput v0, p0, LDaemon/DownLoad/FileDownloader;->downloadSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public download(LDaemon/DownLoad/DownloadProgressListener;)I
    .locals 14
    .param p1, "listener"    # LDaemon/DownLoad/DownloadProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, "rw"

    .line 349
    :try_start_0
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 351
    const-string v0, "new this.data"

    invoke-static {v0}, LDaemon/DownLoad/FileDownloader;->mf7531e2d(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 353
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v0, v0

    if-lt v11, v0, :cond_3

    .line 358
    .end local v11    # "i":I
    :cond_0
    const/4 v10, 0x0

    .line 360
    .local v10, "finishid":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v0, v0

    if-lt v11, v0, :cond_4

    .line 382
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v0, v0

    if-ge v10, v0, :cond_2

    .line 385
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    iget v1, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    iget-object v2, p0, LDaemon/DownLoad/FileDownloader;->downloadUrl:Ljava/lang/String;

    iget-object v4, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v4}, LDaemon/DownLoad/FileService;->save(ILjava/lang/String;Ljava/util/Map;)V

    .line 386
    const/4 v12, 0x1

    .line 387
    .local v12, "notFinish":Z
    const/4 v7, 0x1

    .line 389
    .local v7, "delete":Z
    :cond_1
    :goto_2
    if-nez v12, :cond_7

    .line 418
    if-eqz v7, :cond_2

    .line 419
    const-string v0, "delete:sql"

    invoke-static {v0}, LDaemon/DownLoad/FileDownloader;->mf7531e2d(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    iget-object v1, p0, LDaemon/DownLoad/FileDownloader;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, LDaemon/DownLoad/FileService;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v7    # "delete":Z
    .end local v12    # "notFinish":Z
    :cond_2
    iget v0, p0, LDaemon/DownLoad/FileDownloader;->downloadSize:I

    return v0

    .line 354
    .end local v10    # "finishid":I
    :cond_3
    :try_start_1
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v1, v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, LDaemon/DownLoad/FileDownloader;->block:I

    mul-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 362
    .restart local v10    # "finishid":I
    :cond_4
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v1, v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, LDaemon/DownLoad/FileDownloader;->block:I

    mul-int/2addr v1, v11

    sub-int v8, v0, v1

    .line 364
    .local v8, "downLength":I
    iget v0, p0, LDaemon/DownLoad/FileDownloader;->block:I

    if-ge v8, v0, :cond_6

    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v1, v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    if-ge v0, v1, :cond_6

    .line 366
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->saveFile:Ljava/io/File;

    const-string v1, "rw"

    invoke-direct {v3, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    .local v3, "randOut":Ljava/io/RandomAccessFile;
    iget v0, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    if-lez v0, :cond_5

    .line 368
    iget v0, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 369
    :cond_5
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v1, v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 370
    iget-object v13, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    new-instance v0, LDaemon/DownLoad/DownloadThread;

    iget-object v2, p0, LDaemon/DownLoad/FileDownloader;->url:Ljava/net/URL;

    iget v4, p0, LDaemon/DownLoad/FileDownloader;->block:I

    iget-object v1, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v5, v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, LDaemon/DownLoad/DownloadThread;-><init>(LDaemon/DownLoad/FileDownloader;Ljava/net/URL;Ljava/io/RandomAccessFile;III)V

    aput-object v0, v13, v11

    .line 371
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v11

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LDaemon/DownLoad/DownloadThread;->setPriority(I)V

    .line 372
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v11

    invoke-virtual {v0}, LDaemon/DownLoad/DownloadThread;->start()V

    .line 360
    .end local v3    # "randOut":Ljava/io/RandomAccessFile;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 375
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "the threads:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is ok!no start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/DownLoad/FileDownloader;->mf7531e2d(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    const/4 v1, 0x0

    aput-object v1, v0, v11

    .line 377
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 391
    .end local v8    # "downLength":I
    .restart local v7    # "delete":Z
    .restart local v12    # "notFinish":Z
    :cond_7
    const-wide/16 v0, 0x384

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 392
    const/4 v12, 0x0

    .line 394
    const/4 v11, 0x0

    :goto_4
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v0, v0

    if-lt v11, v0, :cond_8

    .line 414
    if-eqz p1, :cond_1

    iget v0, p0, LDaemon/DownLoad/FileDownloader;->downloadSize:I

    invoke-interface {p1, v0}, LDaemon/DownLoad/DownloadProgressListener;->onDownloadSize(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 424
    .end local v7    # "delete":Z
    .end local v10    # "finishid":I
    .end local v11    # "i":I
    .end local v12    # "notFinish":Z
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 426
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    iget-object v1, p0, LDaemon/DownLoad/FileDownloader;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, LDaemon/DownLoad/FileService;->delete(Ljava/lang/String;)V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/DownLoad/FileDownloader;->mf7531e2d(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "delete":Z
    .restart local v10    # "finishid":I
    .restart local v11    # "i":I
    .restart local v12    # "notFinish":Z
    :cond_8
    :try_start_2
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v11

    invoke-virtual {v0}, LDaemon/DownLoad/DownloadThread;->GetInterrupt()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 398
    const/4 v7, 0x0

    .line 400
    :cond_9
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v11

    if-eqz v0, :cond_a

    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v11

    invoke-virtual {v0}, LDaemon/DownLoad/DownloadThread;->isFinish()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v11

    invoke-virtual {v0}, LDaemon/DownLoad/DownloadThread;->GetInterrupt()Z

    move-result v0

    if-nez v0, :cond_a

    .line 401
    const/4 v12, 0x1

    .line 402
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v11

    invoke-virtual {v0}, LDaemon/DownLoad/DownloadThread;->getDownLength()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_a

    .line 403
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->saveFile:Ljava/io/File;

    const-string v1, "rw"

    invoke-direct {v3, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    .restart local v3    # "randOut":Ljava/io/RandomAccessFile;
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v1, v11, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 405
    iget-object v13, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    new-instance v0, LDaemon/DownLoad/DownloadThread;

    iget-object v2, p0, LDaemon/DownLoad/FileDownloader;->url:Ljava/net/URL;

    iget v4, p0, LDaemon/DownLoad/FileDownloader;->block:I

    iget-object v1, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    add-int/lit8 v5, v11, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v6, v11, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, LDaemon/DownLoad/DownloadThread;-><init>(LDaemon/DownLoad/FileDownloader;Ljava/net/URL;Ljava/io/RandomAccessFile;III)V

    aput-object v0, v13, v11

    .line 406
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v11

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LDaemon/DownLoad/DownloadThread;->setPriority(I)V

    .line 407
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v11

    invoke-virtual {v0}, LDaemon/DownLoad/DownloadThread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 394
    .end local v3    # "randOut":Ljava/io/RandomAccessFile;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4
.end method

.method public getFileSize()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, LDaemon/DownLoad/FileDownloader;->fileSize:I

    return v0
.end method

.method public getThreadSize()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v0, v0

    return v0
.end method

.method public push()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v0}, LDaemon/DownLoad/FileService;->push()V

    .line 95
    return-void
.end method

.method protected declared-synchronized saveLogFile()V
    .locals 3

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    iget-object v1, p0, LDaemon/DownLoad/FileDownloader;->downloadUrl:Ljava/lang/String;

    iget-object v2, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, LDaemon/DownLoad/FileService;->update(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInterrupt()V
    .locals 2

    .prologue
    .line 497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 503
    return-void

    .line 498
    :cond_0
    iget-object v1, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LDaemon/DownLoad/DownloadThread;->SetInterrupt()V

    .line 497
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setNotice(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "packnum"    # I
    .param p2, "version"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "txt"    # Ljava/lang/String;
    .param p5, "push"    # I
    .param p6, "pushnum"    # Ljava/lang/String;
    .param p7, "downpath"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    const/4 v3, 0x1

    move v1, p2

    move v2, p1

    move v4, p5

    move-object v5, p6

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, LDaemon/DownLoad/FileService;->IsOkDownFile(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v0}, LDaemon/DownLoad/FileService;->push()V

    .line 115
    :cond_0
    return-void
.end method

.method public setType(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "packnum"    # I
    .param p2, "version"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "txt"    # Ljava/lang/String;
    .param p5, "push"    # I
    .param p6, "pushnum"    # Ljava/lang/String;
    .param p7, "downpath"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 71
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    array-length v0, v0

    if-lt v9, v0, :cond_1

    .line 78
    .end local v9    # "i":I
    :cond_0
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    const/4 v3, 0x0

    move v1, p2

    move v2, p1

    move v4, p5

    move-object/from16 v5, p6

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, LDaemon/DownLoad/FileService;->IsOkDownFile(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const/4 v0, 0x2

    .line 81
    :goto_1
    return v0

    .line 72
    .restart local v9    # "i":I
    :cond_1
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->threads:[LDaemon/DownLoad/DownloadThread;

    aget-object v0, v0, v9

    invoke-virtual {v0}, LDaemon/DownLoad/DownloadThread;->isFinish()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    const/4 v0, 0x0

    goto :goto_1

    .line 71
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 81
    .end local v9    # "i":I
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected update(II)V
    .locals 3
    .param p1, "threadId"    # I
    .param p2, "pos"    # I

    .prologue
    .line 165
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->data:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method
