.class public Landroid/support/v4/app/i;
.super Ljava/lang/Object;


# instance fields
.field final synthetic e:Landroid/support/v4/app/d;

.field public nonExistentView:Landroid/view/View;

.field public o:Landroid/support/v4/b/a;

.field public p:Ljava/util/ArrayList;

.field public q:Landroid/support/v4/app/ah;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/d;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/app/i;->e:Landroid/support/v4/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/b/a;

    invoke-direct {v0}, Landroid/support/v4/b/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->o:Landroid/support/v4/b/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->p:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v4/app/ah;

    invoke-direct {v0}, Landroid/support/v4/app/ah;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->q:Landroid/support/v4/app/ah;

    return-void
.end method
