.class Landroid/support/v4/app/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ab:Landroid/support/v4/app/s;


# direct methods
.method constructor <init>(Landroid/support/v4/app/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/t;->ab:Landroid/support/v4/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/t;->ab:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->execPendingActions()Z

    return-void
.end method
