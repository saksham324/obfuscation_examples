.class public LHamsterSuper/Client/Deamon/Hamster;
.super Landroid/app/Activity;
.source "Hamster.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# static fields
.field public static Play_winlost:Landroid/media/MediaPlayer; = null

.field public static base:LHamster/Base/SuperBase; = null

.field public static canvasinput:LHamster/Base/CanvasInput; = null

.field public static demo:LHamsterSuper/Client/Deamon/Hamster; = null

.field public static font:LHamster/Base/Font; = null

.field static frame:LHamsterSuper/Client/Deamon/Frame; = null

.field public static g:LHamster/Base/Graphics; = null

.field public static handler:Landroid/os/Handler; = null

.field public static help:LHamsterSuper/Client/Deamon/Help; = null

.field public static http:LHamster/Base/Http; = null

.field static okey:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LHamster/Base/SuperBase;",
            ">;"
        }
    .end annotation
.end field

.field public static online:Ljava/lang/Thread; = null

.field public static final play_free:I = 0x4

.field public static final play_ini:I = 0x1

.field public static final play_paint:I = 0x3

.field public static play_state:I

.field public static romove:Ljava/lang/Thread;

.field public static viewbase:LHamster/Base/ViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->online:Ljava/lang/Thread;

    .line 34
    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    .line 43
    const/4 v0, 0x0

    sput v0, LHamsterSuper/Client/Deamon/Hamster;->play_state:I

    .line 49
    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->canvasinput:LHamster/Base/CanvasInput;

    .line 50
    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->http:LHamster/Base/Http;

    .line 51
    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    .line 52
    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->font:LHamster/Base/Font;

    .line 53
    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->help:LHamsterSuper/Client/Deamon/Help;

    .line 57
    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    .line 297
    new-instance v0, LHamsterSuper/Client/Deamon/Hamster$1;

    invoke-direct {v0}, LHamsterSuper/Client/Deamon/Hamster$1;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public PlayerMusic(I)V
    .locals 4
    .param p1, "location"    # I

    .prologue
    const/4 v3, 0x0

    .line 62
    :try_start_0
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 65
    const/4 v1, 0x0

    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    .line 67
    :cond_0
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    .line 68
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 71
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    sput-object v3, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public RegState(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const-string v3, "Hamster"

    .line 219
    const/4 v1, 0x4

    sput v1, LHamsterSuper/Client/Deamon/Hamster;->play_state:I

    .line 221
    const-string v1, "Hamster"

    const-string v1, "RegState:start"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->okey:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LHamsterSuper/Client/Deamon/Hamster;
    check-cast p0, LHamster/Base/SuperBase;

    sput-object p0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    .line 224
    const-string v1, "Hamster"

    const-string v1, "RegState:init"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_0
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->init()I

    move-result v1

    sput v1, LHamsterSuper/Client/Deamon/Hamster;->play_state:I

    .line 227
    sget v1, LHamsterSuper/Client/Deamon/Hamster;->play_state:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 228
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v1}, LHamster/Base/SuperBase;->repaint()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    const-string v1, "test"

    const-string v2, "RegState:end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 236
    new-instance v1, Ljava/lang/Thread;

    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    .line 237
    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 242
    :cond_1
    return-void

    .line 230
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Hamster"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegState e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Resource()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->okey:Ljava/util/Map;

    .line 135
    new-instance v0, LHamster/Base/ViewBase;

    invoke-direct {v0, p0}, LHamster/Base/ViewBase;-><init>(Landroid/content/Context;)V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->viewbase:LHamster/Base/ViewBase;

    .line 137
    new-instance v0, LHamster/Base/Http;

    invoke-direct {v0}, LHamster/Base/Http;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->http:LHamster/Base/Http;

    .line 139
    new-instance v0, LHamster/Base/Graphics;

    invoke-direct {v0}, LHamster/Base/Graphics;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->g:LHamster/Base/Graphics;

    .line 141
    const/16 v0, 0x14

    invoke-static {v1, v1, v0}, LHamster/Base/Font;->mb44238a6(III)LHamster/Base/Font;

    move-result-object v0

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->font:LHamster/Base/Font;

    .line 143
    new-instance v0, LHamster/Base/CanvasInput;

    sget-object v1, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-direct {v0, v1}, LHamster/Base/CanvasInput;-><init>(Landroid/content/Context;)V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->canvasinput:LHamster/Base/CanvasInput;

    .line 144
    new-instance v0, LHamsterSuper/Client/Deamon/Help;

    invoke-direct {v0, p0}, LHamsterSuper/Client/Deamon/Help;-><init>(Landroid/content/Context;)V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->help:LHamsterSuper/Client/Deamon/Help;

    .line 148
    new-instance v0, LHamsterSuper/Client/Deamon/Frame;

    invoke-direct {v0}, LHamsterSuper/Client/Deamon/Frame;-><init>()V

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->frame:LHamsterSuper/Client/Deamon/Frame;

    .line 149
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->okey:Ljava/util/Map;

    const-string v1, "Frame"

    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->frame:LHamsterSuper/Client/Deamon/Frame;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public StopMusic()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 85
    const/4 v0, 0x0

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->Play_winlost:Landroid/media/MediaPlayer;

    .line 87
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 201
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0, p1}, LHamster/Base/SuperBase;->OnClick(Landroid/view/View;)V

    .line 202
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 94
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 95
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Hamster;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Hamster;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v0, "Hamster"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LHamsterSuper/Client/Deamon/Hamster;->requestWindowFeature(I)Z

    .line 118
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Hamster;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 120
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Hamster;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 122
    sput-object p0, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    .line 123
    invoke-virtual {p0}, LHamsterSuper/Client/Deamon/Hamster;->Resource()V

    .line 124
    const-string v0, "Frame"

    invoke-virtual {p0, v0}, LHamsterSuper/Client/Deamon/Hamster;->RegState(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 159
    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 160
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    .line 161
    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 162
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 164
    :cond_0
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0, p1, p2}, LHamster/Base/SuperBase;->onKeyDown(ILandroid/view/KeyEvent;)V

    .line 165
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v0, p1}, LHamster/Base/SuperBase;->onTouch(Landroid/view/MotionEvent;)V

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 253
    .local v0, "CASE_Thread":Ljava/lang/Thread;
    :goto_0
    :try_start_0
    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->online:Ljava/lang/Thread;

    if-eq v0, v2, :cond_1

    .line 262
    :cond_0
    :goto_1
    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    if-eq v0, v2, :cond_2

    .line 286
    :goto_2
    return-void

    .line 254
    :cond_1
    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->http:LHamster/Base/Http;

    invoke-virtual {v2}, LHamster/Base/Http;->Send_Queue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Hamster"

    const-string v3, "505"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 264
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget v2, LHamsterSuper/Client/Deamon/Hamster;->play_state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 266
    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    if-eqz v2, :cond_0

    .line 267
    sget-object v2, LHamsterSuper/Client/Deamon/Hamster;->base:LHamster/Base/SuperBase;

    invoke-interface {v2}, LHamster/Base/SuperBase;->run()V

    goto :goto_1

    .line 269
    :cond_3
    sget v2, LHamsterSuper/Client/Deamon/Hamster;->play_state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 272
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public superfinish()V
    .locals 1

    .prologue
    .line 289
    sget-object v0, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, LHamsterSuper/Client/Deamon/Frame;->hit:LHamsterSuper/Client/Deamon/Hit;

    invoke-virtual {v0}, LHamsterSuper/Client/Deamon/Hit;->save()V

    .line 291
    :cond_0
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v0}, LHamsterSuper/Client/Deamon/Hamster;->StopMusic()V

    .line 292
    const/4 v0, 0x0

    sput-object v0, LHamsterSuper/Client/Deamon/Hamster;->romove:Ljava/lang/Thread;

    .line 293
    sget-object v0, LHamsterSuper/Client/Deamon/Hamster;->demo:LHamsterSuper/Client/Deamon/Hamster;

    invoke-virtual {v0}, LHamsterSuper/Client/Deamon/Hamster;->finish()V

    .line 294
    return-void
.end method
