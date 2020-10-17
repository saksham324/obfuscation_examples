.class public LHamster/Base/ViewBase;
.super Landroid/view/SurfaceView;
.source "ViewBase.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static canvas:Landroid/graphics/Canvas;

.field public static holder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, LHamster/Base/ViewBase;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    sput-object v0, LHamster/Base/ViewBase;->holder:Landroid/view/SurfaceHolder;

    .line 22
    sget-object v0, LHamster/Base/ViewBase;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 28
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 35
    const-string v0, "test"

    const-string v1, "ViewBase.holdersssddd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    .line 39
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 47
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 52
    const-string v0, "test"

    const-string v1, "ViewBase.holdermmmm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    .line 54
    return-void
.end method
