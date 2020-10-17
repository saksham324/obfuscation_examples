.class public LDaemon/Base/Rms;
.super Ljava/lang/Object;
.source "Rms.java"


# static fields
.field public static final PREF:Ljava/lang/String; = "MY_PREF_"

.field public static sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mecae1311(Landroid/content/Context;I[Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "act"    # Landroid/content/Context;
    .param p1, "rmsnum"    # I
    .param p2, "key"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MY_PREF_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, LDaemon/Base/Rms;->sp:Landroid/content/SharedPreferences;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    div-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_0

    .line 31
    return-object v1

    .line 26
    :cond_0
    sget-object v3, LDaemon/Base/Rms;->sp:Landroid/content/SharedPreferences;

    mul-int/lit8 v4, v0, 0x2

    aget-object v4, p2, v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "temp":Ljava/lang/String;
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aput-object v2, p2, v3

    .line 28
    mul-int/lit8 v3, v0, 0x2

    aget-object v3, p2, v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v4, p2, v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static m43781db5(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 4
    .param p0, "act"    # Landroid/content/Context;
    .param p1, "rmsnum"    # I
    .param p2, "key"    # [Ljava/lang/String;

    .prologue
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MY_PREF_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, LDaemon/Base/Rms;->sp:Landroid/content/SharedPreferences;

    .line 15
    sget-object v2, LDaemon/Base/Rms;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 19
    return-void

    .line 17
    :cond_0
    mul-int/lit8 v2, v1, 0x2

    aget-object v2, p2, v2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v3, p2, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
