.class Landroid/support/v4/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic e:Landroid/support/v4/app/d;

.field final synthetic f:Landroid/view/View;

.field final synthetic h:Landroid/support/v4/app/i;

.field final synthetic j:I

.field final synthetic k:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/support/v4/app/d;Landroid/view/View;Landroid/support/v4/app/i;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/g;->e:Landroid/support/v4/app/d;

    iput-object p2, p0, Landroid/support/v4/app/g;->f:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/i;

    iput p4, p0, Landroid/support/v4/app/g;->j:I

    iput-object p5, p0, Landroid/support/v4/app/g;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/g;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->e:Landroid/support/v4/app/d;

    iget-object v1, p0, Landroid/support/v4/app/g;->h:Landroid/support/v4/app/i;

    iget v2, p0, Landroid/support/v4/app/g;->j:I

    iget-object v3, p0, Landroid/support/v4/app/g;->k:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/d;Landroid/support/v4/app/i;ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
