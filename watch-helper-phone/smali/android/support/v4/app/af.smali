.class final Landroid/support/v4/app/af;
.super Landroid/transition/Transition$EpicenterCallback;


# instance fields
.field private as:Landroid/graphics/Rect;

.field final synthetic at:Landroid/support/v4/app/ah;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ah;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/af;->at:Landroid/support/v4/app/ah;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/af;->as:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/af;->at:Landroid/support/v4/app/ah;

    iget-object v0, v0, Landroid/support/v4/app/ah;->au:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/af;->at:Landroid/support/v4/app/ah;

    iget-object v0, v0, Landroid/support/v4/app/ah;->au:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/ac;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/af;->as:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/af;->as:Landroid/graphics/Rect;

    return-object v0
.end method
