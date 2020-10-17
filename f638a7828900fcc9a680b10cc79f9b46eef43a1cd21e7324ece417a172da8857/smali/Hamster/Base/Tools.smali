.class public LHamster/Base/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static m608dc6ec(Ljava/lang/String;Ljava/util/Vector;ILjava/lang/String;)Ljava/util/Vector;
    .locals 7
    .param p0, "tempp"    # Ljava/lang/String;
    .param p1, "vector"    # Ljava/util/Vector;
    .param p2, "temp_width"    # I
    .param p3, "mark"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 70
    return-object p1

    .line 48
    :cond_0
    move v3, v0

    .line 49
    .local v3, "start":I
    invoke-virtual {p0, p3, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 50
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "temp":Ljava/lang/String;
    sget-object v5, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    invoke-virtual {v5, v4}, LHamster/Base/Font;->stringWidth(Ljava/lang/String;)I

    move-result v5

    if-le v5, p2, :cond_4

    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, "old_j":I
    const/4 v1, 0x4

    .local v1, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v1, v5, :cond_2

    .line 47
    .end local v1    # "j":I
    .end local v2    # "old_j":I
    :cond_1
    :goto_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 54
    .restart local v1    # "j":I
    .restart local v2    # "old_j":I
    :cond_2
    sget-object v5, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, LHamster/Base/Font;->stringWidth(Ljava/lang/String;)I

    move-result v5

    if-le v5, p2, :cond_3

    .line 55
    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 56
    move v2, v1

    .line 57
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 59
    sget-object v5, LHamster/Base/Graphics;->font:LHamster/Base/Font;

    .line 60
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 59
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, LHamster/Base/Font;->stringWidth(Ljava/lang/String;)I

    move-result v5

    .line 60
    if-gt v5, p2, :cond_3

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 53
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    .end local v1    # "j":I
    .end local v2    # "old_j":I
    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const-string v5, ">"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    .local v2, "start":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "</"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, "end":Ljava/lang/String;
    const-string v1, ""

    .line 17
    .local v1, "r":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 17
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 21
    :goto_0
    return-object v1

    .line 19
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static mab885b58(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "temp"    # Ljava/lang/String;
    .param p1, "start_name"    # Ljava/lang/String;
    .param p2, "End_name"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 41
    :goto_1
    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 34
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
