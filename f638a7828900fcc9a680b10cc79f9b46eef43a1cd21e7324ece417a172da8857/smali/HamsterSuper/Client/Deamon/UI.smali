.class public LHamsterSuper/Client/Deamon/UI;
.super Ljava/lang/Object;
.source "UI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static m81e8be09(LHamster/Base/Graphics;Ljava/lang/String;IIII)I
    .locals 9
    .param p0, "g"    # LHamster/Base/Graphics;
    .param p1, "tempp"    # Ljava/lang/String;
    .param p2, "location_X"    # I
    .param p3, "location_Y"    # I
    .param p4, "temp_width"    # I
    .param p5, "row_height"    # I

    .prologue
    const/16 v8, 0x14

    .line 10
    const/4 v2, 0x0

    .line 11
    .local v2, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 47
    return v2

    .line 14
    :cond_0
    move v4, v0

    .line 15
    .local v4, "start":I
    const-string v6, "<br>"

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 16
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 17
    .local v5, "temp":Ljava/lang/String;
    sget-object v6, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    invoke-virtual {v6, v5}, LHamster/Base/Font;->stringWidth(Ljava/lang/String;)I

    move-result v6

    if-le v6, p4, :cond_4

    .line 20
    const/4 v3, 0x0

    .line 21
    .local v3, "old_j":I
    const/4 v1, 0x4

    .local v1, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v1, v6, :cond_2

    .line 11
    .end local v1    # "j":I
    .end local v3    # "old_j":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 23
    .restart local v1    # "j":I
    .restart local v3    # "old_j":I
    :cond_2
    sget-object v6, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, LHamster/Base/Font;->stringWidth(Ljava/lang/String;)I

    move-result v6

    if-le v6, p4, :cond_3

    .line 25
    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    mul-int v7, v2, p5

    add-int/2addr v7, p3

    invoke-virtual {p0, v6, p2, v7, v8}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    move v3, v1

    .line 28
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v1, v6, :cond_1

    .line 30
    sget-object v6, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, LHamster/Base/Font;->stringWidth(Ljava/lang/String;)I

    move-result v6

    if-gt v6, p4, :cond_3

    .line 32
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    mul-int v7, v2, p5

    add-int/2addr v7, p3

    invoke-virtual {p0, v6, p2, v7, v8}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_2

    .line 21
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    .end local v1    # "j":I
    .end local v3    # "old_j":I
    :cond_4
    mul-int v6, v2, p5

    add-int/2addr v6, p3

    invoke-virtual {p0, v5, p2, v6, v8}, LHamster/Base/Graphics;->drawString(Ljava/lang/String;III)V

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
