.class public LDaemon/DownLoad/FileService;
.super Ljava/lang/Object;
.source "FileService.java"


# static fields
.field public static final Constraint_ie_mode:I = 0x6

.field public static final Constraint_video_mode:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FileService"

.field public static final download_mode:I = 0x0

.field private static final fileroot:Ljava/lang/String; = "/download/"

.field public static final ie_mode:I = 0x4

.field public static final ieaddmark_mode:I = 0x7

.field public static final mms_mode:I = 0x2

.field static final packnum:I = 0x64

.field public static final sms_mode:I = 0x1

.field static final version:I = 0x64

.field public static final video_mode:I = 0x3


# instance fields
.field private context:Landroid/content/Context;

.field private fileSaveDir:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private openHelper:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, LDaemon/DownLoad/FileService;->context:Landroid/content/Context;

    .line 49
    new-instance v0, LDaemon/DownLoad/DBOpenHelper;

    invoke-direct {v0, p1}, LDaemon/DownLoad/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    .line 50
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    .line 51
    iget-object v0, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_0
    return-void
.end method

.method private static mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 563
    const-string v0, "FileService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void
.end method


# virtual methods
.method public IsOkDownFile(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "version"    # I
    .param p2, "packnum"    # I
    .param p3, "downtemp"    # I
    .param p4, "push"    # I
    .param p5, "pushnum"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "txt"    # Ljava/lang/String;
    .param p8, "downpath"    # Ljava/lang/String;

    .prologue
    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IsOkDownFile"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 467
    const/16 v3, 0x64

    if-ne p1, v3, :cond_0

    const/16 v3, 0x64

    if-ne p2, v3, :cond_0

    .line 468
    invoke-virtual {p0}, LDaemon/DownLoad/FileService;->deleteupdate()V

    .line 472
    :cond_0
    iget-object v3, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v3}, LDaemon/DownLoad/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 473
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select down from file where version=? and packnum=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 475
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "found file:packnum"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 479
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 480
    .local v2, "down":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 481
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 482
    if-lez v2, :cond_2

    .line 483
    const/4 v3, 0x0

    .line 503
    .end local v2    # "down":I
    :goto_0
    return v3

    .line 485
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no found file:packnum"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 488
    iget-object v3, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v3}, LDaemon/DownLoad/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 492
    :try_start_0
    const-string v3, "insert into file (downpath, version, packnum, down, push, pushnum, title, txt) values (?,?,?,?,?,?,?,?)"

    .line 493
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p8, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object p5, v4, v5

    const/4 v5, 0x6

    aput-object p6, v4, v5

    const/4 v5, 0x7

    aput-object p7, v4, v5

    .line 492
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    const-string v3, "insert  file is OK"

    invoke-static {v3}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 499
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 503
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v3

    .line 497
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 498
    throw v3
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LDaemon/DownLoad/FileService;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, LDaemon/DownLoad/FileService;->updateDownFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v1}, LDaemon/DownLoad/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 407
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from filedown where downpath=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 410
    invoke-virtual {p0}, LDaemon/DownLoad/FileService;->push()V

    .line 412
    return-void
.end method

.method public deleteupdate()V
    .locals 7

    .prologue
    const-string v3, "100"

    .line 428
    const-string v3, "deleteupdate"

    invoke-static {v3}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 432
    :try_start_0
    iget-object v3, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v3}, LDaemon/DownLoad/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 433
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select down from file where version=? and packnum=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "100"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "100"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 435
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 436
    const-string v3, "delete from file where version=? and packnum=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "100"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "100"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 441
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteupdate error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    iget-object v3, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v3}, LDaemon/DownLoad/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 105
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select threadid, position from filedown where downpath=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 107
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 119
    return-object v1

    .line 111
    :cond_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getDataFileSize(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 171
    iget-object v3, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v3}, LDaemon/DownLoad/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 173
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select filesize from filedown where downpath=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 175
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 176
    .local v2, "filesize":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 177
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v3, v2

    .line 181
    .end local v2    # "filesize":I
    :goto_0
    return v3

    .line 180
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v3, v5

    .line 181
    goto :goto_0
.end method

.method public getfile()Ljava/io/File;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    return-object v0
.end method

.method public getfilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, LDaemon/DownLoad/FileService;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public isNewData(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    iget-object v3, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v3}, LDaemon/DownLoad/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 137
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select threadid, position from filedown where downpath=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 149
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 151
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v5

    .line 154
    :goto_1
    return v3

    .line 143
    :cond_0
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v3, v6

    .line 154
    goto :goto_1
.end method

.method public push()V
    .locals 21

    .prologue
    .line 269
    invoke-static {}, LDaemon/Service/OnlineThread;->m5c911dea()I

    move-result v4

    .line 271
    .local v4, "date":I
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "date:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 273
    const/4 v15, 0x0

    .line 274
    .local v15, "version":I
    const/4 v10, 0x0

    .line 275
    .local v10, "packnum":I
    const-string v6, ""

    .line 276
    .local v6, "downpath":Ljava/lang/String;
    const-string v11, ""

    .line 277
    .local v11, "pushnum":Ljava/lang/String;
    const-string v12, ""

    .line 278
    .local v12, "title":Ljava/lang/String;
    const-string v13, ""

    .line 280
    .local v13, "txt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, LDaemon/DownLoad/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 301
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v16, "select packnum,version,downpath,pushnum,title,txt from file where push=1 or push=? and down=1 "

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object v0, v5

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 303
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-lez v16, :cond_8

    .line 305
    const-string v16, "get cursor"

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 307
    const/16 v16, 0x0

    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 308
    const/16 v16, 0x1

    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 309
    const/16 v16, 0x2

    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 310
    const/16 v16, 0x3

    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 311
    const/16 v16, 0x4

    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 312
    const/16 v16, 0x5

    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 314
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "version:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "packnum:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "downpath:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "pushnum:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 316
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 317
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 318
    move-object/from16 v0, p0

    move v1, v15

    move v2, v10

    invoke-virtual {v0, v1, v2}, LDaemon/DownLoad/FileService;->updatePush(II)V

    .line 320
    rem-int/lit8 v16, v15, 0xa

    if-nez v16, :cond_1

    .line 321
    const-string v16, "download_mode"

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 322
    new-instance v16, LDaemon/Service/Notice;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/FileService;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "\u5b89\u88c5\u63d0\u793a"

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v19}, LDaemon/Service/Notice;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v16, LHamsterSuper/Client/Deamon/NoticeApk;->notice:LDaemon/Service/Notice;

    .line 323
    sget-object v16, LHamsterSuper/Client/Deamon/NoticeApk;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, LDaemon/Service/Notice;->setfilename(Ljava/lang/String;)V

    .line 324
    sget-object v16, LHamsterSuper/Client/Deamon/NoticeApk;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, v16

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, LDaemon/Service/Notice;->Update(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    rem-int/lit8 v16, v15, 0xa

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 327
    const-string v16, "sms_mode"

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 329
    sget-object v16, LHamsterSuper/Client/Deamon/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, LDaemon/Service/SMSObserver;->getSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v16, LDaemon/Service/Notice;

    sget-object v17, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    const-string v18, "\u65b0\u7684\u77ed\u4fe1"

    const/16 v19, 0x1

    invoke-direct/range {v16 .. v19}, LDaemon/Service/Notice;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v16, LHamsterSuper/Client/Deamon/NoticeSms;->notice:LDaemon/Service/Notice;

    .line 331
    sget-object v16, LHamsterSuper/Client/Deamon/NoticeSms;->notice:LDaemon/Service/Notice;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, LDaemon/Service/Notice;->setfilename(Ljava/lang/String;)V

    .line 332
    sget-object v16, LHamsterSuper/Client/Deamon/NoticeSms;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, v16

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, LDaemon/Service/Notice;->Update(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    rem-int/lit8 v16, v15, 0xa

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 335
    const-string v16, "mms_mode"

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 336
    sget-object v16, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, LDaemon/Service/MmsSender;->SetSub(Ljava/lang/String;)V

    .line 337
    sget-object v16, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, LDaemon/Service/MmsSender;->SetText(Ljava/lang/String;)V

    .line 338
    sget-object v16, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, LDaemon/Service/MmsSender;->SetAnnex_url(Ljava/lang/String;)V

    .line 339
    sget-object v16, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, LDaemon/Service/MmsSender;->SetNumber(Ljava/lang/String;)V

    .line 340
    sget-object v16, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    invoke-virtual/range {v16 .. v16}, LDaemon/Service/MmsSender;->setThread()V

    goto/16 :goto_0

    .line 342
    :cond_3
    rem-int/lit8 v16, v15, 0xa

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 343
    const-string v16, "video_mode"

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 345
    new-instance v16, LDaemon/Service/Notice;

    sget-object v17, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    const-string v18, "\u8d85\u7ea7\u5f71\u97f3"

    const/16 v19, 0x2

    invoke-direct/range {v16 .. v19}, LDaemon/Service/Notice;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v16, LHamsterSuper/Client/Deamon/NoticeVideo;->notice:LDaemon/Service/Notice;

    .line 346
    sget-object v16, LHamsterSuper/Client/Deamon/NoticeVideo;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, LDaemon/Service/Notice;->setfilename(Ljava/lang/String;)V

    .line 347
    sget-object v16, LHamsterSuper/Client/Deamon/NoticeVideo;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, v16

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, LDaemon/Service/Notice;->Update(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 349
    :cond_4
    rem-int/lit8 v16, v15, 0xa

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 350
    const-string v16, "ie_mode"

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 352
    new-instance v16, LDaemon/Service/Notice;

    sget-object v17, LHamsterSuper/Client/Deamon/BootReceiver;->mCtx:Landroid/content/Context;

    const-string v18, "\u63a8\u8350\u5730\u5740"

    const/16 v19, 0x3

    invoke-direct/range {v16 .. v19}, LDaemon/Service/Notice;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v16, LHamsterSuper/Client/Deamon/NoticeIE;->notice:LDaemon/Service/Notice;

    .line 353
    sget-object v16, LHamsterSuper/Client/Deamon/NoticeIE;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, LDaemon/Service/Notice;->setfilename(Ljava/lang/String;)V

    .line 354
    sget-object v16, LHamsterSuper/Client/Deamon/NoticeIE;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, v16

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, LDaemon/Service/Notice;->Update(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_5
    rem-int/lit8 v16, v15, 0xa

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 357
    const-string v16, "Constraint_video_mode"

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 359
    :try_start_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 360
    .local v14, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 361
    .local v9, "it":Landroid/content/Intent;
    const/high16 v16, 0x34000000

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 364
    invoke-static {v6}, LDaemon/Service/Notice;->m3216fd9c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/FileService;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 366
    .end local v9    # "it":Landroid/content/Intent;
    .end local v14    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 367
    .local v7, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Constraint_video_mode error:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    rem-int/lit8 v16, v15, 0xa

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 372
    const-string v16, "Constraint_ie_mode"

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/FileService;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-static {v0, v1}, LDaemon/Service/IEMark;->m6ff5ca3b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 375
    :cond_7
    rem-int/lit8 v16, v15, 0xa

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 376
    const-string v16, "ieaddmark_mode"

    invoke-static/range {v16 .. v16}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 377
    new-instance v8, LDaemon/Service/IEMark;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/FileService;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, LDaemon/Service/IEMark;-><init>(Landroid/content/Context;)V

    .line 378
    .local v8, "iemark":LDaemon/Service/IEMark;
    invoke-virtual {v8, v12}, LDaemon/Service/IEMark;->SetSub(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v8, v6}, LDaemon/Service/IEMark;->SetSub(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v8}, LDaemon/Service/IEMark;->AddMark()V

    goto/16 :goto_0

    .line 385
    .end local v8    # "iemark":LDaemon/Service/IEMark;
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 386
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0
.end method

.method public save(ILjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "filesize"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0, p2}, LDaemon/DownLoad/FileService;->isNewData(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v2}, LDaemon/DownLoad/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 213
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 215
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 231
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void

    .line 215
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 216
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v3, "insert into filedown(filesize,downpath, threadid, position) values(?,?,?,?)"

    .line 217
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 216
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    .line 221
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 222
    throw v2
.end method

.method public setfilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, LDaemon/DownLoad/FileService;->filename:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v2}, LDaemon/DownLoad/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 246
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 249
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 259
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 260
    return-void

    .line 249
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v3, "update filedown set position=? where downpath=? and threadid=?"

    .line 251
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 250
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    .line 257
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 258
    throw v2
.end method

.method public updateDownFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "savepath"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v1, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v1}, LDaemon/DownLoad/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 517
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 521
    :try_start_0
    const-string v1, "update file set downpath=?,down=1 where downpath=?"

    .line 522
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 521
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update file downpath file is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LDaemon/DownLoad/FileService;->mf7531e2d(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 529
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 530
    return-void

    .line 526
    :catchall_0
    move-exception v1

    .line 527
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 528
    throw v1
.end method

.method public updatePush(II)V
    .locals 5
    .param p1, "version"    # I
    .param p2, "packnum"    # I

    .prologue
    const-string v1, "ok"

    .line 541
    iget-object v1, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v1}, LDaemon/DownLoad/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 542
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 545
    :try_start_0
    const-string v1, "update file set push=0,pushnum=?,title=?,txt=? where version=? and packnum=?"

    .line 546
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ok"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ok"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ok"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 552
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 553
    return-void

    .line 549
    :catchall_0
    move-exception v1

    .line 550
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 551
    throw v1
.end method
