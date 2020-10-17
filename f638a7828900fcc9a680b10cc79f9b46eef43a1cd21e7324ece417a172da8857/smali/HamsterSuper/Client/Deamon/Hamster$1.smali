.class LHamsterSuper/Client/Deamon/Hamster$1;
.super Landroid/os/Handler;
.source "Hamster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LHamsterSuper/Client/Deamon/Hamster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 300
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LHamster/Base/SuperBase;->setView(ILjava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method
