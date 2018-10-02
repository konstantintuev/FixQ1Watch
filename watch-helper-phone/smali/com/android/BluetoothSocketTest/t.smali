.class Lcom/android/BluetoothSocketTest/t;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/DeviceListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/t;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/t;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/DeviceListActivity;->b(Lcom/android/BluetoothSocketTest/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/t;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/DeviceListActivity;->setProgressBarIndeterminateVisibility(Z)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/t;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/DeviceListActivity;->setTitle(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/t;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/DeviceListActivity;->b(Lcom/android/BluetoothSocketTest/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/t;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/DeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/t;->hH:Lcom/android/BluetoothSocketTest/DeviceListActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/DeviceListActivity;->b(Lcom/android/BluetoothSocketTest/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
