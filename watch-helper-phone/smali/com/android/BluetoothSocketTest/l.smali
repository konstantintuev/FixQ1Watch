.class Lcom/android/BluetoothSocketTest/l;
.super Landroid/support/v4/view/ae;


# instance fields
.field final synthetic hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

.field private ho:Landroid/app/FragmentManager;

.field private hp:Landroid/app/FragmentTransaction;


# direct methods
.method public constructor <init>(Lcom/android/BluetoothSocketTest/AppSelectActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/l;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ae;-><init>()V

    invoke-virtual {p1}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/l;->ho:Landroid/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/l;->hp:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/l;->ho:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/l;->hp:Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/l;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->f(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/l;->hp:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-object v0
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/l;->hp:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/l;->ho:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/l;->hp:Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/l;->hp:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Landroid/app/Fragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/l;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->f(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public s(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/l;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->i(Lcom/android/BluetoothSocketTest/AppSelectActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
