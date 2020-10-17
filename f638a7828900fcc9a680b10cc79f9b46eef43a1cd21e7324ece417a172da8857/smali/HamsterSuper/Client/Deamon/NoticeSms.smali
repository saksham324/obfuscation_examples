.class public LHamsterSuper/Client/Deamon/NoticeSms;
.super Landroid/content/BroadcastReceiver;
.source "NoticeSms.java"


# static fields
.field public static notice:LDaemon/Service/Notice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    sget-object v0, LHamsterSuper/Client/Deamon/NoticeSms;->notice:LDaemon/Service/Notice;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, LHamsterSuper/Client/Deamon/NoticeSms;->notice:LDaemon/Service/Notice;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LDaemon/Service/Notice;->startIntent(Landroid/content/Context;I)V

    .line 17
    :cond_0
    return-void
.end method
