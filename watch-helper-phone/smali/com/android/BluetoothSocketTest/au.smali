.class Lcom/android/BluetoothSocketTest/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/au;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/au;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/au;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->n(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/n;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/au;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->n(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/n;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/au;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/au;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/n;->a(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/au;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget v1, v0, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/au;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
