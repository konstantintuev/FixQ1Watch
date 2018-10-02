.class Landroid/support/v4/app/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic d:Landroid/support/v4/app/Fragment;

.field final synthetic e:Landroid/support/v4/app/d;

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Ljava/lang/Object;

.field final synthetic h:Landroid/support/v4/app/i;

.field final synthetic i:Landroid/support/v4/app/Fragment;

.field final synthetic val$isBack:Z

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v4/app/d;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/i;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/f;->e:Landroid/support/v4/app/d;

    iput-object p2, p0, Landroid/support/v4/app/f;->f:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/f;->g:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/f;->val$sharedElementTargets:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/f;->h:Landroid/support/v4/app/i;

    iput-boolean p6, p0, Landroid/support/v4/app/f;->val$isBack:Z

    iput-object p7, p0, Landroid/support/v4/app/f;->d:Landroid/support/v4/app/Fragment;

    iput-object p8, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/app/f;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/f;->g:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/f;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/ac;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/f;->e:Landroid/support/v4/app/d;

    iget-object v1, p0, Landroid/support/v4/app/f;->h:Landroid/support/v4/app/i;

    iget-boolean v2, p0, Landroid/support/v4/app/f;->val$isBack:Z

    iget-object v3, p0, Landroid/support/v4/app/f;->d:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/d;Landroid/support/v4/app/i;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/b/a;

    move-result-object v5

    iget-object v0, p0, Landroid/support/v4/app/f;->val$sharedElementTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/f;->h:Landroid/support/v4/app/i;

    iget-object v1, v1, Landroid/support/v4/app/i;->nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/f;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroid/support/v4/b/a;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/support/v4/app/f;->g:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/f;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/ac;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->e:Landroid/support/v4/app/d;

    iget-object v1, p0, Landroid/support/v4/app/f;->h:Landroid/support/v4/app/i;

    invoke-static {v0, v5, v1}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/d;Landroid/support/v4/b/a;Landroid/support/v4/app/i;)V

    iget-object v0, p0, Landroid/support/v4/app/f;->e:Landroid/support/v4/app/d;

    iget-object v1, p0, Landroid/support/v4/app/f;->h:Landroid/support/v4/app/i;

    iget-object v2, p0, Landroid/support/v4/app/f;->d:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/f;->i:Landroid/support/v4/app/Fragment;

    iget-boolean v4, p0, Landroid/support/v4/app/f;->val$isBack:Z

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/d;Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/b/a;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
