.class Lcom/android/BluetoothSocketTest/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic iT:Lcom/android/BluetoothSocketTest/bb;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bd;->iT:Lcom/android/BluetoothSocketTest/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/BluetoothSocketTest/bd;->iT:Lcom/android/BluetoothSocketTest/bb;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/bb;->a(Lcom/android/BluetoothSocketTest/bb;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/bd;->iT:Lcom/android/BluetoothSocketTest/bb;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/bb;->b(Lcom/android/BluetoothSocketTest/bb;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/BluetoothSocketTest/az;->iH:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/BluetoothSocketTest/az;->iH:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bd;->iT:Lcom/android/BluetoothSocketTest/bb;

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/bd;->iT:Lcom/android/BluetoothSocketTest/bb;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/bb;->b(Lcom/android/BluetoothSocketTest/bb;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/bb;->a(Lcom/android/BluetoothSocketTest/bb;Z)Z

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bd;->iT:Lcom/android/BluetoothSocketTest/bb;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/bb;->c(Lcom/android/BluetoothSocketTest/bb;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bd;->iT:Lcom/android/BluetoothSocketTest/bb;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/bb;->b(Lcom/android/BluetoothSocketTest/bb;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080064

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bd;->iT:Lcom/android/BluetoothSocketTest/bb;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/bb;->d(Lcom/android/BluetoothSocketTest/bb;)Lcom/android/BluetoothSocketTest/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/az;->notifyDataSetChanged()V

    return-void

    :cond_3
    const v0, 0x104000d

    goto :goto_2
.end method
