.class public Landroid/support/v4/widget/ac;
.super Ljava/lang/Object;


# instance fields
.field fq:Ljava/lang/Object;

.field fr:Landroid/support/v4/widget/ad;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/ag;

    invoke-direct {v0}, Landroid/support/v4/widget/ag;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/ad;->b(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/ac;->fq:Ljava/lang/Object;

    return-void

    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/af;

    invoke-direct {v0}, Landroid/support/v4/widget/af;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/ae;

    invoke-direct {v0}, Landroid/support/v4/widget/ae;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/widget/ac;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ac;
    .locals 1

    new-instance v0, Landroid/support/v4/widget/ac;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/ac;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->fq:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ad;->O(Ljava/lang/Object;)V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->fq:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ad;->N(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCurrX()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->fq:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ad;->L(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->fq:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ad;->M(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalX()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->fq:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ad;->P(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFinalY()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->fq:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/ad;->Q(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public startScroll(IIIII)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/widget/ac;->fr:Landroid/support/v4/widget/ad;

    iget-object v1, p0, Landroid/support/v4/widget/ac;->fq:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/ad;->a(Ljava/lang/Object;IIIII)V

    return-void
.end method
