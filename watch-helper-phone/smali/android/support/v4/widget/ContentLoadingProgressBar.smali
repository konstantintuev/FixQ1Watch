.class public Landroid/support/v4/widget/ContentLoadingProgressBar;
.super Landroid/widget/ProgressBar;


# instance fields
.field private dS:Z

.field private dT:Z

.field private final dU:Ljava/lang/Runnable;

.field private final dV:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    iput-boolean v2, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->dS:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->dT:Z

    iput-boolean v2, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    new-instance v0, Landroid/support/v4/widget/c;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/c;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->dU:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v4/widget/d;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/d;-><init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V

    iput-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->dV:Ljava/lang/Runnable;

    return-void
.end method

.method private W()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->dU:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->dV:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Landroid/support/v4/widget/ContentLoadingProgressBar;J)J
    .locals 1

    iput-wide p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J

    return-wide p1
.end method

.method static synthetic a(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/ContentLoadingProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->dS:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v4/widget/ContentLoadingProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar;->dT:Z

    return p1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->W()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->W()V

    return-void
.end method
