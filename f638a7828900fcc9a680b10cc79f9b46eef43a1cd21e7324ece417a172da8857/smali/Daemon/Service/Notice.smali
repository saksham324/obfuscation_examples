.class public LDaemon/Service/Notice;
.super Ljava/lang/Object;
.source "Notice.java"


# static fields
.field public static final apk_mode:I = 0x0

.field public static final ie_mode:I = 0x3

.field public static final sms_mode:I = 0x1

.field private static final tag:Ljava/lang/String; = "Notice"

.field public static final video_mode:I = 0x2


# instance fields
.field private contentIntent:Landroid/app/PendingIntent;

.field private filename:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mode:I

.field private notif:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "notificationIntent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v1, ""

    iput-object v1, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    .line 25
    iput v2, p0, LDaemon/Service/Notice;->mode:I

    .line 62
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, LDaemon/Service/Notice;->mNotificationManager:Landroid/app/NotificationManager;

    .line 63
    iput-object p1, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    .line 64
    const/high16 v1, 0x10000000

    invoke-static {p1, v2, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    .line 65
    move-object v0, p3

    .line 66
    .local v0, "tickerText":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Notification;

    const v2, 0x108008f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    const/4 v4, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v2, ""

    iput-object v2, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    .line 25
    iput v4, p0, LDaemon/Service/Notice;->mode:I

    .line 33
    iput-object p1, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    .line 34
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, LDaemon/Service/Notice;->mNotificationManager:Landroid/app/NotificationManager;

    .line 35
    iput p3, p0, LDaemon/Service/Notice;->mode:I

    .line 36
    const v0, 0x108008f

    .line 37
    .local v0, "icon":I
    packed-switch p3, :pswitch_data_0

    .line 57
    :goto_0
    move-object v1, p2

    .line 58
    .local v1, "tickerText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v2, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    .line 60
    return-void

    .line 39
    .end local v1    # "tickerText":Ljava/lang/CharSequence;
    :pswitch_0
    const v0, 0x108007c

    .line 40
    new-instance v2, Landroid/content/Intent;

    const-class v3, LHamsterSuper/Client/Deamon/NoticeApk;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 43
    :pswitch_1
    const v0, 0x7f02001e

    .line 44
    new-instance v2, Landroid/content/Intent;

    const-class v3, LHamsterSuper/Client/Deamon/NoticeSms;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 47
    :pswitch_2
    const v0, 0x1080024

    .line 48
    new-instance v2, Landroid/content/Intent;

    const-class v3, LHamsterSuper/Client/Deamon/NoticeVideo;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 51
    :pswitch_3
    const v0, 0x1080074

    .line 52
    new-instance v2, Landroid/content/Intent;

    const-class v3, LHamsterSuper/Client/Deamon/NoticeIE;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static m3216fd9c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "Annex_name"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "Annex_name_temp":Ljava/lang/String;
    const-string v2, "txt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 167
    const-string v1, "text/plain"

    .line 191
    :goto_0
    return-object v1

    .line 168
    :cond_0
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 169
    const-string v1, "image/png"

    goto :goto_0

    .line 170
    :cond_1
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 171
    const-string v1, "image/jpg"

    goto :goto_0

    .line 172
    :cond_2
    const-string v2, "jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 173
    const-string v1, "image/jpeg"

    goto :goto_0

    .line 174
    :cond_3
    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 175
    const-string v1, "image/gif"

    goto :goto_0

    .line 176
    :cond_4
    const-string v2, "bmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 177
    const-string v1, "image/bmp"

    goto :goto_0

    .line 178
    :cond_5
    const-string v2, "mp3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 179
    const-string v1, "audio/mp3"

    goto :goto_0

    .line 180
    :cond_6
    const-string v2, "mid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_7

    .line 181
    const-string v1, "audio/mid"

    goto :goto_0

    .line 182
    :cond_7
    const-string v2, "wav"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    .line 183
    const-string v1, "audio/wav"

    goto :goto_0

    .line 184
    :cond_8
    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_9

    .line 185
    const-string v1, "video/mp4"

    goto :goto_0

    .line 186
    :cond_9
    const-string v2, "3gp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a

    .line 187
    const-string v1, "video/3gp"

    goto :goto_0

    .line 189
    :cond_a
    const-string v1, "text/plain"

    goto :goto_0
.end method

.method private static mf7531e2d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v0, "Notice"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method


# virtual methods
.method public Update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "Text"    # Ljava/lang/String;

    .prologue
    .line 76
    move-object v0, p2

    .line 77
    .local v0, "contentText":Ljava/lang/CharSequence;
    move-object v1, p1

    .line 78
    .local v1, "contentTitle":Ljava/lang/CharSequence;
    iget-object v2, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    iget-object v3, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    iget-object v4, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 79
    iget-object v2, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 80
    iget-object v2, p0, LDaemon/Service/Notice;->mNotificationManager:Landroid/app/NotificationManager;

    iget v3, p0, LDaemon/Service/Notice;->mode:I

    iget-object v4, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 81
    const-string v2, "new notice"

    invoke-static {v2}, LDaemon/Service/Notice;->mf7531e2d(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public getfilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public setfilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public startIntent(Landroid/content/Context;I)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const-string v4, "android.intent.action.VIEW"

    .line 112
    const/4 v1, 0x0

    .line 115
    .local v1, "notificationIntent":Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 153
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_1
    iget-object v4, p0, LDaemon/Service/Notice;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 159
    return-void

    .line 118
    :pswitch_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "apk_mode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LDaemon/Service/Notice;->mf7531e2d(Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 120
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .end local v1    # "notificationIntent":Landroid/content/Intent;
    .local v2, "notificationIntent":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 122
    const v4, 0x10000001

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    const-string v4, "com.android.packageinstaller"

    .line 125
    const-string v5, "com.android.packageinstaller.PackageInstallerActivity"

    .line 124
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 126
    .end local v2    # "notificationIntent":Landroid/content/Intent;
    .restart local v1    # "notificationIntent":Landroid/content/Intent;
    goto :goto_0

    .line 128
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_1
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 129
    .end local v1    # "notificationIntent":Landroid/content/Intent;
    .restart local v2    # "notificationIntent":Landroid/content/Intent;
    const/high16 v4, 0x34000000

    :try_start_4
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 132
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    .line 133
    .end local v2    # "notificationIntent":Landroid/content/Intent;
    .restart local v1    # "notificationIntent":Landroid/content/Intent;
    goto :goto_0

    .line 135
    :pswitch_2
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "video_mode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LDaemon/Service/Notice;->mf7531e2d(Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 137
    .restart local v3    # "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 138
    .end local v1    # "notificationIntent":Landroid/content/Intent;
    .restart local v2    # "notificationIntent":Landroid/content/Intent;
    const/high16 v4, 0x34000000

    :try_start_6
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    iget-object v4, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-static {v4}, LDaemon/Service/Notice;->m3216fd9c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v1, v2

    .line 143
    .end local v2    # "notificationIntent":Landroid/content/Intent;
    .restart local v1    # "notificationIntent":Landroid/content/Intent;
    goto :goto_0

    .line 145
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_3
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ie_mode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LDaemon/Service/Notice;->mf7531e2d(Ljava/lang/String;)V

    .line 146
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 147
    .end local v1    # "notificationIntent":Landroid/content/Intent;
    .restart local v2    # "notificationIntent":Landroid/content/Intent;
    const/high16 v4, 0x34000000

    :try_start_8
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-object v1, v2

    .end local v2    # "notificationIntent":Landroid/content/Intent;
    .restart local v1    # "notificationIntent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startActivity:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LDaemon/Service/Notice;->mf7531e2d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "notificationIntent":Landroid/content/Intent;
    .restart local v2    # "notificationIntent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2    # "notificationIntent":Landroid/content/Intent;
    .restart local v1    # "notificationIntent":Landroid/content/Intent;
    goto :goto_2

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
