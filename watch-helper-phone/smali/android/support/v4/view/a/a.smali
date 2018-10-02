.class public Landroid/support/v4/view/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final dC:Landroid/support/v4/view/a/e;


# instance fields
.field private final dD:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/c;

    invoke-direct {v0}, Landroid/support/v4/view/a/c;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/a/b;

    invoke-direct {v0}, Landroid/support/v4/view/a/b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/a/h;

    invoke-direct {v0}, Landroid/support/v4/view/a/h;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/a/g;

    invoke-direct {v0}, Landroid/support/v4/view/a/g;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/a/f;

    invoke-direct {v0}, Landroid/support/v4/view/a/f;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    goto :goto_0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/view/a/d;

    invoke-direct {v0}, Landroid/support/v4/view/a/d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/view/a/i;

    invoke-direct {v0}, Landroid/support/v4/view/a/i;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    return-void
.end method

.method private static E(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "ACTION_UNKNOWN"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "ACTION_FOCUS"

    goto :goto_0

    :sswitch_1
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_0

    :sswitch_2
    const-string v0, "ACTION_SELECT"

    goto :goto_0

    :sswitch_3
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_0

    :sswitch_4
    const-string v0, "ACTION_CLICK"

    goto :goto_0

    :sswitch_5
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_0

    :sswitch_6
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_0

    :sswitch_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_0

    :sswitch_8
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    :sswitch_9
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    :sswitch_a
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_0

    :sswitch_b
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_0

    :sswitch_c
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_0

    :sswitch_d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_0

    :sswitch_e
    const-string v0, "ACTION_CUT"

    goto :goto_0

    :sswitch_f
    const-string v0, "ACTION_COPY"

    goto :goto_0

    :sswitch_10
    const-string v0, "ACTION_PASTE"

    goto :goto_0

    :sswitch_11
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method

.method public static a(Landroid/support/v4/view/a/a;)Landroid/support/v4/view/a/a;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/a;->l(Ljava/lang/Object;)Landroid/support/v4/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method static l(Ljava/lang/Object;)Landroid/support/v4/view/a/a;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Landroid/support/v4/view/a/a;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/a;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public R()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    return-object v0
.end method

.method public addAction(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->d(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Landroid/support/v4/view/a/a;

    iget-object v2, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getActions()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->n(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->o(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->p(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMovementGranularities()I
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->D(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->q(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->r(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->G(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->F(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->t(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->u(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->v(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->w(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->x(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->y(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->z(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->A(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->B(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->E(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/e;->C(Ljava/lang/Object;)V

    return-void
.end method

.method public setAccessibilityFocused(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->i(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->d(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->e(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->b(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->c(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFocused(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->d(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->e(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setMovementGranularities(I)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->b(Ljava/lang/Object;I)V

    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->f(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->e(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->f(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->g(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->f(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setVisibleToUser(Z)V
    .locals 2

    sget-object v0, Landroid/support/v4/view/a/a;->dC:Landroid/support/v4/view/a/e;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->dD:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/e;->h(Ljava/lang/Object;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/a;->getBoundsInParent(Landroid/graphics/Rect;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/a;->getBoundsInScreen(Landroid/graphics/Rect;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; packageName: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "; className: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "; text: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "; contentDescription: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "; viewId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; checkable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isCheckable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; checked: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; focusable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isFocusable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; focused: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isFocused()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; selected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isSelected()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; clickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isClickable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; longClickable: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isLongClickable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; enabled: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; password: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isPassword()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->isScrollable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->getActions()I

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int/2addr v2, v3

    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    invoke-static {v2}, Landroid/support/v4/view/a/a;->E(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
