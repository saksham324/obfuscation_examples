.class public LHamsterSuper/Client/Deamon/Login;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements LHamster/Base/PaintBase;
.implements LHamster/Base/InputBase;


# static fields
.field private static final state_logo:I = 0x0

.field private static final state_start:I = 0x1


# instance fields
.field private procerss:I

.field private start_list:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, LHamsterSuper/Client/Deamon/Login;->state:I

    .line 17
    iput v0, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    .line 26
    return-void
.end method


# virtual methods
.method public InputDefine()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public InputReturn()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public OnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 32
    return-void
.end method

.method public keyPressed(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "Hit"

    .line 311
    iget v0, p0, LHamsterSuper/Client/Deamon/Login;->state:I

    packed-switch v0, :pswitch_data_0

    .line 381
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 365
    :sswitch_0
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v0}, LHamsterSuper/Client/Deamon/Hamster;->superfinish()V

    goto :goto_0

    .line 322
    :sswitch_1
    iget v0, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 324
    :pswitch_2
    sget-object v0, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    invoke-virtual {v0}, LHamsterSuper/Client/Deamon/Hit;->update()V

    .line 325
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    const-string v1, "Hit"

    invoke-interface {v0, v2, v4}, LHamster/Base/SuperBase;->setView(ILjava/lang/String;)V

    .line 326
    iput v3, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    .line 327
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0}, LHamster/Base/SuperBase;->repaint()V

    goto :goto_0

    .line 330
    :pswitch_3
    sget-object v0, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    invoke-virtual {v0}, LHamsterSuper/Client/Deamon/Hit;->Continue()V

    .line 331
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    const-string v1, "Hit"

    invoke-interface {v0, v2, v4}, LHamster/Base/SuperBase;->setView(ILjava/lang/String;)V

    .line 332
    iput v3, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    .line 333
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0}, LHamster/Base/SuperBase;->repaint()V

    goto :goto_0

    .line 336
    :pswitch_4
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->help:LHamsterSuper/Client/Deamon/Help;

    const-string v1, "\u6253\u5730\u9f20 V1.0"

    invoke-virtual {v0, v1}, LHamsterSuper/Client/Deamon/Help;->InitState(Ljava/lang/String;)V

    .line 337
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0}, LHamster/Base/SuperBase;->repaint()V

    goto :goto_0

    .line 340
    :pswitch_5
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v0}, LHamsterSuper/Client/Deamon/Hamster;->superfinish()V

    .line 341
    iput v2, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    goto :goto_0

    .line 348
    :sswitch_2
    iget v0, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    if-lez v0, :cond_0

    .line 349
    iget v0, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    sub-int/2addr v0, v3

    iput v0, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    .line 353
    :goto_1
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0}, LHamster/Base/SuperBase;->repaint()V

    goto :goto_0

    .line 351
    :cond_0
    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    goto :goto_1

    .line 357
    :sswitch_3
    iget v0, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    if-ge v0, v1, :cond_1

    .line 358
    iget v0, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    .line 362
    :goto_2
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0}, LHamster/Base/SuperBase;->repaint()V

    goto :goto_0

    .line 360
    :cond_1
    iput v2, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    goto :goto_2

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 322
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 406
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 400
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v8, 0x50

    const/16 v9, 0xa3

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 44
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 47
    .local v6, "y":I
    sget v7, LHamster/Base/Graphics;->getWidth:I

    sub-int/2addr v7, v9

    div-int/lit8 v0, v7, 0x2

    .line 48
    .local v0, "left":I
    sget v7, LHamster/Base/Graphics;->getHeight:I

    sub-int v3, v7, v8

    .line 50
    .local v3, "top":I
    sget v7, LHamster/Base/Graphics;->getHeight:I

    sub-int/2addr v7, v8

    add-int/lit8 v4, v7, 0xa

    .line 51
    .local v4, "top_left":I
    sget v7, LHamster/Base/Graphics;->getWidth:I

    sub-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    const/16 v8, 0x13

    sub-int/2addr v7, v8

    const/16 v8, 0xa

    sub-int/2addr v7, v8

    iget v8, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    rem-int/lit8 v8, v8, 0x5

    sub-int v1, v7, v8

    .line 52
    .local v1, "left_left":I
    sget v7, LHamster/Base/Graphics;->getWidth:I

    sub-int/2addr v7, v9

    div-int/lit8 v7, v7, 0x2

    add-int/lit16 v7, v7, 0xa3

    add-int/lit8 v7, v7, 0xa

    iget v8, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    rem-int/lit8 v8, v8, 0x5

    add-int v2, v7, v8

    .line 54
    .local v2, "left_right":I
    if-lt v5, v0, :cond_1

    add-int/lit16 v7, v0, 0xa3

    if-gt v5, v7, :cond_1

    if-lt v6, v3, :cond_1

    sget v7, LHamster/Base/Graphics;->getHeight:I

    if-gt v6, v7, :cond_1

    .line 56
    const/16 v7, 0x42

    invoke-virtual {p0, v7}, LHamsterSuper/Client/Deamon/Login;->keyPressed(I)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    if-ltz v5, :cond_2

    add-int/lit8 v7, v1, 0x13

    add-int/lit8 v7, v7, 0x5

    if-gt v5, v7, :cond_2

    .line 59
    if-lt v6, v4, :cond_2

    sget v7, LHamster/Base/Graphics;->getHeight:I

    if-gt v6, v7, :cond_2

    .line 61
    const/16 v7, 0x15

    invoke-virtual {p0, v7}, LHamsterSuper/Client/Deamon/Login;->keyPressed(I)V

    goto :goto_0

    .line 62
    :cond_2
    if-lt v5, v2, :cond_0

    sget v7, LHamster/Base/Graphics;->getWidth:I

    if-gt v5, v7, :cond_0

    .line 63
    if-lt v6, v4, :cond_0

    sget v7, LHamster/Base/Graphics;->getHeight:I

    if-gt v6, v7, :cond_0

    .line 65
    const/16 v7, 0x16

    invoke-virtual {p0, v7}, LHamsterSuper/Client/Deamon/Login;->keyPressed(I)V

    goto :goto_0
.end method

.method public paint()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    invoke-virtual {p0, v0}, LHamsterSuper/Client/Deamon/Login;->paint(LHamster/Base/Graphics;)V

    .line 139
    return-void
.end method

.method public paint(LHamster/Base/Graphics;)V
    .locals 9
    .param p1, "g"    # LHamster/Base/Graphics;

    .prologue
    const/16 v8, 0x13

    const/16 v5, 0x14

    const/4 v4, 0x0

    const-string v7, "\u8d44\u6e90\u52a0\u8f7d\u4e2d"

    const-string v6, "..."

    .line 80
    iget v2, p0, LHamsterSuper/Client/Deamon/Login;->state:I

    packed-switch v2, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const/16 v2, 0xa0

    const/16 v3, 0xac

    invoke-virtual {p1, v2, v4, v3}, LHamster/Base/Graphics;->setColor(III)V

    .line 84
    sget v2, LHamster/Base/Graphics;->getWidth:I

    sget v3, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v4, v4, v2, v3}, LHamster/Base/Graphics;->fillRect(IIII)V

    .line 85
    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->back:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 86
    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const/high16 v3, 0x7f020000

    invoke-virtual {v2, v3}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, LHamsterSuper/Client/Deamon/Resource;->back:Landroid/graphics/Bitmap;

    .line 88
    :cond_0
    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->back:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v4, v4, v5}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 89
    sget v2, LHamster/Base/Graphics;->getHeight:I

    const/16 v3, 0x41

    sub-int v1, v2, v3

    .line 90
    .local v1, "top":I
    sget v2, LHamster/Base/Graphics;->getWidth:I

    sget v3, LHamster/Base/Graphics;->fontheight:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 91
    .local v0, "left":I
    const v2, -0x6ebf00

    invoke-virtual {p1, v2}, LHamster/Base/Graphics;->setColor(I)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d44\u6e90\u52a0\u8f7d\u4e2d"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    iget v3, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    rem-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    add-int/lit8 v3, v0, 0x1

    .line 92
    invoke-virtual {p1, v2, v3, v1, v5}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d44\u6e90\u52a0\u8f7d\u4e2d"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    iget v3, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    rem-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    const/4 v3, 0x1

    sub-int v3, v0, v3

    .line 94
    invoke-virtual {p1, v2, v3, v1, v5}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d44\u6e90\u52a0\u8f7d\u4e2d"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    iget v3, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    rem-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    add-int/lit8 v3, v1, 0x1

    .line 96
    invoke-virtual {p1, v2, v0, v3, v5}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d44\u6e90\u52a0\u8f7d\u4e2d"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    iget v3, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    rem-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    const/4 v3, 0x1

    sub-int v3, v1, v3

    .line 98
    invoke-virtual {p1, v2, v0, v3, v5}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 100
    const v2, -0xe08f3

    invoke-virtual {p1, v2}, LHamster/Base/Graphics;->setColor(I)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8d44\u6e90\u52a0\u8f7d\u4e2d"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    iget v3, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    rem-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1, v5}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 107
    .end local v0    # "left":I
    .end local v1    # "top":I
    :pswitch_1
    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->back:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v4, v4, v5}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 108
    sget v2, LHamster/Base/Graphics;->getWidth:I

    const/16 v3, 0xa3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 109
    .restart local v0    # "left":I
    sget v2, LHamster/Base/Graphics;->getHeight:I

    const/16 v3, 0x50

    sub-int v1, v2, v3

    .line 110
    .restart local v1    # "top":I
    const/16 v2, 0xa3

    const/16 v3, 0x31

    invoke-virtual {p1, v0, v1, v2, v3}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 111
    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->mt:Landroid/graphics/Bitmap;

    iget v3, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    mul-int/lit8 v3, v3, 0x31

    sub-int v3, v1, v3

    invoke-virtual {p1, v2, v0, v3, v5}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 112
    sget v2, LHamster/Base/Graphics;->getWidth:I

    sget v3, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v4, v4, v2, v3}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 114
    sget v2, LHamster/Base/Graphics;->getHeight:I

    const/16 v3, 0x50

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0xa

    .line 115
    sget v2, LHamster/Base/Graphics;->getWidth:I

    const/16 v3, 0xa3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v8

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    iget v3, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    rem-int/lit8 v3, v3, 0x5

    sub-int v0, v2, v3

    .line 116
    const/16 v2, 0x1c

    invoke-virtual {p1, v0, v1, v8, v2}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 117
    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->select:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v0, v1, v5}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 118
    sget v2, LHamster/Base/Graphics;->getWidth:I

    sget v3, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v4, v4, v2, v3}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 119
    sget v2, LHamster/Base/Graphics;->getWidth:I

    const/16 v3, 0xa3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0xa3

    add-int/lit8 v2, v2, 0xa

    iget v3, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    rem-int/lit8 v3, v3, 0x5

    add-int v0, v2, v3

    .line 120
    const/16 v2, 0x1c

    invoke-virtual {p1, v0, v1, v8, v2}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 121
    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->select:Landroid/graphics/Bitmap;

    sub-int v3, v0, v8

    invoke-virtual {p1, v2, v3, v1, v5}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 122
    sget v2, LHamster/Base/Graphics;->getWidth:I

    sget v3, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v4, v4, v2, v3}, LHamster/Base/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .prologue
    .line 151
    :try_start_0
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->state:I

    packed-switch v1, :pswitch_data_0

    .line 304
    :goto_0
    return-void

    .line 155
    :pswitch_0
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->back:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 156
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->back:Landroid/graphics/Bitmap;

    .line 158
    :cond_0
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->mt:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 159
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->mt:Landroid/graphics/Bitmap;

    .line 161
    :cond_1
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 162
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 163
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 164
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->select:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 165
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02001b

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->select:Landroid/graphics/Bitmap;

    .line 167
    :cond_2
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->bg:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 168
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->bg:Landroid/graphics/Bitmap;

    .line 170
    :cond_3
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->heart:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 171
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->heart:Landroid/graphics/Bitmap;

    .line 173
    :cond_4
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 174
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 175
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 176
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hg0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 177
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hg0:Landroid/graphics/Bitmap;

    .line 179
    :cond_5
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hg1:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 180
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hg1:Landroid/graphics/Bitmap;

    .line 182
    :cond_6
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 183
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 184
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 185
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hg2:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 186
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hg2:Landroid/graphics/Bitmap;

    .line 188
    :cond_7
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hg3:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    .line 189
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hg3:Landroid/graphics/Bitmap;

    .line 191
    :cond_8
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 192
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 193
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 194
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hg4:Landroid/graphics/Bitmap;

    if-nez v1, :cond_9

    .line 195
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hg4:Landroid/graphics/Bitmap;

    .line 197
    :cond_9
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hg5:Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    .line 198
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02000d

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hg5:Landroid/graphics/Bitmap;

    .line 200
    :cond_a
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 201
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 202
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 203
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hg6:Landroid/graphics/Bitmap;

    if-nez v1, :cond_b

    .line 204
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hg6:Landroid/graphics/Bitmap;

    .line 206
    :cond_b
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hg7:Landroid/graphics/Bitmap;

    if-nez v1, :cond_c

    .line 207
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hg7:Landroid/graphics/Bitmap;

    .line 209
    :cond_c
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 210
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 211
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 212
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hg8:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d

    .line 213
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hg8:Landroid/graphics/Bitmap;

    .line 215
    :cond_d
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->guan:Landroid/graphics/Bitmap;

    if-nez v1, :cond_e

    .line 216
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->guan:Landroid/graphics/Bitmap;

    .line 218
    :cond_e
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 219
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 220
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 221
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    if-nez v1, :cond_f

    .line 222
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    .line 224
    :cond_f
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->timer:Landroid/graphics/Bitmap;

    if-nez v1, :cond_10

    .line 225
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020021

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->timer:Landroid/graphics/Bitmap;

    .line 227
    :cond_10
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->rd:Landroid/graphics/Bitmap;

    if-nez v1, :cond_11

    .line 228
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->rd:Landroid/graphics/Bitmap;

    .line 230
    :cond_11
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->sm0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_12

    .line 231
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02001c

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->sm0:Landroid/graphics/Bitmap;

    .line 233
    :cond_12
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->sm1:Landroid/graphics/Bitmap;

    if-nez v1, :cond_13

    .line 234
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->sm1:Landroid/graphics/Bitmap;

    .line 236
    :cond_13
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 237
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 238
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 239
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->sm2:Landroid/graphics/Bitmap;

    if-nez v1, :cond_14

    .line 240
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02001d

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->sm2:Landroid/graphics/Bitmap;

    .line 242
    :cond_14
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->rst:Landroid/graphics/Bitmap;

    if-nez v1, :cond_15

    .line 243
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->rst:Landroid/graphics/Bitmap;

    .line 245
    :cond_15
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->lost:Landroid/graphics/Bitmap;

    if-nez v1, :cond_16

    .line 246
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020015

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->lost:Landroid/graphics/Bitmap;

    .line 248
    :cond_16
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->h0:Landroid/graphics/Bitmap;

    if-nez v1, :cond_17

    .line 249
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->h0:Landroid/graphics/Bitmap;

    .line 251
    :cond_17
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->x:Landroid/graphics/Bitmap;

    if-nez v1, :cond_18

    .line 252
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020022

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->x:Landroid/graphics/Bitmap;

    .line 254
    :cond_18
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 255
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 256
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 257
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->hm:Landroid/graphics/Bitmap;

    if-nez v1, :cond_19

    .line 258
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->hm:Landroid/graphics/Bitmap;

    .line 260
    :cond_19
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->sp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1a

    .line 261
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f02001f

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->sp:Landroid/graphics/Bitmap;

    .line 263
    :cond_1a
    sget-object v1, LHamsterSuper/Client/Deamon/Resource;->ssm:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1b

    .line 264
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    const v2, 0x7f020020

    invoke-virtual {v1, v2}, LHamster/Base/Graphics;->CreateImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Resource;->ssm:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1b
    :try_start_1
    sget-object v1, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    invoke-virtual {v1}, LHamsterSuper/Client/Deamon/Hit;->read()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 270
    const/4 v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :goto_1
    const/4 v1, 0x1

    :try_start_2
    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->state:I

    .line 283
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 284
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 285
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 295
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1c
    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 274
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 275
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_4
    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->start_list:I

    goto :goto_1

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Login;->procerss:I

    .line 290
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 145
    return-void
.end method
