.class public LHamster/Base/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field private static final DEFAULT_FONT:LHamster/Base/Font;

.field public static final FACE_SYSTEM:I = 0x0

.field public static final SIZE_LARGE:I = 0x28

.field public static final SIZE_MEDIUM:I = 0x1f

.field public static final SIZE_SMALL:I = 0x14

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_PLAIN:I = 0x0

.field public static final STYLE_UNDERLINED:I = 0x4


# instance fields
.field private baseline:I

.field private face:I

.field private height:I

.field private iTypeface:Landroid/graphics/Typeface;

.field private size:I

.field private style:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, LHamster/Base/Font;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, LHamster/Base/Font;-><init>(Landroid/graphics/Typeface;I)V

    sput-object v0, LHamster/Base/Font;->DEFAULT_FONT:LHamster/Base/Font;

    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 1
    .param p1, "aTypeface"    # Landroid/graphics/Typeface;
    .param p2, "aSize"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, LHamster/Base/Font;->iTypeface:Landroid/graphics/Typeface;

    .line 41
    iget-object v0, p0, LHamster/Base/Font;->iTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 43
    iput-object p1, p0, LHamster/Base/Font;->iTypeface:Landroid/graphics/Typeface;

    .line 45
    :cond_0
    iput p2, p0, LHamster/Base/Font;->size:I

    .line 47
    return-void
.end method

.method public static m178cd097()LHamster/Base/Font;
    .locals 1

    .prologue
    .line 153
    sget-object v0, LHamster/Base/Font;->DEFAULT_FONT:LHamster/Base/Font;

    return-object v0
.end method

.method public static mb44238a6(I)LHamster/Base/Font;
    .locals 3
    .param p0, "fontSepcifier"    # I

    .prologue
    const/4 v2, 0x0

    .line 123
    sparse-switch p0, :sswitch_data_0

    .line 143
    sget-object v0, LHamster/Base/Font;->DEFAULT_FONT:LHamster/Base/Font;

    :goto_0
    return-object v0

    .line 129
    :sswitch_0
    new-instance v0, LHamster/Base/Font;

    const/16 v1, 0x14

    invoke-direct {v0, v2, v1}, LHamster/Base/Font;-><init>(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 133
    :sswitch_1
    new-instance v0, LHamster/Base/Font;

    const/16 v1, 0x1f

    invoke-direct {v0, v2, v1}, LHamster/Base/Font;-><init>(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 137
    :sswitch_2
    new-instance v0, LHamster/Base/Font;

    const/16 v1, 0x28

    invoke-direct {v0, v2, v1}, LHamster/Base/Font;-><init>(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1f -> :sswitch_1
        0x28 -> :sswitch_2
    .end sparse-switch
.end method

.method public static mb44238a6(III)LHamster/Base/Font;
    .locals 2
    .param p0, "face"    # I
    .param p1, "style"    # I
    .param p2, "size"    # I

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 183
    sget-object v0, LHamster/Base/Font;->DEFAULT_FONT:LHamster/Base/Font;

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    new-instance v0, LHamster/Base/Font;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, v1, p2}, LHamster/Base/Font;-><init>(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 173
    :pswitch_1
    new-instance v0, LHamster/Base/Font;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, v1, p2}, LHamster/Base/Font;-><init>(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 177
    :pswitch_2
    new-instance v0, LHamster/Base/Font;

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, v1, p2}, LHamster/Base/Font;-><init>(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public charWidth(C)I
    .locals 1
    .param p1, "arg"    # C

    .prologue
    .line 193
    iget v0, p0, LHamster/Base/Font;->size:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, LHamster/Base/Font;->height:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, LHamster/Base/Font;->size:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, LHamster/Base/Font;->iTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, LHamster/Base/Font;->size:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 60
    iput p1, p0, LHamster/Base/Font;->height:I

    .line 61
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "fontSize"    # I

    .prologue
    .line 95
    iput p1, p0, LHamster/Base/Font;->size:I

    .line 97
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 52
    iget v0, p0, LHamster/Base/Font;->size:I

    iput v0, p0, LHamster/Base/Font;->width:I

    .line 53
    return-void
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 4
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 205
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 213
    return v1

    .line 207
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_1

    .line 208
    iget v2, p0, LHamster/Base/Font;->size:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 205
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget v2, p0, LHamster/Base/Font;->size:I

    add-int/2addr v1, v2

    goto :goto_1
.end method
