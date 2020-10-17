.class public LDaemon/DownLoad/DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBOpenHelper.java"


# static fields
.field private static final DBNAME:Ljava/lang/String; = "download.db"

.field private static final VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const-string v0, "download.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 25
    const-string v0, "CREATE TABLE IF NOT EXISTS filedown (id integer primary key autoincrement, downpath varchar(100),filesize INTEGER, threadid INTEGER, position INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    const-string v0, "CREATE TABLE IF NOT EXISTS file (id integer primary key autoincrement,downpath varchar(100),version INTEGER, packnum INTEGER, down INTEGER, push INTEGER, pushnum varchar(16),title varchar(50), txt varchar(150))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 41
    const-string v0, "DROP TABLE IF EXISTS filedown"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    const-string v0, "DROP TABLE IF EXISTS file"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1}, LDaemon/DownLoad/DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    return-void
.end method
