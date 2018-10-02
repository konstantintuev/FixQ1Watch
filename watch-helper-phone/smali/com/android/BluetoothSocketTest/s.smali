.class Lcom/android/BluetoothSocketTest/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/DeviceListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/s;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/s;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/DeviceListActivity;->a(Lcom/android/BluetoothSocketTest/DeviceListActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/BluetoothSocketTest/DeviceListActivity;->hC:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/s;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/BluetoothSocketTest/DeviceListActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/s;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/DeviceListActivity;->finish()V

    return-void
.end method
