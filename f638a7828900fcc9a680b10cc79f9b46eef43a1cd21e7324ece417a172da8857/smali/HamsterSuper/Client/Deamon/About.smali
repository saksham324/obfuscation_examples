.class public LHamsterSuper/Client/Deamon/About;
.super Ljava/lang/Object;
.source "About.java"

# interfaces
.implements LHamster/Base/PaintBase;
.implements LHamster/Base/InputBase;


# instance fields
.field private procerss:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public InputDefine()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public InputReturn()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public OnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 28
    return-void
.end method

.method public keyPressed(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 85
    sparse-switch p1, :sswitch_data_0

    .line 111
    :sswitch_0
    return-void

    .line 85
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
    .line 136
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 130
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 35
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->canvasinput:LHamster/Base/CanvasInput;

    const-string v1, "\u6d4b\u8bd5\u8f93\u5165"

    const/4 v2, 0x5

    const/4 v3, 0x2

    .line 36
    const-string v4, "123"

    sget-object v5, LHamsterSuper/Client/Deamon/Frame;->about:LHamsterSuper/Client/Deamon/About;

    move-object v7, v6

    .line 35
    invoke-virtual/range {v0 .. v7}, LHamster/Base/CanvasInput;->InitState(Ljava/lang/String;IILjava/lang/String;LHamster/Base/InputBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public paint()V
    .locals 7

    .prologue
    const/16 v6, 0x104

    const/16 v5, 0xbc

    const/16 v4, 0x11

    const/16 v3, 0x3c

    const/16 v2, 0x28

    .line 45
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, LHamster/Base/Graphics;->setColor(I)V

    .line 46
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    invoke-virtual {v0, v2, v3, v2, v2}, LHamster/Base/Graphics;->fillRect(IIII)V

    .line 47
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, LHamster/Base/Graphics;->setColor(I)V

    .line 48
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const/16 v1, 0x78

    invoke-virtual {v0, v2, v1, v3, v3}, LHamster/Base/Graphics;->fillRect(IIII)V

    .line 49
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, LHamster/Base/Graphics;->setColor(I)V

    .line 50
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const-string v1, "\u6d4b\u8bd5\u4f4d\u7f6e1"

    sget v2, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v5, v3}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 51
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const-string v1, "\u6d4b\u8bd5\u4f4d\u7f6e2"

    sget v2, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v5, v3}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 52
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5b57\u4f53\u5bbd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->font:LHamster/Base/Font;

    invoke-virtual {v2}, LHamster/Base/Font;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9ad8:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->font:LHamster/Base/Font;

    invoke-virtual {v2}, LHamster/Base/Font;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    sget v2, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v2, v2, 0x2

    .line 52
    invoke-virtual {v0, v1, v2, v6, v4}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 54
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5b57\u4f53\u5bbd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->font:LHamster/Base/Font;

    invoke-virtual {v2}, LHamster/Base/Font;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9ad8:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->font:LHamster/Base/Font;

    invoke-virtual {v2}, LHamster/Base/Font;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    sget v2, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x21

    .line 54
    invoke-virtual {v0, v1, v2, v6, v3}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 56
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7ebf\u7a0b\u6d4b\u8bd5:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, LHamsterSuper/Client/Deamon/About;->procerss:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    sget v2, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v2, v2, 0x2

    sget-object v3, LHamsterSuper/Client/Deamon/Hamster;->font:LHamster/Base/Font;

    invoke-virtual {v3}, LHamster/Base/Font;->getHeight()I

    move-result v3

    add-int/lit16 v3, v3, 0x104

    .line 56
    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 59
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 70
    iget v1, p0, LHamsterSuper/Client/Deamon/About;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/About;->procerss:I

    .line 72
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 65
    return-void
.end method
