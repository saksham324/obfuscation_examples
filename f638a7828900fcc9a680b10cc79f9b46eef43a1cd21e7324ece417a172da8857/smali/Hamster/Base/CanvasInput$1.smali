.class LHamster/Base/CanvasInput$1;
.super Ljava/util/TimerTask;
.source "CanvasInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHamster/Base/CanvasInput;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LHamster/Base/CanvasInput;


# direct methods
.method constructor <init>(LHamster/Base/CanvasInput;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, LHamster/Base/CanvasInput$1;->this$0:LHamster/Base/CanvasInput;

    .line 61
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, LHamster/Base/CanvasInput$1;->this$0:LHamster/Base/CanvasInput;

    invoke-static {v1}, LHamster/Base/CanvasInput;->md350e240(LHamster/Base/CanvasInput;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 65
    .local v0, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 66
    return-void
.end method
