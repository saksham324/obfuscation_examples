.class public LHamsterSuper/Client/Deamon/Help;
.super Landroid/app/Dialog;
.source "Help.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private definebutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public InitState(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Help;->show()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, LHamsterSuper/Client/Deamon/Help;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    iget-object v0, p0, LHamsterSuper/Client/Deamon/Help;->definebutton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void

    .line 49
    :cond_0
    const-string v0, "\u5e2e\u52a9:"

    invoke-virtual {p0, v0}, LHamsterSuper/Client/Deamon/Help;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Help;->dismiss()V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x3

    .line 29
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0, v1}, LHamsterSuper/Client/Deamon/Help;->requestWindowFeature(I)Z

    .line 34
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, LHamsterSuper/Client/Deamon/Help;->setContentView(I)V

    .line 36
    const v0, 0x108003e

    invoke-virtual {p0, v1, v0}, LHamsterSuper/Client/Deamon/Help;->setFeatureDrawableResource(II)V

    .line 38
    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, LHamsterSuper/Client/Deamon/Help;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LHamsterSuper/Client/Deamon/Help;->definebutton:Landroid/widget/Button;

    .line 40
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "CanvasInput"

    const-string v1, "+++++++++++++++++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method
