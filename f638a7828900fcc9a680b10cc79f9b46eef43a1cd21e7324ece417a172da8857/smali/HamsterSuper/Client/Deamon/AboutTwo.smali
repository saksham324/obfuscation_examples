.class public LHamsterSuper/Client/Deamon/AboutTwo;
.super Ljava/lang/Object;
.source "AboutTwo.java"

# interfaces
.implements LHamster/Base/PaintBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public OnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 24
    return-void
.end method

.method public keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 66
    sparse-switch p1, :sswitch_data_0

    .line 89
    :sswitch_0
    return-void

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 95
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    const/4 v1, 0x0

    const-string v2, "About"

    invoke-interface {v0, v1, v2}, LHamster/Base/SuperBase;->setView(ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public paint()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/16 v3, 0x3c

    const/16 v4, 0xa

    const/16 v2, 0x28

    .line 36
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, LHamster/Base/Graphics;->setColor(I)V

    .line 37
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    invoke-virtual {v0, v2, v3, v2, v2}, LHamster/Base/Graphics;->fillRect(IIII)V

    .line 38
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, LHamster/Base/Graphics;->setColor(I)V

    .line 39
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const/16 v1, 0x78

    invoke-virtual {v0, v2, v1, v3, v3}, LHamster/Base/Graphics;->fillRect(IIII)V

    .line 41
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    sget-object v1, LHamsterSuper/Client/Deamon/Frame;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v4, v6}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 43
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const/16 v1, 0x64

    sget-object v2, LHamsterSuper/Client/Deamon/Frame;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sget-object v3, LHamsterSuper/Client/Deamon/Frame;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v4, v2, v3}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 44
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    sget-object v1, LHamsterSuper/Client/Deamon/Frame;->icon:Landroid/graphics/Bitmap;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4, v6}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 45
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    sget v1, LHamster/Base/Graphics;->getWidth:I

    sget v2, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {v0, v5, v5, v1, v2}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 48
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 54
    return-void
.end method
