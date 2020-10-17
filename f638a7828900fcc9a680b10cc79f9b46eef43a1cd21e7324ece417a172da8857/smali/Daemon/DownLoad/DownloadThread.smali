.class public LDaemon/DownLoad/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadThread"


# instance fields
.field private block:I

.field private downLength:I

.field private downUrl:Ljava/net/URL;

.field private downloader:LDaemon/DownLoad/FileDownloader;

.field private finish:Z

.field private interrupt:Z

.field private saveFile:Ljava/io/RandomAccessFile;

.field private startPos:I

.field private threadId:I


# direct methods
.method public constructor <init>(LDaemon/DownLoad/FileDownloader;Ljava/net/URL;Ljava/io/RandomAccessFile;III)V
    .locals 2
    .param p1, "downloader"    # LDaemon/DownLoad/FileDownloader;
    .param p2, "downUrl"    # Ljava/net/URL;
    .param p3, "saveFile"    # Ljava/io/RandomAccessFile;
    .param p4, "block"    # I
    .param p5, "startPos"    # I
    .param p6, "threadId"    # I

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, LDaemon/DownLoad/DownloadThread;->threadId:I

    .line 21
    iput-boolean v1, p0, LDaemon/DownLoad/DownloadThread;->finish:Z

    .line 23
    iput-boolean v1, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    .line 28
    iput-object p2, p0, LDaemon/DownLoad/DownloadThread;->downUrl:Ljava/net/URL;

    .line 29
    iput-object p3, p0, LDaemon/DownLoad/DownloadThread;->saveFile:Ljava/io/RandomAccessFile;

    .line 30
    iput p4, p0, LDaemon/DownLoad/DownloadThread;->block:I

    .line 31
    iput p5, p0, LDaemon/DownLoad/DownloadThread;->startPos:I

    .line 32
    iput-object p1, p0, LDaemon/DownLoad/DownloadThread;->downloader:LDaemon/DownLoad/FileDownloader;

    .line 33
    iput p6, p0, LDaemon/DownLoad/DownloadThread;->threadId:I

    .line 34
    const/4 v0, 0x1

    sub-int v0, p6, v0

    mul-int/2addr v0, p4

    sub-int v0, p5, v0

    iput v0, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    .line 35
    iput-boolean v1, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LDaemon/DownLoad/DownloadThread;->threadId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " downLength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " block:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LDaemon/DownLoad/DownloadThread;->block:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/DownLoad/DownloadThread;->mf7531e2d(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private static mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "DownloadThread"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method


# virtual methods
.method public GetInterrupt()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    return v0
.end method

.method public SetInterrupt()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    .line 152
    return-void
.end method

.method public getDownLength()J
    .locals 2

    .prologue
    .line 138
    iget v0, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->finish:Z

    return v0
.end method

.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x400

    const/16 v10, 0xa

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 46
    iget v7, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    iget v8, p0, LDaemon/DownLoad/DownloadThread;->block:I

    if-ge v7, v8, :cond_3

    .line 50
    :try_start_0
    iget-object v7, p0, LDaemon/DownLoad/DownloadThread;->downUrl:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 51
    .local v2, "http":Ljava/net/HttpURLConnection;
    const-string v7, "GET"

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 52
    const-string v7, "Accept"

    const-string v8, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v7, "Accept-Language"

    const-string v8, "zh-CN"

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v7, "Referer"

    iget-object v8, p0, LDaemon/DownLoad/DownloadThread;->downUrl:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v7, "Charset"

    const-string v8, "UTF-8"

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v7, "Range"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bytes="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, LDaemon/DownLoad/DownloadThread;->startPos:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v7, "User-Agent"

    const-string v8, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 61
    .local v3, "inStream":Ljava/io/InputStream;
    iget v7, p0, LDaemon/DownLoad/DownloadThread;->block:I

    if-le v7, v13, :cond_4

    move v4, v13

    .line 62
    .local v4, "max":I
    :goto_0
    new-array v0, v4, [B

    .line 63
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 64
    .local v5, "offset":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Thread: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, LDaemon/DownLoad/DownloadThread;->threadId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Location:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, LDaemon/DownLoad/DownloadThread;->startPos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " StartDownLoad"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " downLength:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LDaemon/DownLoad/DownloadThread;->mf7531e2d(Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_1
    iget v7, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    iget v8, p0, LDaemon/DownLoad/DownloadThread;->block:I

    if-ge v7, v8, :cond_1

    .line 66
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v12, :cond_1

    .line 67
    iget-boolean v7, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    .line 65
    if-eqz v7, :cond_6

    .line 77
    :cond_1
    iget-object v7, p0, LDaemon/DownLoad/DownloadThread;->saveFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 78
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Thread: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, LDaemon/DownLoad/DownloadThread;->threadId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " DownLoad OK!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LDaemon/DownLoad/DownloadThread;->mf7531e2d(Ljava/lang/String;)V

    .line 80
    iget-boolean v7, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    if-nez v7, :cond_2

    .line 81
    const/4 v7, 0x1

    iput-boolean v7, p0, LDaemon/DownLoad/DownloadThread;->finish:Z

    .line 82
    :cond_2
    invoke-virtual {p0}, LDaemon/DownLoad/DownloadThread;->interrupt()V

    .line 90
    .end local v0    # "buffer":[B
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "max":I
    .end local v5    # "offset":I
    :cond_3
    :goto_2
    return-void

    .line 61
    .restart local v2    # "http":Ljava/net/HttpURLConnection;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    :cond_4
    iget v7, p0, LDaemon/DownLoad/DownloadThread;->block:I

    if-le v7, v10, :cond_5

    move v4, v10

    goto :goto_0

    :cond_5
    move v4, v11

    goto :goto_0

    .line 68
    .restart local v0    # "buffer":[B
    .restart local v4    # "max":I
    .restart local v5    # "offset":I
    :cond_6
    iget-object v7, p0, LDaemon/DownLoad/DownloadThread;->saveFile:Ljava/io/RandomAccessFile;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 69
    iget v7, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    add-int/2addr v7, v5

    iput v7, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    .line 70
    iget-object v7, p0, LDaemon/DownLoad/DownloadThread;->downloader:LDaemon/DownLoad/FileDownloader;

    iget v8, p0, LDaemon/DownLoad/DownloadThread;->threadId:I

    iget v9, p0, LDaemon/DownLoad/DownloadThread;->block:I

    iget v10, p0, LDaemon/DownLoad/DownloadThread;->threadId:I

    sub-int/2addr v10, v11

    mul-int/2addr v9, v10

    iget v10, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, LDaemon/DownLoad/FileDownloader;->update(II)V

    .line 71
    iget-object v7, p0, LDaemon/DownLoad/DownloadThread;->downloader:LDaemon/DownLoad/FileDownloader;

    invoke-virtual {v7}, LDaemon/DownLoad/FileDownloader;->saveLogFile()V

    .line 72
    iget-object v7, p0, LDaemon/DownLoad/DownloadThread;->downloader:LDaemon/DownLoad/FileDownloader;

    invoke-virtual {v7, v5}, LDaemon/DownLoad/FileDownloader;->append(I)V

    .line 73
    iget v7, p0, LDaemon/DownLoad/DownloadThread;->block:I

    iget v8, p0, LDaemon/DownLoad/DownloadThread;->downLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v6, v7, v8

    .line 74
    .local v6, "spare":I
    if-ge v6, v4, :cond_0

    move v4, v6

    goto :goto_1

    .line 83
    .end local v0    # "buffer":[B
    .end local v2    # "http":Ljava/net/HttpURLConnection;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v4    # "max":I
    .end local v5    # "offset":I
    .end local v6    # "spare":I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    iput v12, p0, LDaemon/DownLoad/DownloadThread;->downLength:I

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u7ebf\u7a0b"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, LDaemon/DownLoad/DownloadThread;->threadId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LDaemon/DownLoad/DownloadThread;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setFinish()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->finish:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    .line 112
    return-void
.end method
