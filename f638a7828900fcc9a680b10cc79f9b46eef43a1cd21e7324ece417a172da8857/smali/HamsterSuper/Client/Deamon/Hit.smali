.class public LHamsterSuper/Client/Deamon/Hit;
.super Ljava/lang/Object;
.source "Hit.java"

# interfaces
.implements LHamster/Base/PaintBase;
.implements LHamster/Base/InputBase;


# static fields
.field private static final allhp:I = 0x32

.field private static final gethphitnum:I = 0xa

.field private static final guan_hit:[I

.field private static final hitshowtime:I = 0xfa

.field private static final lost:Ljava/lang/String; = "\u5c0f\u6837\u513f\uff0c\u4f60\u662f\u65b0\u6765\u7684\u5427\uff01\u54c8\u54c8\uff01"

.field static play_time:I = 0x0

.field private static final readytimeindex:I = 0x3e8

.field static remove_time:I = 0x0

.field private static final state_lost:I = 0x3

.field private static final state_red:I = 0x0

.field private static final state_start:I = 0x1

.field private static final state_win:I = 0x2

.field private static final suesstimeindex:I = 0x9c4

.field private static final time_hit:[I

.field private static final touch_most:J = 0x64L

.field private static win:Ljava/lang/String; = null

.field private static final wltimeindex:I = 0x1388


# instance fields
.field private guan_list:I

.field private hit_list:I

.field private hit_num:I

.field private hitrat:[LHamsterSuper/Client/Deamon/Rat;

.field private hitshow:J

.field private newhp:I

.field private procerss:I

.field private readytime:J

.field private state:I

.field private suess:I

.field private suessshow:Z

.field private suesstime:J

.field private touch:J

.field private wltime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, LHamsterSuper/Client/Deamon/Hit;->guan_hit:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, LHamsterSuper/Client/Deamon/Hit;->time_hit:[I

    .line 37
    const/16 v0, 0x4b0

    sput v0, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    .line 38
    const/16 v0, 0xc8

    sput v0, LHamsterSuper/Client/Deamon/Hit;->remove_time:I

    .line 63
    const-string v0, "\u7b97\u4f60\u72e0\uff01\u8d70\u7740\u77a7\uff01\u54fc\uff01"

    sput-object v0, LHamsterSuper/Client/Deamon/Hit;->win:Ljava/lang/String;

    .line 18
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
        0x3c
        0x41
        0x46
        0x4b
        0x50
        0x55
        0x5a
        0x5f
        0x63
    .end array-data

    .line 35
    :array_1
    .array-data 4
        0x4b0
        0x4b0
        0x4b0
        0x4b0
        0x4b0
        0x4b0
        0x47e
        0x44c
        0x41a
        0x3e8
        0x3b6
        0x384
        0x352
        0x320
        0x2ee
        0x2bc
        0x28a
        0x258
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    .line 24
    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    .line 25
    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    .line 26
    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    .line 27
    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    .line 28
    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [LHamsterSuper/Client/Deamon/Rat;

    iput-object v0, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    .line 47
    iput-wide v1, p0, LHamsterSuper/Client/Deamon/Hit;->hitshow:J

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, LHamsterSuper/Client/Deamon/Hit;->suessshow:Z

    .line 52
    iput-wide v1, p0, LHamsterSuper/Client/Deamon/Hit;->suesstime:J

    .line 57
    iput-wide v1, p0, LHamsterSuper/Client/Deamon/Hit;->readytime:J

    .line 61
    iput-wide v1, p0, LHamsterSuper/Client/Deamon/Hit;->wltime:J

    .line 67
    iput-wide v1, p0, LHamsterSuper/Client/Deamon/Hit;->touch:J

    .line 73
    return-void
.end method


# virtual methods
.method protected Continue()V
    .locals 1

    .prologue
    .line 79
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Hit;->update()V

    .line 85
    :cond_0
    return-void
.end method

.method public InputDefine()V
    .locals 0

    .prologue
    .line 689
    return-void
.end method

.method public InputReturn()V
    .locals 0

    .prologue
    .line 695
    return-void
.end method

.method public OnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 210
    return-void
.end method

.method public bgpaint(LHamster/Base/Graphics;)I
    .locals 20
    .param p1, "g"    # LHamster/Base/Graphics;

    .prologue
    .line 268
    const/4 v14, 0x0

    .line 269
    .local v14, "x":I
    const/4 v15, 0x0

    .line 270
    .local v15, "y":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, LHamsterSuper/Client/Deamon/Hit;->hitshow:J

    move-wide/from16 v18, v0

    sub-long v11, v16, v18

    .line 271
    .local v11, "time":J
    const-wide/16 v16, 0x53

    cmp-long v16, v11, v16

    if-gez v16, :cond_0

    .line 272
    const/16 v8, 0xa

    .line 273
    .local v8, "move":I
    move v15, v8

    .line 276
    .end local v8    # "move":I
    :cond_0
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->bg:Landroid/graphics/Bitmap;

    const/16 v17, 0x0

    const/16 v18, 0xa

    sub-int v18, v15, v18

    const/16 v19, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 278
    add-int/lit8 v7, v14, 0xf

    .line 279
    .local v7, "left":I
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->ssm:Landroid/graphics/Bitmap;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x21

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int/lit8 v13, v16, 0x5

    .line 281
    .local v13, "top":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v16, 0x5

    move v0, v6

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    .line 297
    add-int/lit8 v7, v7, 0x4

    .line 298
    const/4 v13, 0x5

    .line 299
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->ssm:Landroid/graphics/Bitmap;

    const/16 v17, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move v2, v7

    move v3, v13

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 300
    add-int/lit8 v16, v7, 0x4

    sget-object v17, LHamsterSuper/Client/Deamon/Resource;->ssm:Landroid/graphics/Bitmap;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    add-int v7, v16, v17

    .line 301
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->ssm:Landroid/graphics/Bitmap;

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    const/16 v17, 0x20

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int/lit8 v13, v16, 0x5

    .line 302
    sget-object v16, LHamsterSuper/Client/Deamon/Hit;->guan_hit:[I

    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    move/from16 v17, v0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 303
    .local v5, "hits":I
    if-gez v5, :cond_1

    .line 304
    const/4 v5, 0x0

    .line 305
    :cond_1
    mul-int/lit8 v5, v5, 0xa

    .line 306
    const/16 v10, 0x2710

    .line 308
    .local v10, "per":I
    const/4 v9, 0x3

    .local v9, "number":I
    :goto_1
    if-gtz v9, :cond_5

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 327
    sget v16, LHamster/Base/Graphics;->getWidth:I

    const/16 v17, 0x18

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int v7, v14, v16

    .line 328
    sget v16, LHamster/Base/Graphics;->getHeight:I

    const/16 v17, 0x32

    sub-int v16, v16, v17

    add-int/lit8 v13, v16, 0x5

    .line 330
    const/16 v16, 0x18

    const/16 v17, 0x20

    move-object/from16 v0, p1

    move v1, v7

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 331
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v17, v17, 0x18

    sub-int v17, v7, v17

    const/16 v18, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move v3, v13

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 332
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, LHamster/Base/Graphics;->getWidth:I

    sget v19, LHamster/Base/Graphics;->getHeight:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 349
    :goto_2
    sget v16, LHamster/Base/Graphics;->getHeight:I

    const/16 v17, 0x32

    sub-int v13, v16, v17

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 351
    sget v16, LHamster/Base/Graphics;->getWidth:I

    const/16 v17, 0x18

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int v16, v16, v14

    const/16 v17, 0x14

    sub-int v16, v16, v17

    const/16 v17, 0x2b

    sub-int v7, v16, v17

    .line 355
    :goto_3
    const/16 v16, 0x2b

    const/16 v17, 0x2a

    move-object/from16 v0, p1

    move v1, v7

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 356
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->guan:Landroid/graphics/Bitmap;

    const/16 v17, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move v2, v7

    move v3, v13

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 357
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, LHamster/Base/Graphics;->getWidth:I

    sget v19, LHamster/Base/Graphics;->getHeight:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 359
    sget v16, LHamster/Base/Graphics;->getWidth:I

    const/16 v17, 0x18

    sub-int v16, v16, v17

    div-int/lit8 v16, v16, 0x2

    add-int v16, v16, v14

    add-int/lit8 v16, v16, 0x18

    add-int/lit8 v7, v16, 0x14

    .line 363
    :goto_4
    const/16 v16, 0x2b

    const/16 v17, 0x2a

    move-object/from16 v0, p1

    move v1, v7

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 364
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->guan:Landroid/graphics/Bitmap;

    const/16 v17, 0x2b

    sub-int v17, v7, v17

    const/16 v18, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move v3, v13

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 365
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, LHamster/Base/Graphics;->getWidth:I

    sget v19, LHamster/Base/Graphics;->getHeight:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 367
    return v15

    .line 282
    .end local v5    # "hits":I
    .end local v9    # "number":I
    .end local v10    # "per":I
    :cond_2
    const/16 v16, 0x23

    const/16 v17, 0x21

    move-object/from16 v0, p1

    move v1, v7

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 283
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->heart:Landroid/graphics/Bitmap;

    const/16 v17, 0x46

    sub-int v17, v7, v17

    const/16 v18, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move v3, v13

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 284
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, LHamster/Base/Graphics;->getWidth:I

    sget v19, LHamster/Base/Graphics;->getHeight:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    move/from16 v16, v0

    add-int/lit8 v17, v6, 0x1

    mul-int/lit8 v17, v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 286
    const/16 v16, 0x23

    const/16 v17, 0x21

    move-object/from16 v0, p1

    move v1, v7

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 287
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->heart:Landroid/graphics/Bitmap;

    const/16 v17, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move v2, v7

    move v3, v13

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 288
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, LHamster/Base/Graphics;->getWidth:I

    sget v19, LHamster/Base/Graphics;->getHeight:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 294
    :cond_3
    :goto_5
    add-int/lit8 v16, v7, 0x23

    add-int/lit8 v7, v16, 0x4

    .line 281
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 289
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    move/from16 v16, v0

    add-int/lit8 v17, v6, 0x1

    mul-int/lit8 v17, v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    move/from16 v16, v0

    mul-int/lit8 v17, v6, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 290
    const/16 v16, 0x23

    const/16 v17, 0x21

    move-object/from16 v0, p1

    move v1, v7

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 291
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->heart:Landroid/graphics/Bitmap;

    const/16 v17, 0x23

    sub-int v17, v7, v17

    const/16 v18, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move v3, v13

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 292
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, LHamster/Base/Graphics;->getWidth:I

    sget v19, LHamster/Base/Graphics;->getHeight:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    goto :goto_5

    .line 309
    .restart local v5    # "hits":I
    .restart local v9    # "number":I
    .restart local v10    # "per":I
    :cond_5
    div-int/lit8 v10, v10, 0xa

    .line 310
    div-int v16, v5, v10

    if-lez v16, :cond_7

    const/16 v16, 0xa

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_7

    .line 311
    const/16 v16, 0x18

    const/16 v17, 0x20

    move-object/from16 v0, p1

    move v1, v7

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 312
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    div-int v17, v5, v10

    mul-int/lit8 v17, v17, 0x18

    sub-int v17, v7, v17

    const/16 v18, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move v3, v13

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 313
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, LHamster/Base/Graphics;->getWidth:I

    sget v19, LHamster/Base/Graphics;->getHeight:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 314
    rem-int/2addr v5, v10

    .line 315
    add-int/lit8 v16, v7, 0x18

    add-int/lit8 v7, v16, 0x2

    .line 308
    :cond_6
    :goto_6
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1

    .line 316
    :cond_7
    const/16 v16, 0xa

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 317
    const/16 v16, 0x18

    const/16 v17, 0x20

    move-object/from16 v0, p1

    move v1, v7

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 318
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    const/16 v17, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move v2, v7

    move v3, v13

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 319
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, LHamster/Base/Graphics;->getWidth:I

    sget v19, LHamster/Base/Graphics;->getHeight:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 320
    add-int/lit8 v16, v7, 0x18

    add-int/lit8 v7, v16, 0x2

    goto :goto_6

    .line 334
    :cond_8
    sget v16, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v16, v16, 0x2

    add-int v16, v16, v14

    const/16 v17, 0x18

    sub-int v7, v16, v17

    .line 335
    sget v16, LHamster/Base/Graphics;->getHeight:I

    const/16 v17, 0x32

    sub-int v16, v16, v17

    add-int/lit8 v13, v16, 0x5

    .line 337
    const/16 v16, 0x18

    const/16 v17, 0x20

    move-object/from16 v0, p1

    move v1, v7

    move v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 338
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    div-int/lit8 v17, v17, 0xa

    mul-int/lit8 v17, v17, 0x18

    sub-int v17, v7, v17

    const/16 v18, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move v3, v13

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 339
    add-int/lit8 v16, v7, 0x18

    const/16 v17, 0x18

    const/16 v18, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v13

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 340
    sget-object v16, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    add-int/lit8 v17, v7, 0x18

    move-object/from16 v0, p0

    iget v0, v0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    rem-int/lit8 v18, v18, 0xa

    mul-int/lit8 v18, v18, 0x18

    sub-int v17, v17, v18

    const/16 v18, 0x14

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move v3, v13

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 342
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, LHamster/Base/Graphics;->getWidth:I

    sget v19, LHamster/Base/Graphics;->getHeight:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, LHamster/Base/Graphics;->setClip(IIII)V

    goto/16 :goto_2

    .line 353
    :cond_9
    sget v16, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v16, v16, 0x2

    add-int v16, v16, v14

    const/16 v17, 0x18

    sub-int v16, v16, v17

    const/16 v17, 0x14

    sub-int v16, v16, v17

    const/16 v17, 0x2b

    sub-int v7, v16, v17

    goto/16 :goto_3

    .line 361
    :cond_a
    sget v16, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v16, v16, 0x2

    add-int v16, v16, v14

    add-int/lit8 v16, v16, 0x18

    add-int/lit8 v7, v16, 0x14

    goto/16 :goto_4
.end method

.method public hitpaint(LHamster/Base/Graphics;I)V
    .locals 13
    .param p1, "g"    # LHamster/Base/Graphics;
    .param p2, "y"    # I

    .prologue
    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, LHamsterSuper/Client/Deamon/Hit;->hitshow:J

    sub-long v6, v9, v11

    .line 375
    .local v6, "time":J
    const-wide/16 v9, 0xfa

    cmp-long v9, v6, v9

    if-gez v9, :cond_1

    .line 376
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x4

    aget v1, v9, v10

    .line 377
    .local v1, "left":I
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    sub-int v8, v9, p2

    .line 378
    .local v8, "top":I
    const/16 v2, 0x8

    .line 379
    .local v2, "move":I
    long-to-int v9, v6

    mul-int/2addr v9, v2

    div-int/lit16 v2, v9, 0xfa

    .line 381
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hm:Landroid/graphics/Bitmap;

    const/16 v10, 0x14

    invoke-virtual {p1, v9, v1, v8, v10}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 383
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x4

    aget v9, v9, v10

    const/16 v10, 0x14

    sub-int/2addr v9, v10

    sub-int v1, v9, v2

    .line 384
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    const/16 v10, 0x13

    sub-int/2addr v9, v10

    sub-int/2addr v9, v2

    sub-int v8, v9, p2

    .line 385
    const/16 v9, 0x28

    const/16 v10, 0x26

    invoke-virtual {p1, v1, v8, v9, v10}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 386
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->sp:Landroid/graphics/Bitmap;

    const/16 v10, 0x28

    sub-int v10, v1, v10

    const/16 v11, 0x14

    invoke-virtual {p1, v9, v10, v8, v11}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 387
    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, LHamster/Base/Graphics;->getWidth:I

    sget v12, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v9, v10, v11, v12}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 390
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x4

    aget v9, v9, v10

    const/16 v10, 0x14

    sub-int/2addr v9, v10

    sub-int v1, v9, v2

    .line 391
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    sget-object v10, LHamsterSuper/Client/Deamon/Resource;->hm:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0x13

    sub-int/2addr v9, v10

    add-int/2addr v9, v2

    sub-int v8, v9, p2

    .line 392
    const/16 v9, 0x28

    const/16 v10, 0x26

    invoke-virtual {p1, v1, v8, v9, v10}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 393
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->sp:Landroid/graphics/Bitmap;

    const/16 v10, 0x14

    invoke-virtual {p1, v9, v1, v8, v10}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 394
    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, LHamster/Base/Graphics;->getWidth:I

    sget v12, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v9, v10, v11, v12}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 397
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x4

    aget v9, v9, v10

    sget-object v10, LHamsterSuper/Client/Deamon/Resource;->hm:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    const/16 v10, 0x28

    sub-int/2addr v9, v10

    add-int v1, v9, v2

    .line 398
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    sub-int/2addr v9, v2

    sub-int v8, v9, p2

    .line 399
    const/16 v9, 0x28

    const/16 v10, 0x26

    invoke-virtual {p1, v1, v8, v9, v10}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 400
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->sp:Landroid/graphics/Bitmap;

    const/16 v10, 0x50

    sub-int v10, v1, v10

    const/16 v11, 0x14

    invoke-virtual {p1, v9, v10, v8, v11}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 401
    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, LHamster/Base/Graphics;->getWidth:I

    sget v12, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v9, v10, v11, v12}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 404
    iget v9, p0, LHamsterSuper/Client/Deamon/Hit;->procerss:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    iget-boolean v9, p0, LHamsterSuper/Client/Deamon/Hit;->suessshow:Z

    if-eqz v9, :cond_1

    .line 408
    const/16 v5, 0xa

    .line 410
    .local v5, "remove":I
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x4

    aget v9, v9, v10

    const/16 v10, 0x14

    sub-int/2addr v9, v10

    sub-int v1, v9, v2

    .line 411
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    const/16 v10, 0x13

    sub-int/2addr v9, v10

    sub-int/2addr v9, v2

    sub-int v8, v9, p2

    .line 412
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 414
    iget v9, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    rem-int/lit8 v9, v9, 0x3

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 415
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v1, v9

    .line 419
    :cond_0
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->h0:Landroid/graphics/Bitmap;

    const/16 v10, 0x14

    invoke-virtual {p1, v9, v1, v8, v10}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 420
    add-int v9, v1, v5

    sget-object v10, LHamsterSuper/Client/Deamon/Resource;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int v1, v9, v10

    .line 421
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, LHamsterSuper/Client/Deamon/Resource;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 422
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->x:Landroid/graphics/Bitmap;

    const/16 v10, 0x14

    invoke-virtual {p1, v9, v1, v8, v10}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 423
    add-int v9, v1, v5

    sget-object v10, LHamsterSuper/Client/Deamon/Resource;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int v1, v9, v10

    .line 424
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    iget v10, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    mul-int/lit8 v10, v10, 0x6

    add-int/lit8 v10, v10, 0x5

    aget v9, v9, v10

    const/16 v10, 0x13

    sub-int/2addr v9, v10

    sub-int/2addr v9, v2

    sub-int v8, v9, p2

    .line 425
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v8, v9

    sget-object v10, LHamsterSuper/Client/Deamon/Resource;->h0:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int v8, v9, v10

    .line 427
    iget v9, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    mul-int/lit8 v0, v9, 0xa

    .line 428
    .local v0, "hits":I
    const/16 v4, 0x2710

    .line 430
    .local v4, "per":I
    const/4 v3, 0x3

    .local v3, "number":I
    :goto_0
    if-gtz v3, :cond_2

    .line 455
    .end local v0    # "hits":I
    .end local v1    # "left":I
    .end local v2    # "move":I
    .end local v3    # "number":I
    .end local v4    # "per":I
    .end local v5    # "remove":I
    .end local v8    # "top":I
    :cond_1
    return-void

    .line 431
    .restart local v0    # "hits":I
    .restart local v1    # "left":I
    .restart local v2    # "move":I
    .restart local v3    # "number":I
    .restart local v4    # "per":I
    .restart local v5    # "remove":I
    .restart local v8    # "top":I
    :cond_2
    div-int/lit8 v4, v4, 0xa

    .line 432
    div-int v9, v0, v4

    if-lez v9, :cond_4

    const/16 v9, 0xa

    if-lt v0, v9, :cond_4

    .line 433
    const/16 v9, 0x18

    const/16 v10, 0x20

    invoke-virtual {p1, v1, v8, v9, v10}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 434
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    div-int v10, v0, v4

    mul-int/lit8 v10, v10, 0x18

    sub-int v10, v1, v10

    const/16 v11, 0x14

    invoke-virtual {p1, v9, v10, v8, v11}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 435
    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, LHamster/Base/Graphics;->getWidth:I

    sget v12, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v9, v10, v11, v12}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 436
    rem-int/2addr v0, v4

    .line 437
    add-int/lit8 v9, v1, 0x18

    add-int/lit8 v1, v9, 0x2

    .line 430
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 438
    :cond_4
    const/16 v9, 0xa

    if-ne v4, v9, :cond_3

    .line 439
    const/16 v9, 0x18

    const/16 v10, 0x20

    invoke-virtual {p1, v1, v8, v9, v10}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 440
    sget-object v9, LHamsterSuper/Client/Deamon/Resource;->num:Landroid/graphics/Bitmap;

    const/16 v10, 0x14

    invoke-virtual {p1, v9, v1, v8, v10}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 441
    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, LHamster/Base/Graphics;->getWidth:I

    sget v12, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v9, v10, v11, v12}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 442
    add-int/lit8 v9, v1, 0x18

    add-int/lit8 v1, v9, 0x2

    goto :goto_1
.end method

.method protected hitsucess(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 143
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    .line 145
    iput-boolean v6, p0, LHamsterSuper/Client/Deamon/Hit;->suessshow:Z

    .line 146
    iput v4, p0, LHamsterSuper/Client/Deamon/Hit;->procerss:I

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 149
    .local v0, "time":J
    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 150
    iput v4, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    .line 152
    :cond_0
    iget-wide v2, p0, LHamsterSuper/Client/Deamon/Hit;->suesstime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 153
    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    .line 157
    :goto_0
    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_1

    .line 158
    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    add-int/lit8 v2, v2, 0x5

    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    .line 162
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LHamsterSuper/Client/Deamon/Hit;->suesstime:J

    .line 168
    .end local v0    # "time":J
    :goto_1
    return-void

    .line 155
    .restart local v0    # "time":J
    :cond_2
    iput v6, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    goto :goto_0

    .line 165
    .end local v0    # "time":J
    :cond_3
    iput v4, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    goto :goto_1
.end method

.method public keyPressed(I)V
    .locals 8
    .param p1, "keyCode"    # I

    .prologue
    const/16 v7, 0x9c4

    const/4 v5, 0x0

    const-string v6, "Login"

    .line 635
    iget v1, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    packed-switch v1, :pswitch_data_0

    .line 679
    :cond_0
    :goto_0
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V

    .line 682
    return-void

    .line 639
    :pswitch_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 646
    :sswitch_0
    const-string v1, "Hit"

    const-string v2, "KeyEvent.KEYCODE_HOME"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v1}, LHamsterSuper/Client/Deamon/Hamster;->superfinish()V

    goto :goto_0

    .line 642
    :sswitch_1
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v1}, LHamsterSuper/Client/Deamon/Hamster;->StopMusic()V

    .line 643
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    const-string v2, "Login"

    invoke-interface {v1, v5, v6}, LHamster/Base/SuperBase;->setView(ILjava/lang/String;)V

    goto :goto_0

    .line 652
    :pswitch_1
    sparse-switch p1, :sswitch_data_1

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, LHamsterSuper/Client/Deamon/Hit;->wltime:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 660
    .local v0, "time":I
    if-le v0, v7, :cond_0

    .line 661
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Hit;->update_guan()V

    goto :goto_0

    .line 655
    .end local v0    # "time":I
    :sswitch_2
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v1}, LHamsterSuper/Client/Deamon/Hamster;->StopMusic()V

    .line 656
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    const-string v2, "Login"

    invoke-interface {v1, v5, v6}, LHamster/Base/SuperBase;->setView(ILjava/lang/String;)V

    goto :goto_0

    .line 668
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, LHamsterSuper/Client/Deamon/Hit;->wltime:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 669
    .restart local v0    # "time":I
    if-le v0, v7, :cond_0

    .line 670
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v1}, LHamsterSuper/Client/Deamon/Hamster;->StopMusic()V

    .line 671
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    const-string v2, "Login"

    invoke-interface {v1, v5, v6}, LHamster/Base/SuperBase;->setView(ILjava/lang/String;)V

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 639
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_1
    .end sparse-switch

    .line 652
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_2
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method protected losthp(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 193
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    mul-int/lit8 v1, p1, 0x5

    sub-int/2addr v0, v1

    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    .line 194
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    if-gtz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    .line 197
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, LHamsterSuper/Client/Deamon/Hamster;->PlayerMusic(I)V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LHamsterSuper/Client/Deamon/Hit;->wltime:J

    .line 199
    const/4 v0, 0x3

    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    .line 203
    :cond_0
    return-void
.end method

.method public markrat()V
    .locals 5

    .prologue
    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 594
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 595
    .local v2, "random":Ljava/util/Random;
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    ushr-int/lit8 v3, v3, 0x1

    rem-int/lit8 v1, v3, 0x9

    .line 596
    .local v1, "num":I
    iget-object v3, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    aget-object v3, v3, v1

    iget v4, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    invoke-virtual {v3, v4}, LHamsterSuper/Client/Deamon/Rat;->start(I)V

    .line 597
    sget-object v3, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v3}, LHamster/Base/SuperBase;->repaint()V

    .line 599
    .end local v1    # "num":I
    .end local v2    # "random":Ljava/util/Random;
    :cond_0
    return-void

    .line 588
    :cond_1
    iget-object v3, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 589
    iget-object v3, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    new-instance v4, LHamsterSuper/Client/Deamon/Rat;

    invoke-direct {v4}, LHamsterSuper/Client/Deamon/Rat;-><init>()V

    aput-object v4, v3, v0

    .line 590
    :cond_2
    iget-object v3, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    aget-object v3, v3, v0

    invoke-virtual {v3}, LHamsterSuper/Client/Deamon/Rat;->getVisvle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 707
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 701
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, LHamsterSuper/Client/Deamon/Hit;->touch:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 265
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, LHamsterSuper/Client/Deamon/Hit;->touch:J

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 222
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 225
    .local v6, "y":I
    iget v7, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    sget-object v7, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    const v8, 0x7f020001

    invoke-virtual {v7, v8}, LHamsterSuper/Client/Deamon/Hamster;->PlayerMusic(I)V

    .line 231
    const/4 v7, 0x0

    iput-boolean v7, p0, LHamsterSuper/Client/Deamon/Hit;->suessshow:Z

    .line 233
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v7, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    array-length v7, v7

    div-int/lit8 v7, v7, 0x6

    if-lt v2, v7, :cond_2

    .line 248
    :cond_1
    :goto_2
    sget-object v7, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v7}, LHamster/Base/SuperBase;->repaint()V

    goto :goto_0

    .line 234
    :cond_2
    sget-object v7, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    mul-int/lit8 v8, v2, 0x6

    add-int/lit8 v8, v8, 0x0

    aget v3, v7, v8

    .line 235
    .local v3, "startx":I
    sget-object v7, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    mul-int/lit8 v8, v2, 0x6

    add-int/lit8 v8, v8, 0x1

    aget v4, v7, v8

    .line 236
    .local v4, "starty":I
    sget-object v7, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    mul-int/lit8 v8, v2, 0x6

    add-int/lit8 v8, v8, 0x2

    aget v0, v7, v8

    .line 237
    .local v0, "endx":I
    sget-object v7, LHamsterSuper/Client/Deamon/Resource;->hitxy:[I

    mul-int/lit8 v8, v2, 0x6

    add-int/lit8 v8, v8, 0x3

    aget v1, v7, v8

    .line 239
    .local v1, "endy":I
    if-lt v5, v3, :cond_3

    if-gt v5, v0, :cond_3

    if-lt v6, v4, :cond_3

    if-gt v6, v1, :cond_3

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, LHamsterSuper/Client/Deamon/Hit;->hitshow:J

    .line 241
    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->hit_list:I

    .line 242
    iget-object v7, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    aget-object v7, v7, v2

    if-eqz v7, :cond_1

    .line 243
    iget-object v7, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    aget-object v7, v7, v2

    invoke-virtual {v7}, LHamsterSuper/Client/Deamon/Rat;->sucess()V

    goto :goto_2

    .line 233
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    .end local v0    # "endx":I
    .end local v1    # "endy":I
    .end local v2    # "i":I
    .end local v3    # "startx":I
    .end local v4    # "starty":I
    :pswitch_1
    const/16 v7, 0x42

    invoke-virtual {p0, v7}, LHamsterSuper/Client/Deamon/Hit;->keyPressed(I)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public paint()V
    .locals 1

    .prologue
    .line 576
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    invoke-virtual {p0, v0}, LHamsterSuper/Client/Deamon/Hit;->paint(LHamster/Base/Graphics;)V

    .line 577
    return-void
.end method

.method public paint(LHamster/Base/Graphics;)V
    .locals 4
    .param p1, "g"    # LHamster/Base/Graphics;

    .prologue
    .line 544
    invoke-virtual {p0, p1}, LHamsterSuper/Client/Deamon/Hit;->bgpaint(LHamster/Base/Graphics;)I

    move-result v1

    .line 546
    .local v1, "y":I
    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    packed-switch v2, :pswitch_data_0

    .line 569
    :goto_0
    return-void

    .line 549
    :pswitch_0
    invoke-virtual {p0, p1}, LHamsterSuper/Client/Deamon/Hit;->ready(LHamster/Base/Graphics;)V

    goto :goto_0

    .line 553
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 558
    neg-int v2, v1

    invoke-virtual {p0, p1, v2}, LHamsterSuper/Client/Deamon/Hit;->hitpaint(LHamster/Base/Graphics;I)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v2, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 555
    iget-object v2, p0, LHamsterSuper/Client/Deamon/Hit;->hitrat:[LHamsterSuper/Client/Deamon/Rat;

    aget-object v2, v2, v0

    neg-int v3, v1

    invoke-virtual {v2, p1, v0, v3}, LHamsterSuper/Client/Deamon/Rat;->paint(LHamster/Base/Graphics;II)V

    .line 553
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    .end local v0    # "i":I
    :pswitch_2
    invoke-virtual {p0, p1}, LHamsterSuper/Client/Deamon/Hit;->wl(LHamster/Base/Graphics;)V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected read()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "hit_num"

    const-string v8, "guan_list"

    const-string v7, "newhp"

    .line 98
    const/16 v2, 0xa

    new-array v0, v2, [Ljava/lang/String;

    .line 99
    const-string v2, "newhp"

    aput-object v7, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    const/4 v2, 0x2

    .line 100
    const-string v3, "guan_list"

    aput-object v8, v0, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 101
    const-string v3, "suess"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    .line 102
    const-string v3, "hit_num"

    aput-object v9, v0, v2

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    .line 103
    const-string v3, "state"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 105
    .local v0, "save":[Ljava/lang/String;
    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-static {v2, v6, v0}, LHamster/Base/Rms;->mecae1311(Landroid/app/Activity;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 106
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "newhp"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v5

    .line 117
    :goto_0
    return v2

    .line 108
    :cond_0
    const-string v2, "newhp"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    .line 109
    const-string v2, "guan_list"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    .line 110
    const-string v2, "suess"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    .line 111
    const-string v2, "hit_num"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    .line 112
    const-string v2, "state"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    .line 113
    sget-object v2, LHamsterSuper/Client/Deamon/Hit;->time_hit:[I

    iget v3, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    aget v2, v2, v3

    sput v2, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    .line 114
    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    if-nez v2, :cond_1

    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    if-nez v2, :cond_1

    move v2, v5

    .line 115
    goto :goto_0

    :cond_1
    move v2, v6

    .line 117
    goto :goto_0
.end method

.method public ready(LHamster/Base/Graphics;)V
    .locals 10
    .param p1, "g"    # LHamster/Base/Graphics;

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, LHamsterSuper/Client/Deamon/Hit;->readytime:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 460
    .local v2, "time":I
    sget v4, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v4, v4, 0x2

    const/16 v5, 0x13

    sub-int v0, v4, v5

    .line 461
    .local v0, "left":I
    sget v4, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v4, v4, 0x2

    const/16 v5, 0x1c

    sub-int v3, v4, v5

    .line 462
    .local v3, "top":I
    const/16 v4, 0xbb8

    if-ge v2, v4, :cond_0

    .line 464
    div-int/lit16 v1, v2, 0x3e8

    .line 465
    .local v1, "num":I
    const/16 v4, 0x26

    const/16 v5, 0x38

    invoke-virtual {p1, v0, v3, v4, v5}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 466
    sget-object v4, LHamsterSuper/Client/Deamon/Resource;->timer:Landroid/graphics/Bitmap;

    mul-int/lit8 v5, v1, 0x26

    sub-int v5, v0, v5

    invoke-virtual {p1, v4, v5, v3, v9}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 467
    sget v4, LHamster/Base/Graphics;->getWidth:I

    sget v5, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p1, v8, v8, v4, v5}, LHamster/Base/Graphics;->setClip(IIII)V

    .line 478
    .end local v1    # "num":I
    :goto_0
    return-void

    .line 470
    :cond_0
    const/16 v4, 0xfa0

    if-ge v2, v4, :cond_1

    .line 471
    sget v4, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v4, v4, 0x2

    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->rd:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v0, v4, v5

    .line 472
    sget v4, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v4, v4, 0x2

    sget-object v5, LHamsterSuper/Client/Deamon/Resource;->rd:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 473
    sget-object v4, LHamsterSuper/Client/Deamon/Resource;->rd:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v0, v3, v9}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    goto :goto_0

    .line 476
    :cond_1
    const/4 v4, 0x1

    iput v4, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 605
    :try_start_0
    iget v1, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    packed-switch v1, :pswitch_data_0

    .line 629
    :goto_0
    return-void

    .line 608
    :pswitch_0
    iget v1, p0, LHamsterSuper/Client/Deamon/Hit;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Hit;->procerss:I

    .line 609
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget v1, p0, LHamsterSuper/Client/Deamon/Hit;->procerss:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LHamsterSuper/Client/Deamon/Hit;->procerss:I

    .line 613
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Hit;->markrat()V

    .line 614
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 615
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected save()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    const/16 v1, 0xa

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 89
    const-string v2, "newhp"

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 90
    const-string v2, "guan_list"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 91
    const-string v2, "suess"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 92
    const-string v2, "hit_num"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 93
    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 95
    .local v0, "save":[Ljava/lang/String;
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-static {v1, v4, v0}, LHamster/Base/Rms;->m43781db5(Landroid/app/Activity;I[Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 583
    return-void
.end method

.method protected sucess()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 172
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    sget-object v1, LHamsterSuper/Client/Deamon/Hit;->guan_hit:[I

    iget v2, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    aget v1, v1, v2

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 173
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    .line 188
    :goto_0
    return-void

    .line 176
    :cond_0
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    .line 177
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, LHamsterSuper/Client/Deamon/Hamster;->PlayerMusic(I)V

    .line 178
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    sget-object v1, LHamsterSuper/Client/Deamon/Hit;->guan_hit:[I

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_1

    .line 180
    const-string v0, "\u7b97\u4f60\u5f3a\uff01\u5df2\u901a\u5173\uff01\u54fc\u54fc\u54fc\uff01"

    sput-object v0, LHamsterSuper/Client/Deamon/Hit;->win:Ljava/lang/String;

    .line 184
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LHamsterSuper/Client/Deamon/Hit;->wltime:J

    .line 185
    const/4 v0, 0x2

    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    goto :goto_0

    .line 182
    :cond_1
    const-string v0, "\u7b97\u4f60\u72e0\uff01\u8d70\u7740\u77a7\uff01\u54fc\uff01"

    sput-object v0, LHamsterSuper/Client/Deamon/Hit;->win:Ljava/lang/String;

    goto :goto_1
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    const/16 v0, 0x32

    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LHamsterSuper/Client/Deamon/Hit;->readytime:J

    .line 123
    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    .line 124
    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    .line 125
    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    .line 126
    sget-object v0, LHamsterSuper/Client/Deamon/Hit;->time_hit:[I

    iget v1, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    aget v0, v0, v1

    sput v0, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    .line 127
    iput v2, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    .line 128
    return-void
.end method

.method protected update_guan()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    const/16 v0, 0x32

    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->newhp:I

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LHamsterSuper/Client/Deamon/Hit;->readytime:J

    .line 132
    iput v3, p0, LHamsterSuper/Client/Deamon/Hit;->suess:I

    .line 133
    iput v3, p0, LHamsterSuper/Client/Deamon/Hit;->hit_num:I

    .line 134
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    sget-object v1, LHamsterSuper/Client/Deamon/Hit;->guan_hit:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 135
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    .line 138
    :goto_0
    sget-object v0, LHamsterSuper/Client/Deamon/Hit;->time_hit:[I

    iget v1, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    aget v0, v0, v1

    sput v0, LHamsterSuper/Client/Deamon/Hit;->play_time:I

    .line 139
    iput v3, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    .line 140
    return-void

    .line 137
    :cond_0
    iput v3, p0, LHamsterSuper/Client/Deamon/Hit;->guan_list:I

    goto :goto_0
.end method

.method public wl(LHamster/Base/Graphics;)V
    .locals 14
    .param p1, "g"    # LHamster/Base/Graphics;

    .prologue
    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, LHamsterSuper/Client/Deamon/Hit;->wltime:J

    sub-long/2addr v5, v7

    long-to-int v13, v5

    .line 483
    .local v13, "time":I
    const-string v12, ""

    .line 485
    .local v12, "temp":Ljava/lang/String;
    const/16 v0, 0x1388

    if-ge v13, v0, :cond_2

    .line 486
    sget v0, LHamster/Base/Graphics;->getWidth:I

    sget v1, LHamster/Base/Graphics;->getWidth:I

    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->lost:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v13

    div-int/lit16 v1, v1, 0x1388

    sub-int v1, v0, v1

    .line 487
    .local v1, "left":I
    sget v0, LHamster/Base/Graphics;->getHeight:I

    sget-object v2, LHamsterSuper/Client/Deamon/Resource;->lost:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x1e

    sub-int v2, v0, v2

    .line 489
    .local v2, "top":I
    const/4 v11, 0x0

    .line 490
    .local v11, "num":I
    const-string v12, ""

    .line 492
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    packed-switch v0, :pswitch_data_0

    .line 526
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v11    # "num":I
    :goto_0
    sget v0, LHamster/Base/Graphics;->fontheight:I

    mul-int/lit8 v3, v0, 0x4

    .line 527
    .local v3, "width":I
    sget v0, LHamster/Base/Graphics;->fontheight:I

    mul-int/lit8 v4, v0, 0x5

    .line 528
    .local v4, "height":I
    sget v0, LHamster/Base/Graphics;->getWidth:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v3, 0x2

    sub-int v1, v0, v1

    .line 529
    .restart local v1    # "left":I
    sget v0, LHamster/Base/Graphics;->getHeight:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    .line 531
    .restart local v2    # "top":I
    const v0, -0x77000001

    invoke-virtual {p1, v0}, LHamster/Base/Graphics;->setColor(I)V

    .line 532
    sget v0, LHamster/Base/Graphics;->fontheight:I

    div-int/lit8 v5, v0, 0x2

    sget v0, LHamster/Base/Graphics;->fontheight:I

    div-int/lit8 v6, v0, 0x2

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, LHamster/Base/Graphics;->fillRoundRect(IIIIII)V

    .line 533
    const v0, -0x778fffde

    invoke-virtual {p1, v0}, LHamster/Base/Graphics;->setColor(I)V

    .line 534
    sget v0, LHamster/Base/Graphics;->fontheight:I

    div-int/lit8 v5, v0, 0x2

    sget v0, LHamster/Base/Graphics;->fontheight:I

    div-int/lit8 v6, v0, 0x2

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, LHamster/Base/Graphics;->drawRoundRect(IIIIII)V

    .line 535
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v4, v5}, LHamster/Base/Graphics;->setColor(III)V

    .line 536
    .end local v4    # "height":I
    add-int/lit8 v7, v1, 0xc

    add-int/lit8 v8, v2, 0xc

    const/16 v0, 0x19

    sub-int v9, v3, v0

    sget v0, LHamster/Base/Graphics;->fontheight:I

    add-int/lit8 v10, v0, 0x2

    move-object v5, p1

    move-object v6, v12

    invoke-static/range {v5 .. v10}, LHamsterSuper/Client/Deamon/UI;->m81e8be09(LHamster/Base/Graphics;Ljava/lang/String;IIII)I

    .line 538
    return-void

    .line 494
    .end local v3    # "width":I
    .restart local v11    # "num":I
    :pswitch_0
    sget-object v0, LHamsterSuper/Client/Deamon/Resource;->rst:Landroid/graphics/Bitmap;

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 495
    sget-object v0, LHamsterSuper/Client/Deamon/Hit;->win:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/2addr v0, v13

    div-int/lit16 v11, v0, 0x682

    .line 496
    sget-object v0, LHamsterSuper/Client/Deamon/Hit;->win:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v11, v0, :cond_0

    .line 497
    sget-object v0, LHamsterSuper/Client/Deamon/Hit;->win:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 498
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LHamsterSuper/Client/Deamon/Hit;->win:Ljava/lang/String;

    .end local v1    # "left":I
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v2    # "top":I
    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 499
    goto/16 :goto_0

    .line 501
    .restart local v1    # "left":I
    .restart local v2    # "top":I
    :pswitch_1
    sget-object v0, LHamsterSuper/Client/Deamon/Resource;->lost:Landroid/graphics/Bitmap;

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, LHamster/Base/Graphics;->drawImage(Landroid/graphics/Bitmap;III)V

    .line 502
    const-string v0, "\u5c0f\u6837\u513f\uff0c\u4f60\u662f\u65b0\u6765\u7684\u5427\uff01\u54c8\u54c8\uff01"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/2addr v0, v13

    div-int/lit16 v11, v0, 0x682

    .line 503
    const-string v0, "\u5c0f\u6837\u513f\uff0c\u4f60\u662f\u65b0\u6765\u7684\u5427\uff01\u54c8\u54c8\uff01"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v11, v0, :cond_1

    .line 504
    const-string v0, "\u5c0f\u6837\u513f\uff0c\u4f60\u662f\u65b0\u6765\u7684\u5427\uff01\u54c8\u54c8\uff01"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 505
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5c0f\u6837\u513f\uff0c\u4f60\u662f\u65b0\u6765\u7684\u5427\uff01\u54c8\u54c8\uff01"

    .end local v1    # "left":I
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v2    # "top":I
    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 515
    .end local v11    # "num":I
    :cond_2
    iget v0, p0, LHamsterSuper/Client/Deamon/Hit;->state:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 517
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LHamsterSuper/Client/Deamon/Hit;->win:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 518
    goto/16 :goto_0

    .line 520
    :pswitch_3
    const-string v12, "\u5c0f\u6837\u513f\uff0c\u4f60\u662f\u65b0\u6765\u7684\u5427\uff01\u54c8\u54c8\uff01<br>"

    goto/16 :goto_0

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 515
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
