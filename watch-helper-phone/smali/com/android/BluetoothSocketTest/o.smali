.class Lcom/android/BluetoothSocketTest/o;
.super Ljava/lang/Thread;


# instance fields
.field private final hw:Landroid/bluetooth/BluetoothDevice;

.field final synthetic hx:Lcom/android/BluetoothSocketTest/n;

.field private final mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Lcom/android/BluetoothSocketTest/n;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/o;->hx:Lcom/android/BluetoothSocketTest/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/o;->hw:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/BluetoothSocketTest/n;->aP()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/BluetoothSocketTest/o;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void

    :catch_0
    move-exception v1

    const-string v2, "BluetoothMasterService"

    const-string v3, "create() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/o;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BluetoothMasterService"

    const-string v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BluetoothMasterService"

    const-string v2, "socket = null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 3

    const-string v0, "BluetoothMasterService"

    const-string v1, "BEGIN mClientThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ClientThread"

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/o;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/o;->hx:Lcom/android/BluetoothSocketTest/n;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/n;->a(Lcom/android/BluetoothSocketTest/n;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/o;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    const-string v0, "DHYCO"

    const-string v1, "mSocket.connect()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/o;->hx:Lcom/android/BluetoothSocketTest/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/n;->a(Lcom/android/BluetoothSocketTest/n;Lcom/android/BluetoothSocketTest/o;)Lcom/android/BluetoothSocketTest/o;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/o;->hx:Lcom/android/BluetoothSocketTest/n;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/o;->mSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/o;->hw:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1, v2}, Lcom/android/BluetoothSocketTest/n;->a(Lcom/android/BluetoothSocketTest/n;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    const-string v0, "DHYCO"

    const-string v1, "connected(mSocket, mmDevice)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/o;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/o;->hx:Lcom/android/BluetoothSocketTest/n;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/n;->d(Lcom/android/BluetoothSocketTest/n;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BluetoothMasterService"

    const-string v2, "unable to close() socket during connection failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "BluetoothMasterService"

    const-string v2, "NullPointerException:mSocket = null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/o;->hx:Lcom/android/BluetoothSocketTest/n;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/n;->d(Lcom/android/BluetoothSocketTest/n;)V

    goto :goto_0
.end method
