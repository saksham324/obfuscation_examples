.class public LHamster/Base/CanvasInput;
.super Landroid/app/Dialog;
.source "CanvasInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private definebutton:Landroid/widget/Button;

.field private edittext:Landroid/widget/EditText;

.field private inputbase:LHamster/Base/InputBase;

.field private returnbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method static synthetic md350e240(LHamster/Base/CanvasInput;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LHamster/Base/CanvasInput;->edittext:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public InitState(Ljava/lang/String;IILjava/lang/String;LHamster/Base/InputBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "inputtype"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "base"    # LHamster/Base/InputBase;
    .param p6, "Left"    # Ljava/lang/String;
    .param p7, "Right"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 76
    invoke-virtual {p0}, LHamster/Base/CanvasInput;->show()V

    .line 79
    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p0, p1}, LHamster/Base/CanvasInput;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    iget-object v0, p0, LHamster/Base/CanvasInput;->edittext:Landroid/widget/EditText;

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, LHamster/Base/CanvasInput;->edittext:Landroid/widget/EditText;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 88
    iget-object v0, p0, LHamster/Base/CanvasInput;->edittext:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 89
    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    .line 90
    iget-object v0, p0, LHamster/Base/CanvasInput;->edittext:Landroid/widget/EditText;

    const/16 v1, 0x118

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setWidth(I)V

    .line 93
    :cond_0
    iget-object v0, p0, LHamster/Base/CanvasInput;->edittext:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 97
    iput-object p5, p0, LHamster/Base/CanvasInput;->inputbase:LHamster/Base/InputBase;

    .line 105
    if-eqz p6, :cond_2

    .line 106
    iget-object v0, p0, LHamster/Base/CanvasInput;->definebutton:Landroid/widget/Button;

    invoke-virtual {v0, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_1
    if-eqz p7, :cond_3

    .line 111
    iget-object v0, p0, LHamster/Base/CanvasInput;->returnbutton:Landroid/widget/Button;

    invoke-virtual {v0, p7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_2
    iget-object v0, p0, LHamster/Base/CanvasInput;->definebutton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, LHamster/Base/CanvasInput;->returnbutton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, LHamster/Base/CanvasInput;->edittext:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 121
    return-void

    .line 82
    :cond_1
    const-string v0, "\u8f93\u5165\u5c0f\u52a9\u624b:"

    invoke-virtual {p0, v0}, LHamster/Base/CanvasInput;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, LHamster/Base/CanvasInput;->definebutton:Landroid/widget/Button;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 113
    :cond_3
    iget-object v0, p0, LHamster/Base/CanvasInput;->returnbutton:Landroid/widget/Button;

    const-string v1, "\u8fd4\u56de"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, LHamster/Base/CanvasInput;->definebutton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 136
    iget-object v0, p0, LHamster/Base/CanvasInput;->inputbase:LHamster/Base/InputBase;

    invoke-interface {v0}, LHamster/Base/InputBase;->InputDefine()V

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p0}, LHamster/Base/CanvasInput;->dismiss()V

    .line 145
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, LHamster/Base/CanvasInput;->returnbutton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 141
    iget-object v0, p0, LHamster/Base/CanvasInput;->inputbase:LHamster/Base/InputBase;

    invoke-interface {v0}, LHamster/Base/InputBase;->InputReturn()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x3

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v1}, LHamster/Base/CanvasInput;->requestWindowFeature(I)Z

    .line 46
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, LHamster/Base/CanvasInput;->setContentView(I)V

    .line 48
    const v0, 0x108003e

    invoke-virtual {p0, v1, v0}, LHamster/Base/CanvasInput;->setFeatureDrawableResource(II)V

    .line 50
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, LHamster/Base/CanvasInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, LHamster/Base/CanvasInput;->edittext:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, LHamster/Base/CanvasInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LHamster/Base/CanvasInput;->definebutton:Landroid/widget/Button;

    .line 52
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, LHamster/Base/CanvasInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LHamster/Base/CanvasInput;->returnbutton:Landroid/widget/Button;

    .line 53
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 59
    const-string v1, "CanvasInput"

    const-string v2, "---------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 61
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, LHamster/Base/CanvasInput$1;

    invoke-direct {v1, p0}, LHamster/Base/CanvasInput$1;-><init>(LHamster/Base/CanvasInput;)V

    .line 67
    const-wide/16 v2, 0x64

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 68
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "CanvasInput"

    const-string v1, "+++++++++++++++++++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method
