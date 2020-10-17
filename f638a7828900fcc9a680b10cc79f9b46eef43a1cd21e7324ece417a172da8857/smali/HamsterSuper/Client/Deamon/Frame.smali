.class public LHamsterSuper/Client/Deamon/Frame;
.super Ljava/lang/Object;
.source "Frame.java"

# interfaces
.implements LHamster/Base/SuperBase;


# static fields
.field static about:LHamsterSuper/Client/Deamon/About;

.field static abouttwo:LHamsterSuper/Client/Deamon/AboutTwo;

.field static hit:LHamsterSuper/Client/Deamon/Hit;

.field static icon:Landroid/graphics/Bitmap;

.field static login:LHamsterSuper/Client/Deamon/Login;

.field static processmsg:I


# instance fields
.field private key:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LHamster/Base/PaintBase;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/view/inputmethod/InputMethodManager;

.field private paintbase:LHamster/Base/PaintBase;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, LHamsterSuper/Client/Deamon/Frame;->state:I

    .line 47
    sget-object v0, LHamsterSuper/Client/Deamon/Frame;->login:LHamsterSuper/Client/Deamon/Login;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, LHamsterSuper/Client/Deamon/Login;

    invoke-direct {v0}, LHamsterSuper/Client/Deamon/Login;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/Frame;->login:LHamsterSuper/Client/Deamon/Login;

    .line 49
    :cond_0
    sget-object v0, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, LHamsterSuper/Client/Deamon/Hit;

    invoke-direct {v0}, LHamsterSuper/Client/Deamon/Hit;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    .line 53
    :cond_1
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, LHamsterSuper/Client/Deamon/Frame;->icon:Landroid/graphics/Bitmap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->key:Ljava/util/Map;

    .line 55
    iget-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->key:Ljava/util/Map;

    const-string v1, "Login"

    sget-object v2, LHamsterSuper/Client/Deamon/Frame;->login:LHamsterSuper/Client/Deamon/Login;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->key:Ljava/util/Map;

    const-string v1, "Hit"

    sget-object v2, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, LHamsterSuper/Client/Deamon/Frame;->login:LHamsterSuper/Client/Deamon/Login;

    iput-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->paintbase:LHamster/Base/PaintBase;

    .line 58
    return-void
.end method


# virtual methods
.method public OnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 65
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public init()I
    .locals 2

    .prologue
    .line 79
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->viewbase:LHamster/Base/ViewBase;

    invoke-virtual {v0, v1}, LHamsterSuper/Client/Deamon/Hamster;->setContentView(Landroid/view/View;)V

    .line 89
    const/4 v0, 0x3

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 196
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 173
    iget-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->paintbase:LHamster/Base/PaintBase;

    invoke-interface {v0, p1}, LHamster/Base/PaintBase;->keyPressed(I)V

    .line 174
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 189
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    iget-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->paintbase:LHamster/Base/PaintBase;

    invoke-interface {v0, p1}, LHamster/Base/PaintBase;->onTouch(Landroid/view/MotionEvent;)V

    .line 147
    return-void
.end method

.method public repaint()V
    .locals 4

    .prologue
    const-string v3, "Frame"

    .line 105
    :try_start_0
    sget-object v1, LHamster/Base/ViewBase;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    sput-object v1, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    .line 107
    sget-object v1, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_0

    iget-object v1, p0, LHamsterSuper/Client/Deamon/Frame;->paintbase:LHamster/Base/PaintBase;

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    invoke-virtual {v1}, LHamster/Base/Graphics;->CreateNewPaint()V

    .line 110
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->font:LHamster/Base/Font;

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->setFont(LHamster/Base/Font;)V

    .line 111
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->setAntiAlias(Z)V

    .line 112
    iget-object v1, p0, LHamsterSuper/Client/Deamon/Frame;->paintbase:LHamster/Base/PaintBase;

    invoke-interface {v1}, LHamster/Base/PaintBase;->paint()V

    .line 113
    sget-object v1, LHamster/Base/ViewBase;->holder:Landroid/view/SurfaceHolder;

    sget-object v2, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 131
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v1, "Frame"

    const-string v2, "no canvas"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Frame"

    const-string v1, "error"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->paintbase:LHamster/Base/PaintBase;

    invoke-interface {v0}, LHamster/Base/PaintBase;->run()V

    .line 181
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0}, LHamster/Base/SuperBase;->repaint()V

    .line 182
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 152
    iput p1, p0, LHamsterSuper/Client/Deamon/Frame;->state:I

    .line 154
    return-void
.end method

.method public setView(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "Key"    # Ljava/lang/String;

    .prologue
    .line 159
    iput p1, p0, LHamsterSuper/Client/Deamon/Frame;->state:I

    .line 160
    iget-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->key:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHamster/Base/PaintBase;

    iput-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->paintbase:LHamster/Base/PaintBase;

    .line 161
    iget-object v0, p0, LHamsterSuper/Client/Deamon/Frame;->paintbase:LHamster/Base/PaintBase;

    if-nez v0, :cond_0

    .line 162
    const-string v0, "Frame"

    const-string v1, "paintbase is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0}, LHamster/Base/SuperBase;->repaint()V

    .line 167
    return-void
.end method
