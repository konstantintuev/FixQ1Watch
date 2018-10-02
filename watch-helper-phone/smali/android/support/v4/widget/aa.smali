.class Landroid/support/v4/widget/aa;
.super Ljava/lang/Object;


# instance fields
.field private eQ:F

.field private final eW:Landroid/graphics/drawable/Drawable$Callback;

.field private final eZ:Landroid/graphics/RectF;

.field private final fa:Landroid/graphics/Paint;

.field private fb:F

.field private fc:F

.field private fd:F

.field private fe:I

.field private ff:F

.field private fg:F

.field private fh:F

.field private fi:Z

.field private fj:Landroid/graphics/Path;

.field private fk:F

.field private fl:D

.field private fm:I

.field private fn:I

.field private final fo:Landroid/graphics/Paint;

.field private fp:I

.field private mAlpha:I

.field private mColors:[I

.field private final mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/aa;->eZ:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/aa;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/aa;->fa:Landroid/graphics/Paint;

    iput v1, p0, Landroid/support/v4/widget/aa;->fb:F

    iput v1, p0, Landroid/support/v4/widget/aa;->fc:F

    iput v1, p0, Landroid/support/v4/widget/aa;->eQ:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Landroid/support/v4/widget/aa;->mStrokeWidth:F

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Landroid/support/v4/widget/aa;->fd:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/aa;->fo:Landroid/graphics/Paint;

    iput-object p1, p0, Landroid/support/v4/widget/aa;->eW:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v0, p0, Landroid/support/v4/widget/aa;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/support/v4/widget/aa;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/support/v4/widget/aa;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/aa;->fa:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/aa;->fa:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Landroid/support/v4/widget/aa;->fi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    iget-object v0, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    :goto_0
    iget v0, p0, Landroid/support/v4/widget/aa;->fd:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/aa;->fk:F

    mul-float/2addr v0, v1

    iget-wide v2, p0, Landroid/support/v4/widget/aa;->fl:D

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iget-wide v2, p0, Landroid/support/v4/widget/aa;->fl:D

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/aa;->fm:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/aa;->fk:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    iget v4, p0, Landroid/support/v4/widget/aa;->fm:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/widget/aa;->fk:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Landroid/support/v4/widget/aa;->fn:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/widget/aa;->fk:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Path;->offset(FF)V

    iget-object v0, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/support/v4/widget/aa;->fa:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v4/widget/aa;->mColors:[I

    iget v2, p0, Landroid/support/v4/widget/aa;->fe:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v0, p2, p3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/v4/widget/aa;->fa:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/aa;->fj:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_0
.end method

.method private invalidateSelf()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/aa;->eW:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public R(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/aa;->fe:I

    return-void
.end method

.method public a(D)V
    .locals 1

    iput-wide p1, p0, Landroid/support/v4/widget/aa;->fl:D

    return-void
.end method

.method public aj()V
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/aa;->fe:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/v4/widget/aa;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/widget/aa;->fe:I

    return-void
.end method

.method public ak()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aa;->fb:F

    return v0
.end method

.method public al()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aa;->ff:F

    return v0
.end method

.method public am()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aa;->fg:F

    return v0
.end method

.method public an()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aa;->fc:F

    return v0
.end method

.method public ao()D
    .locals 2

    iget-wide v0, p0, Landroid/support/v4/widget/aa;->fl:D

    return-wide v0
.end method

.method public ap()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aa;->fh:F

    return v0
.end method

.method public aq()V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aa;->fb:F

    iput v0, p0, Landroid/support/v4/widget/aa;->ff:F

    iget v0, p0, Landroid/support/v4/widget/aa;->fc:F

    iput v0, p0, Landroid/support/v4/widget/aa;->fg:F

    iget v0, p0, Landroid/support/v4/widget/aa;->eQ:F

    iput v0, p0, Landroid/support/v4/widget/aa;->fh:F

    return-void
.end method

.method public ar()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/aa;->ff:F

    iput v0, p0, Landroid/support/v4/widget/aa;->fg:F

    iput v0, p0, Landroid/support/v4/widget/aa;->fh:F

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/aa;->g(F)V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/aa;->h(F)V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/aa;->setRotation(F)V

    return-void
.end method

.method public c(FF)V
    .locals 1

    float-to-int v0, p1

    iput v0, p0, Landroid/support/v4/widget/aa;->fm:I

    float-to-int v0, p2

    iput v0, p0, Landroid/support/v4/widget/aa;->fn:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    const/high16 v4, 0x43b40000    # 360.0f

    iget-object v1, p0, Landroid/support/v4/widget/aa;->eZ:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v4/widget/aa;->fd:F

    iget v2, p0, Landroid/support/v4/widget/aa;->fd:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Landroid/support/v4/widget/aa;->fb:F

    iget v2, p0, Landroid/support/v4/widget/aa;->eQ:F

    add-float/2addr v0, v2

    mul-float v2, v0, v4

    iget v0, p0, Landroid/support/v4/widget/aa;->fc:F

    iget v3, p0, Landroid/support/v4/widget/aa;->eQ:F

    add-float/2addr v0, v3

    mul-float/2addr v0, v4

    sub-float v3, v0, v2

    iget-object v0, p0, Landroid/support/v4/widget/aa;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/support/v4/widget/aa;->mColors:[I

    iget v5, p0, Landroid/support/v4/widget/aa;->fe:I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v4/widget/aa;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-direct {p0, p1, v2, v3, p2}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    iget v0, p0, Landroid/support/v4/widget/aa;->mAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/aa;->fo:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/aa;->fp:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v4/widget/aa;->fo:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/aa;->mAlpha:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v4/widget/aa;->fo:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public e(F)V
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aa;->fk:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v4/widget/aa;->fk:F

    invoke-direct {p0}, Landroid/support/v4/widget/aa;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public e(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-wide v2, p0, Landroid/support/v4/widget/aa;->fl:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/aa;->mStrokeWidth:F

    div-float/2addr v0, v6

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    iput v0, p0, Landroid/support/v4/widget/aa;->fd:F

    return-void

    :cond_1
    div-float/2addr v0, v6

    float-to-double v0, v0

    iget-wide v2, p0, Landroid/support/v4/widget/aa;->fl:D

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/aa;->fb:F

    invoke-direct {p0}, Landroid/support/v4/widget/aa;->invalidateSelf()V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/widget/aa;->fi:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/widget/aa;->fi:Z

    invoke-direct {p0}, Landroid/support/v4/widget/aa;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aa;->mAlpha:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aa;->mStrokeWidth:F

    return v0
.end method

.method public h(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/aa;->fc:F

    invoke-direct {p0}, Landroid/support/v4/widget/aa;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/aa;->mAlpha:I

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/aa;->fp:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/aa;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Landroid/support/v4/widget/aa;->invalidateSelf()V

    return-void
.end method

.method public setColors([I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/widget/aa;->mColors:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/aa;->R(I)V

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Landroid/support/v4/widget/aa;->eQ:F

    invoke-direct {p0}, Landroid/support/v4/widget/aa;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iput p1, p0, Landroid/support/v4/widget/aa;->mStrokeWidth:F

    iget-object v0, p0, Landroid/support/v4/widget/aa;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Landroid/support/v4/widget/aa;->invalidateSelf()V

    return-void
.end method
