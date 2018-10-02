.class Landroid/support/v4/widget/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic eX:Landroid/support/v4/widget/aa;

.field final synthetic eY:Landroid/support/v4/widget/v;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/v;Landroid/support/v4/widget/aa;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/x;->eY:Landroid/support/v4/widget/v;

    iput-object p2, p0, Landroid/support/v4/widget/x;->eX:Landroid/support/v4/widget/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/widget/x;->eX:Landroid/support/v4/widget/aa;

    invoke-virtual {v0}, Landroid/support/v4/widget/aa;->aq()V

    iget-object v0, p0, Landroid/support/v4/widget/x;->eX:Landroid/support/v4/widget/aa;

    invoke-virtual {v0}, Landroid/support/v4/widget/aa;->aj()V

    iget-object v0, p0, Landroid/support/v4/widget/x;->eX:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/x;->eX:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->an()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/aa;->g(F)V

    iget-object v0, p0, Landroid/support/v4/widget/x;->eY:Landroid/support/v4/widget/v;

    iget-boolean v0, v0, Landroid/support/v4/widget/v;->eV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/x;->eY:Landroid/support/v4/widget/v;

    iput-boolean v2, v0, Landroid/support/v4/widget/v;->eV:Z

    const-wide/16 v0, 0x535

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Landroid/support/v4/widget/x;->eX:Landroid/support/v4/widget/aa;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/aa;->g(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/x;->eY:Landroid/support/v4/widget/v;

    iget-object v1, p0, Landroid/support/v4/widget/x;->eY:Landroid/support/v4/widget/v;

    invoke-static {v1}, Landroid/support/v4/widget/v;->a(Landroid/support/v4/widget/v;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/widget/v;->a(Landroid/support/v4/widget/v;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/x;->eY:Landroid/support/v4/widget/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/widget/v;->a(Landroid/support/v4/widget/v;F)F

    return-void
.end method
