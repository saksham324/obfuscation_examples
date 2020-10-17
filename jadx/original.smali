.class public final Lcom/evernote/android/job/JobRescheduleService;
.super Landroidx/core/app/n;
.source "JobRescheduleService.java"


# static fields
.field private static final c:Lcom/evernote/android/job/a/e;

.field private static d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 40
    new-instance v0, Lcom/evernote/android/job/a/e;

    const-string v1, "JobRescheduleService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evernote/android/job/a/e;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/evernote/android/job/JobRescheduleService;->c:Lcom/evernote/android/job/a/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroidx/core/app/n;-><init>()V

    return-void
.end method

.method private static a(Lcom/evernote/android/job/k;Ljava/util/Collection;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evernote/android/job/k;",
            "Ljava/util/Collection<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;)I"
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/android/job/JobRequest;

    .line 106
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->w()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_28

    .line 107
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->c()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/evernote/android/job/k;->b(I)Lcom/evernote/android/job/Job;

    move-result-object v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_35

    :cond_26
    const/4 v4, 0x0

    goto :goto_35

    .line 110
    :cond_28
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->t()Lcom/evernote/android/job/JobApi;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/evernote/android/job/k;->a(Lcom/evernote/android/job/JobApi;)Lcom/evernote/android/job/l;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/evernote/android/job/l;->d(Lcom/evernote/android/job/JobRequest;)Z

    move-result v4

    xor-int/2addr v4, v5

    :goto_35
    if-eqz v4, :cond_7

    .line 116
    :try_start_37
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->B()Lcom/evernote/android/job/p;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lcom/evernote/android/job/p;->a()Lcom/evernote/android/job/JobRequest;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest;->A()I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_43

    goto :goto_4c

    :catch_43
    move-exception v3

    if-nez v2, :cond_4c

    .line 123
    sget-object v2, Lcom/evernote/android/job/JobRescheduleService;->c:Lcom/evernote/android/job/a/e;

    invoke-virtual {v2, v3}, Lcom/evernote/android/job/a/e;->a(Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4f
    return v1
.end method

.method static a(Landroid/content/Context;)V
    .registers 4

    .line 44
    :try_start_0
    const-class v0, Lcom/evernote/android/job/JobRescheduleService;

    const v1, 0x7ffff1c0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/evernote/android/job/JobRescheduleService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 45
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object p0, Lcom/evernote/android/job/JobRescheduleService;->d:Ljava/util/concurrent/CountDownLatch;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 57
    sget-object v0, Lcom/evernote/android/job/JobRescheduleService;->c:Lcom/evernote/android/job/a/e;

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/a/e;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .registers 8

    .line 73
    :try_start_0
    sget-object p1, Lcom/evernote/android/job/JobRescheduleService;->c:Lcom/evernote/android/job/a/e;

    const-string v0, "Reschedule service started"

    invoke-virtual {p1, v0}, Lcom/evernote/android/job/a/e;->b(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/evernote/android/job/e;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_4c

    .line 78
    :try_start_e
    invoke-static {p0}, Lcom/evernote/android/job/k;->a(Landroid/content/Context;)Lcom/evernote/android/job/k;

    move-result-object p1
    :try_end_12
    .catch Lcom/evernote/android/job/JobManagerCreateException; {:try_start_e .. :try_end_12} :catch_42
    .catchall {:try_start_e .. :try_end_12} :catchall_4c

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    :try_start_14
    invoke-virtual {p1, v0, v1}, Lcom/evernote/android/job/k;->a(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    .line 85
    invoke-static {p1, v0}, Lcom/evernote/android/job/JobRescheduleService;->a(Lcom/evernote/android/job/k;Ljava/util/Collection;)I

    move-result p1

    .line 87
    sget-object v2, Lcom/evernote/android/job/JobRescheduleService;->c:Lcom/evernote/android/job/a/e;

    const-string v3, "Reschedule %d jobs of %d jobs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/evernote/android/job/a/e;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_4c

    .line 89
    sget-object p1, Lcom/evernote/android/job/JobRescheduleService;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_41

    .line 91
    sget-object p1, Lcom/evernote/android/job/JobRescheduleService;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_41
    return-void

    .line 89
    :catch_42
    sget-object p1, Lcom/evernote/android/job/JobRescheduleService;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_4b

    .line 91
    sget-object p1, Lcom/evernote/android/job/JobRescheduleService;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4b
    return-void

    :catchall_4c
    move-exception p1

    .line 89
    sget-object v0, Lcom/evernote/android/job/JobRescheduleService;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_56

    .line 91
    sget-object v0, Lcom/evernote/android/job/JobRescheduleService;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_56
    throw p1
.end method
