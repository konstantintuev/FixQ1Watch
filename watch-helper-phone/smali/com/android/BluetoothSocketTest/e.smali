.class Lcom/android/BluetoothSocketTest/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gU:Lcom/android/BluetoothSocketTest/d;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/d;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/e;->gU:Lcom/android/BluetoothSocketTest/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    const-string v0, "dhy_delete_pkg"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/e;->gU:Lcom/android/BluetoothSocketTest/d;

    invoke-virtual {v2, v0}, Lcom/android/BluetoothSocketTest/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/BluetoothSocketTest/a;

    const-string v2, "pkg_name"

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/a;->aJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/e;->gU:Lcom/android/BluetoothSocketTest/d;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/BluetoothSocketTest/AppLists;->aK()Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/e;->gU:Lcom/android/BluetoothSocketTest/d;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/d;->a(Lcom/android/BluetoothSocketTest/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/e;->gU:Lcom/android/BluetoothSocketTest/d;

    invoke-virtual {v1}, Lcom/android/BluetoothSocketTest/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080056

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/AppLists;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppLists;->a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    invoke-static {}, Lcom/android/BluetoothSocketTest/AppLists;->aK()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
