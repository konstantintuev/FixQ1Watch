.class public Lcom/android/BluetoothSocketTest/AppSelectActivity;
.super Landroid/app/Activity;


# instance fields
.field private hc:Landroid/support/v4/view/ViewPager;

.field private hd:Landroid/support/v4/view/PagerTabStrip;

.field private he:Landroid/app/FragmentManager;

.field private hf:Landroid/app/FragmentTransaction;

.field private hg:Ljava/util/List;

.field private hh:Ljava/util/List;

.field private hi:Landroid/app/ProgressDialog;

.field private hj:Ljava/util/ArrayList;

.field private hk:Ljava/util/ArrayList;

.field private hl:Z

.field hm:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hh:Ljava/util/List;

    new-instance v0, Lcom/android/BluetoothSocketTest/k;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/k;-><init>(Lcom/android/BluetoothSocketTest/AppSelectActivity;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hm:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/AppSelectActivity;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hf:Landroid/app/FragmentTransaction;

    return-object p1
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/AppSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hj:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hl:Z

    return v0
.end method

.method static synthetic b(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hi:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/android/BluetoothSocketTest/AppSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hk:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic c(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->he:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hj:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hk:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hg:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/FragmentTransaction;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hf:Landroid/app/FragmentTransaction;

    return-object v0
.end method

.method static synthetic h(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hc:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic i(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hh:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f060003

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->setContentView(I)V

    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hc:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerTabStrip;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hd:Landroid/support/v4/view/PagerTabStrip;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hd:Landroid/support/v4/view/PagerTabStrip;

    const/4 v1, 0x2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTabStrip;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hd:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hd:Landroid/support/v4/view/PagerTabStrip;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->u(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hh:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hh:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hg:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->he:Landroid/app/FragmentManager;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hd:Landroid/support/v4/view/PagerTabStrip;

    new-instance v1, Lcom/android/BluetoothSocketTest/i;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/i;-><init>(Lcom/android/BluetoothSocketTest/AppSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerTabStrip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hi:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hi:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hi:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Lcom/android/BluetoothSocketTest/j;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/j;-><init>(Lcom/android/BluetoothSocketTest/AppSelectActivity;)V

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/j;->start()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const v0, 0x102002c

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hl:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hl:Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
