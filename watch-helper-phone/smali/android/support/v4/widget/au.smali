.class Landroid/support/v4/widget/au;
.super Landroid/view/animation/Animation;


# instance fields
.field final synthetic gt:Landroid/support/v4/widget/SwipeRefreshLayout;

.field final synthetic gu:I

.field final synthetic gv:I


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/au;->gt:Landroid/support/v4/widget/SwipeRefreshLayout;

    iput p2, p0, Landroid/support/v4/widget/au;->gu:I

    iput p3, p0, Landroid/support/v4/widget/au;->gv:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/widget/au;->gt:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->b(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/v;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/widget/au;->gu:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/au;->gv:I

    iget v3, p0, Landroid/support/v4/widget/au;->gu:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/v;->setAlpha(I)V

    return-void
.end method
