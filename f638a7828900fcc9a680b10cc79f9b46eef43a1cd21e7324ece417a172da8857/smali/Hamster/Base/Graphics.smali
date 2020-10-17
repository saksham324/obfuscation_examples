.class public LHamster/Base/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# static fields
.field public static final BASELINE:I = 0x40

.field public static final BOTTOM:I = 0x20

.field public static final DOTTED:I = 0x1

.field public static final HCENTER:I = 0x1

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final SOLID:I = 0x0

.field public static final TOP:I = 0x10

.field public static final VCENTER:I = 0x2

.field public static font:LHamster/Base/Font;

.field public static fontheight:I

.field public static getHeight:I

.field public static getWidth:I


# instance fields
.field private clip:Landroid/graphics/Rect;

.field public display:Landroid/view/Display;

.field private paint:Landroid/graphics/Paint;

.field private topbottom:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput v1, p0, LHamster/Base/Graphics;->topbottom:I

    .line 52
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v1}, LHamsterSuper/Client/Deamon/Hamster;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 53
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, LHamster/Base/Graphics;->display:Landroid/view/Display;

    .line 54
    iget-object v1, p0, LHamster/Base/Graphics;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, LHamster/Base/Graphics;->getWidth:I

    .line 55
    iget-object v1, p0, LHamster/Base/Graphics;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, LHamster/Base/Graphics;->getHeight:I

    .line 56
    return-void
.end method

.method private m655318d2(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "destWidth"    # I
    .param p3, "destHeigth"    # I

    .prologue
    const/4 v1, 0x0

    .line 132
    const-string v10, "lessenBitmap"

    .line 133
    .local v10, "tag":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 138
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 140
    .local v4, "h":I
    int-to-float v0, p2

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 141
    .local v9, "scaleWidth":F
    int-to-float v0, p3

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 142
    .local v8, "scaleHeight":F
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bitmap width is :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bitmap height is :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new width is :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new height is :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "scale width is  :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "scale height is  :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 149
    .local v5, "m":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 150
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    move-object v0, v7

    .line 151
    goto/16 :goto_0
.end method


# virtual methods
.method public CreateImage(I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "sImg"    # I

    .prologue
    .line 93
    :try_start_0
    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v2}, LHamsterSuper/Client/Deamon/Hamster;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "img":Landroid/graphics/Bitmap;
    move-object v2, v1

    .line 99
    .end local v1    # "img":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 96
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Graphics"

    const-string v3, "picture is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public CreateImage([B)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "imgData"    # [B

    .prologue
    .line 109
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "img":Landroid/graphics/Bitmap;
    move-object v2, v1

    .line 115
    .end local v1    # "img":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Graphics"

    const-string v3, "picture is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public CreateNewPaint()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    .line 82
    invoke-virtual {p0}, LHamster/Base/Graphics;->drawClear()V

    .line 83
    return-void
.end method

.method public clipRect(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 297
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 298
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    .line 300
    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .prologue
    .line 399
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 401
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    const/4 v4, 0x1

    iget-object v5, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 403
    return-void
.end method

.method public drawClear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x1000000

    .line 289
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 291
    sget v0, LHamster/Base/Graphics;->getWidth:I

    sget v1, LHamster/Base/Graphics;->getHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, LHamster/Base/Graphics;->fillRect(IIII)V

    .line 292
    return-void
.end method

.method public drawImage(Landroid/graphics/Bitmap;III)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "align"    # I

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, p4, v0}, LHamster/Base/Graphics;->setbitmapAlign(II)V

    .line 124
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    iget v2, p0, LHamster/Base/Graphics;->topbottom:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    iget-object v3, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    return-void
.end method

.method public drawLine(IIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 226
    if-le p1, p3, :cond_0

    .line 228
    add-int/lit8 p1, p1, 0x1

    .line 236
    :goto_0
    if-le p2, p4, :cond_1

    .line 238
    add-int/lit8 p2, p2, 0x1

    .line 246
    :goto_1
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 248
    return-void

    .line 232
    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 242
    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1
.end method

.method public drawRect(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 254
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 256
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 258
    return-void
.end method

.method public drawRoundRect(IIIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    .line 359
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int v4, p1, p3

    int-to-float v4, v4

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    iget-object v4, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 363
    return-void
.end method

.method public drawString(Ljava/lang/String;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 272
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    sget-object v2, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    invoke-virtual {v2}, LHamster/Base/Font;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    invoke-virtual {v3}, LHamster/Base/Font;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 274
    return-void
.end method

.method public drawString(Ljava/lang/String;III)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "align"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p4}, LHamster/Base/Graphics;->setAlign(I)V

    .line 281
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    iget v2, p0, LHamster/Base/Graphics;->topbottom:I

    add-int/2addr v2, p3

    iget v3, p0, LHamster/Base/Graphics;->topbottom:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "startAngle"    # I
    .param p6, "arcAngle"    # I

    .prologue
    .line 387
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 389
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    const/4 v4, 0x1

    iget-object v5, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 391
    return-void
.end method

.method public fillRect(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 263
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 267
    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "arcWidth"    # I
    .param p6, "arcHeight"    # I

    .prologue
    .line 347
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int v4, p1, p3

    int-to-float v4, v4

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    iget-object v4, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 351
    return-void
.end method

.method public fillTriangle(IIIIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .param p5, "x3"    # I
    .param p6, "y3"    # I

    .prologue
    .line 371
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 375
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    int-to-float v4, p6

    iget-object v5, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 377
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p5

    int-to-float v2, p6

    int-to-float v3, p1

    int-to-float v4, p2

    iget-object v5, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 379
    return-void
.end method

.method public getClip()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFont()LHamster/Base/Font;
    .locals 1

    .prologue
    .line 75
    sget-object v0, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    return-object v0
.end method

.method public getGraphics()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 462
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlign(I)V
    .locals 5
    .param p1, "align"    # I

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x14

    const/16 v2, 0x11

    .line 194
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    .line 195
    if-eq v3, p1, :cond_0

    .line 196
    const/16 v0, 0x24

    if-ne v0, p1, :cond_3

    .line 198
    :cond_0
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 210
    :cond_1
    :goto_0
    const/16 v0, 0x10

    if-eq v0, p1, :cond_2

    .line 211
    if-eq v3, p1, :cond_2

    .line 212
    if-eq v4, p1, :cond_2

    .line 213
    if-ne v2, p1, :cond_7

    .line 214
    :cond_2
    sget-object v0, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    invoke-virtual {v0}, LHamster/Base/Font;->getHeight()I

    move-result v0

    iput v0, p0, LHamster/Base/Graphics;->topbottom:I

    .line 221
    :goto_1
    return-void

    .line 199
    :cond_3
    const/4 v0, 0x1

    if-eq v0, p1, :cond_4

    if-ne v2, p1, :cond_5

    .line 202
    :cond_4
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 203
    :cond_5
    const/16 v0, 0x8

    if-eq v0, p1, :cond_6

    if-ne v4, p1, :cond_1

    .line 206
    :cond_6
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 216
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, LHamster/Base/Graphics;->topbottom:I

    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 425
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, LHamster/Base/Graphics;->setAlphaValue(I)V

    .line 427
    return-void
.end method

.method public setAlphaValue(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 417
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 419
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 409
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 411
    return-void
.end method

.method public setClip(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 306
    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0, p1, p2, p3, p4}, LHamster/Base/Graphics;->clipRect(IIII)V

    .line 312
    :cond_0
    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne p1, v0, :cond_1

    add-int v0, p1, p3

    iget-object v1, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_1

    .line 314
    add-int v0, p2, p4

    iget-object v1, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_1

    .line 339
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_2

    add-int v0, p1, p3

    iget-object v1, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_2

    .line 322
    add-int v0, p2, p4

    iget-object v1, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    .line 324
    :cond_2
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 325
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 329
    :cond_3
    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 331
    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 333
    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    add-int v1, p1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 335
    iget-object v0, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    add-int v1, p2, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 337
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, LHamster/Base/Graphics;->clip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "rgb"    # I

    .prologue
    .line 443
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 445
    return-void
.end method

.method public setColor(III)V
    .locals 3
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 451
    const/high16 v1, -0x1000000

    shl-int/lit8 v2, p1, 0x10

    add-int/2addr v1, v2

    shl-int/lit8 v2, p2, 0x8

    add-int/2addr v1, v2

    add-int v0, v1, p3

    .line 453
    .local v0, "argb":I
    iget-object v1, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    return-void
.end method

.method public setFont(LHamster/Base/Font;)V
    .locals 4
    .param p1, "font"    # LHamster/Base/Font;

    .prologue
    .line 62
    sput-object p1, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    .line 63
    iget-object v2, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, LHamster/Base/Font;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    iget-object v2, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, LHamster/Base/Font;->getSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    iget-object v2, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 66
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v2, v3

    .line 67
    .local v1, "height":F
    float-to-int v2, v1

    invoke-virtual {p1, v2}, LHamster/Base/Font;->setHeight(I)V

    .line 68
    invoke-virtual {p1}, LHamster/Base/Font;->getHeight()I

    move-result v2

    iput v2, p0, LHamster/Base/Graphics;->topbottom:I

    .line 69
    invoke-virtual {p1}, LHamster/Base/Font;->getHeight()I

    move-result v2

    sput v2, LHamster/Base/Graphics;->fontheight:I

    .line 70
    return-void
.end method

.method public setbitmapAlign(II)V
    .locals 5
    .param p1, "align"    # I
    .param p2, "topbottom"    # I

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x14

    const/16 v2, 0x11

    .line 159
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    .line 160
    if-eq v3, p1, :cond_0

    .line 161
    const/16 v0, 0x24

    if-ne v0, p1, :cond_3

    .line 163
    :cond_0
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 175
    :cond_1
    :goto_0
    const/16 v0, 0x10

    if-eq v0, p1, :cond_2

    .line 176
    if-eq v3, p1, :cond_2

    .line 177
    if-eq v4, p1, :cond_2

    .line 178
    if-ne v2, p1, :cond_7

    .line 179
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, LHamster/Base/Graphics;->topbottom:I

    .line 186
    :goto_1
    return-void

    .line 164
    :cond_3
    const/4 v0, 0x1

    if-eq v0, p1, :cond_4

    if-ne v2, p1, :cond_5

    .line 167
    :cond_4
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 168
    :cond_5
    const/16 v0, 0x8

    if-eq v0, p1, :cond_6

    if-ne v4, p1, :cond_1

    .line 171
    :cond_6
    iget-object v0, p0, LHamster/Base/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 181
    :cond_7
    neg-int v0, p2

    iput v0, p0, LHamster/Base/Graphics;->topbottom:I

    goto :goto_1
.end method

.method public translate(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 435
    sget-object v0, LHamster/Base/ViewBase;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 437
    return-void
.end method
