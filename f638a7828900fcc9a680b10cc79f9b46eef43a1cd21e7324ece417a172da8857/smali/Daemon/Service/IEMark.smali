.class public LDaemon/Service/IEMark;
.super Ljava/lang/Object;
.source "IEMark.java"


# static fields
.field private static final tag:Ljava/lang/String; = "IEMark"


# instance fields
.field private mContext:Landroid/content/Context;

.field private sub:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, LDaemon/Service/IEMark;->sub:Ljava/lang/String;

    .line 20
    iput-object v0, p0, LDaemon/Service/IEMark;->url:Ljava/lang/String;

    .line 25
    iput-object p1, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static m6ff5ca3b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ct"    # Landroid/content/Context;
    .param p1, "openurl"    # Ljava/lang/String;

    .prologue
    .line 154
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .local v1, "it":Landroid/content/Intent;
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "it":Landroid/content/Intent;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openIE error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Service/IEMark;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v0, "IEMark"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method


# virtual methods
.method public AddMark()V
    .locals 11

    .prologue
    const-string v0, "title"

    const-string v0, "date"

    .line 71
    :try_start_0
    const-string v3, "url = ? and title = ?"

    .line 72
    .local v3, "whereClause":Ljava/lang/String;
    const-string v5, "date DESC"

    .line 73
    .local v5, "orderBy":Ljava/lang/String;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "url"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "visits"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 75
    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "bookmark"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 77
    .local v2, "HISTORY_PROJECTION":[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, LDaemon/Service/IEMark;->url:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    .line 79
    iget-object v1, p0, LDaemon/Service/IEMark;->sub:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 81
    .local v4, "where":[Ljava/lang/String;
    iget-object v0, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 87
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "url"

    iget-object v1, p0, LDaemon/Service/IEMark;->url:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string v0, "title"

    iget-object v1, p0, LDaemon/Service/IEMark;->sub:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v2    # "HISTORY_PROJECTION":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "where":[Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 100
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddMark error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Service/IEMark;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public AddShowMark()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    .local v0, "ii":Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, LDaemon/Service/IEMark;->sub:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "url"

    iget-object v2, p0, LDaemon/Service/IEMark;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public DelMark(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    const-string v2, "url = ?"

    .line 41
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 43
    .local v1, "where":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 p1, 0x0

    .line 47
    :cond_0
    iget-object v3, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "where":[Ljava/lang/String;
    .end local v2    # "whereClause":Ljava/lang/String;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DelMark error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/Service/IEMark;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GetHistory()Ljava/util/Vector;
    .locals 12

    .prologue
    .line 108
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 110
    .local v11, "history":Ljava/util/Vector;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 112
    .local v7, "cc":Ljava/util/Calendar;
    new-instance v8, Ljava/util/Date;

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {v8, v0, v1, v2}, Ljava/util/Date;-><init>(III)V

    .line 113
    .local v8, "dd":Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    const/16 v0, 0x7b2

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Ljava/util/Date;-><init>(III)V

    .line 115
    .local v9, "ddd":Ljava/util/Date;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "visits > 0 and date>="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "whereClause":Ljava/lang/String;
    const-string v5, "date DESC"

    .line 117
    .local v5, "orderBy":Ljava/lang/String;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 118
    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "url"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "visits"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 119
    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "bookmark"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 121
    .local v2, "HISTORY_PROJECTION":[Ljava/lang/String;
    iget-object v0, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 124
    const/4 v4, 0x0

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    .end local v2    # "HISTORY_PROJECTION":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "cc":Ljava/util/Calendar;
    .end local v8    # "dd":Ljava/util/Date;
    .end local v9    # "ddd":Ljava/util/Date;
    :goto_1
    return-object v11

    .line 135
    .restart local v2    # "HISTORY_PROJECTION":[Ljava/lang/String;
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v5    # "orderBy":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "cc":Ljava/util/Calendar;
    .restart local v8    # "dd":Ljava/util/Date;
    .restart local v9    # "ddd":Ljava/util/Date;
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 136
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v2    # "HISTORY_PROJECTION":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "cc":Ljava/util/Calendar;
    .end local v8    # "dd":Ljava/util/Date;
    .end local v9    # "ddd":Ljava/util/Date;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 142
    .local v10, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetHistory error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Service/IEMark;->mf7531e2d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public SetSub(Ljava/lang/String;)V
    .locals 0
    .param p1, "sub"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, LDaemon/Service/IEMark;->sub:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public SetUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, LDaemon/Service/IEMark;->url:Ljava/lang/String;

    .line 33
    return-void
.end method
