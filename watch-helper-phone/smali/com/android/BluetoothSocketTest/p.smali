.class Lcom/android/BluetoothSocketTest/p;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic hx:Lcom/android/BluetoothSocketTest/n;

.field private final hy:Landroid/bluetooth/BluetoothServerSocket;


# virtual methods
.method public cancel()V
    .locals 3

    const-string v0, "BluetoothMasterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/p;->hy:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BluetoothMasterService"

    const-string v2, "close() of server failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BluetoothMasterService"

    const-string v2, "ServerSocket is null !!error = "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/p;->hx:Lcom/android/BluetoothSocketTest/n;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/n;->c(Lcom/android/BluetoothSocketTest/n;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1005

    const-string v2, "ServerSocket is null !!error = "

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    const-string v0, "BluetoothMasterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN mServerThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ServerThread"

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/p;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/p;->hy:Landroid/bluetooth/BluetoothServerSocket;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/p;->hx:Lcom/android/BluetoothSocketTest/n;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/n;->b(Lcom/android/BluetoothSocketTest/n;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/p;->hy:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/p;->hx:Lcom/android/BluetoothSocketTest/n;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/n;->b(Lcom/android/BluetoothSocketTest/n;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BluetoothMasterService"

    const-string v2, "Could not close unwanted socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "BluetoothMasterService"

    const-string v2, "accept() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/p;->hx:Lcom/android/BluetoothSocketTest/n;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/n;->a(Lcom/android/BluetoothSocketTest/n;I)V

    :cond_1
    const-string v0, "BluetoothMasterService"

    const-string v1, "END mServerThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/p;->hx:Lcom/android/BluetoothSocketTest/n;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/BluetoothSocketTest/n;->a(Lcom/android/BluetoothSocketTest/n;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
