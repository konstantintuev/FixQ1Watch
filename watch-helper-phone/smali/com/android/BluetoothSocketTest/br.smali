.class Lcom/android/BluetoothSocketTest/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic jm:Lcom/android/BluetoothSocketTest/bp;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/br;->jm:Lcom/android/BluetoothSocketTest/bp;

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
    iget-object v3, p0, Lcom/android/BluetoothSocketTest/br;->jm:Lcom/android/BluetoothSocketTest/bp;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/bp;->a(Lcom/android/BluetoothSocketTest/bp;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/br;->jm:Lcom/android/BluetoothSocketTest/bp;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/bp;->b(Lcom/android/BluetoothSocketTest/bp;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/BluetoothSocketTest/bn;->iH:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/BluetoothSocketTest/bn;->iH:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/br;->jm:Lcom/android/BluetoothSocketTest/bp;

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/br;->jm:Lcom/android/BluetoothSocketTest/bp;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/bp;->b(Lcom/android/BluetoothSocketTest/bp;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/bp;->a(Lcom/android/BluetoothSocketTest/bp;Z)Z

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/br;->jm:Lcom/android/BluetoothSocketTest/bp;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/bp;->c(Lcom/android/BluetoothSocketTest/bp;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/br;->jm:Lcom/android/BluetoothSocketTest/bp;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/bp;->b(Lcom/android/BluetoothSocketTest/bp;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f080064

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/br;->jm:Lcom/android/BluetoothSocketTest/bp;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/bp;->d(Lcom/android/BluetoothSocketTest/bp;)Lcom/android/BluetoothSocketTest/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/bn;->notifyDataSetChanged()V

    return-void

    :cond_3
    const v0, 0x104000d

    goto :goto_2
.end method
