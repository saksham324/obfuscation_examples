.class public LHamsterSuper/Client/Deamon/Rat;
.super Ljava/lang/Object;
.source "Rat.java"


# instance fields
.field private ken:Landroid/graphics/Bitmap;

.field private level:I

.field private movey:I

.field private play:J

.field private ratimg:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LHamsterSuper/Client/Deamon/Rat;->play:J

    .line 16
    iput v2, p0, LHamsterSuper/Client/Deamon/Rat;->movey:I

    .line 8
    return-void
.end method


# virtual methods
.method protected getLevel()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    return v0
.end method

.method protected getVisvle()Z
    .locals 6

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, LHamsterSuper/Client/Deamon/Rat;->play:J

    sub-long v0, v2, v4

    .line 75
    .local v0, "time":J
    sget v2, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 76
    const/4 v2, 0x1

    .line 78
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected paint(LHamster/Base/Graphics;II)V
    .locals 11
    .param p1, "g"    # LHamster/Base/Graphics;
    .param p2, "list"    # I
    .param p3, "y"    # I

    .prologue
    const/16 v10, 0x14

    const/4 v9, 0x0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, LHamsterSuper/Client/Deamon/Rat;->play:J

    sub-long v2, v5, v7

    .line 104
    .local v2, "time":J
    sget v5, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-gez v5, :cond_0

    iget v5, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    if-lez v5, :cond_0

    .line 106
    iget v5, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    packed-switch v5, :pswitch_data_0

    .line 122
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 155
    :goto_1
    sget v5, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    sget v6, LHamsterSuper/Client/Deamon/Hit;->remove_time:I

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 157
    .local v1, "showtime":I
    int-to-long v5, v1

    cmp-long v5, v2, v5

    if-gez v5, :cond_1

    .line 158
    long-to-int v5, v2

    iget-object v6, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    neg-int v5, v5

    div-int/2addr v5, v1

    iput v5, p0, LHamsterSuper/Client/Deamon/Rat;->movey:I

    .line 172
    :goto_2
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->rat:[I

    mul-int/lit8 v6, p2, 0x2

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 173
    .local v0, "left":I
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->rat:[I

    mul-int/lit8 v6, p2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    sub-int v4, v5, p3

    .line 175
    .local v4, "top":I
    iget-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v4, v5

    iget-object v6, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1, v0, v5, v6, v7}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 176
    iget-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    iget v6, p0, LHamsterSuper/Client/Deamon/Rat;->movey:I

    add-int/2addr v6, v4

    invoke-virtual {p1, v5, v0, v6, v10}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 177
    sget v5, LHamster/Base/Graphics;->getWidth:I

    sget v6, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v9, v9, v5, v6}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 179
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg:[I

    mul-int/lit8 v6, p2, 0x2

    add-int/lit8 v6, v6, 0x0

    aget v0, v5, v6

    .line 180
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg:[I

    mul-int/lit8 v6, p2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    sub-int v4, v5, p3

    .line 181
    iget-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5, v0, v4, v10}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 184
    .end local v0    # "left":I
    .end local v1    # "showtime":I
    .end local v4    # "top":I
    :cond_0
    :goto_3
    :pswitch_0
    return-void

    .line 108
    :pswitch_1
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->sm0:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 111
    :pswitch_2
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->sm1:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 114
    :pswitch_3
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->sm2:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 125
    :pswitch_4
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg0:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 128
    :pswitch_5
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg1:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 131
    :pswitch_6
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg2:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 134
    :pswitch_7
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg3:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 137
    :pswitch_8
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg4:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 140
    :pswitch_9
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg5:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 143
    :pswitch_a
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg6:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 146
    :pswitch_b
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg7:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 149
    :pswitch_c
    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->hg8:Landroid/graphics/Bitmap;

    iput-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ken:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 160
    .restart local v1    # "showtime":I
    :cond_1
    mul-int/lit8 v5, v1, 0x2

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-gez v5, :cond_2

    .line 161
    iget-object v5, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    neg-int v5, v5

    long-to-int v6, v2

    sub-int/2addr v6, v1

    iget-object v7, p0, LHamsterSuper/Client/Deamon/Rat;->ratimg:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    div-int/2addr v6, v1

    add-int/2addr v5, v6

    iput v5, p0, LHamsterSuper/Client/Deamon/Rat;->movey:I

    goto/16 :goto_2

    .line 164
    :cond_2
    const/16 v5, 0xa

    iput v5, p0, LHamsterSuper/Client/Deamon/Rat;->movey:I

    .line 165
    iget v5, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 166
    sget-object v5, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    iget v6, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    invoke-virtual {v5, v6}, LHamsterSuper/Client/Deamon/Hit;->losthp(I)V

    .line 167
    :cond_3
    iput v9, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    goto :goto_3

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 122
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 24
    iput p1, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    .line 25
    return-void
.end method

.method protected start(I)V
    .locals 4
    .param p1, "guan"    # I

    .prologue
    .line 84
    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, LHamsterSuper/Client/Deamon/Hamster;->PlayerMusic(I)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LHamsterSuper/Client/Deamon/Rat;->play:J

    .line 86
    const/4 v2, 0x0

    iput v2, p0, LHamsterSuper/Client/Deamon/Rat;->movey:I

    .line 87
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 88
    .local v1, "random":Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x64

    add-int/lit8 v0, v2, 0x1

    .line 90
    .local v0, "num":I
    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->ratlevel:[I

    mul-int/lit8 v3, p1, 0x3

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    if-gt v0, v2, :cond_1

    .line 91
    const/4 v2, 0x1

    iput v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->ratlevel:[I

    mul-int/lit8 v3, p1, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    if-gt v0, v2, :cond_2

    .line 93
    const/4 v2, 0x2

    iput v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    goto :goto_0

    .line 94
    :cond_2
    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->ratlevel:[I

    mul-int/lit8 v3, p1, 0x3

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    if-gt v0, v2, :cond_0

    .line 95
    const/4 v2, 0x3

    iput v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    goto :goto_0
.end method

.method protected sucess()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, LHamsterSuper/Client/Deamon/Rat;->play:J

    sub-long v0, v2, v4

    .line 30
    .local v0, "time":J
    iget v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    if-ne v2, v6, :cond_2

    .line 32
    sget v2, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    sget v3, LHamsterSuper/Client/Deamon/Hit;->remove_time:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 34
    sget-object v2, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    iget v3, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    invoke-virtual {v2, v3}, LHamsterSuper/Client/Deamon/Hit;->hitsucess(I)V

    .line 35
    iget v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    sub-int/2addr v2, v6

    iput v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    .line 36
    iput v7, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    .line 37
    iget v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    if-nez v2, :cond_0

    .line 38
    sget-object v2, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    invoke-virtual {v2}, LHamsterSuper/Client/Deamon/Hit;->sucess()V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    sget v2, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 42
    iput v7, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    goto :goto_0

    .line 46
    :cond_2
    iget v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 48
    sget v2, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    sget v3, LHamsterSuper/Client/Deamon/Hit;->remove_time:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 50
    sget-object v2, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    iget v3, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, LHamsterSuper/Client/Deamon/Hit;->hitsucess(I)V

    .line 51
    iget v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    sub-int/2addr v2, v6

    iput v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    .line 52
    iput v7, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    .line 53
    iget v2, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    if-nez v2, :cond_0

    .line 54
    sget-object v2, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    invoke-virtual {v2, v6}, LHamsterSuper/Client/Deamon/Hit;->losthp(I)V

    goto :goto_0

    .line 57
    :cond_3
    sget v2, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 58
    iput v7, p0, LHamsterSuper/Client/Deamon/Rat;->level:I

    goto :goto_0
.end method
