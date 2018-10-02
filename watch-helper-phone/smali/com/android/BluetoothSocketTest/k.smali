.class Lcom/android/BluetoothSocketTest/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/AppSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const v4, 0x7f0c0016

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->a(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->b(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->b(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->c(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->a(Lcom/android/BluetoothSocketTest/AppSelectActivity;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    new-instance v0, Lcom/android/BluetoothSocketTest/bb;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v2}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->d(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/BluetoothSocketTest/bb;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/android/BluetoothSocketTest/bp;

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->e(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/BluetoothSocketTest/bp;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v2}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->f(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v2}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->g(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->f(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->g(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->g(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->c(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    new-instance v0, Lcom/android/BluetoothSocketTest/l;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-direct {v0, v1}, Lcom/android/BluetoothSocketTest/l;-><init>(Lcom/android/BluetoothSocketTest/AppSelectActivity;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->h(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ae;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/k;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->h(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->z(I)V

    goto/16 :goto_0
.end method
