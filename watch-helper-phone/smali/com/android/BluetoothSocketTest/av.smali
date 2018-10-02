.class Lcom/android/BluetoothSocketTest/av;
.super Lcom/android/BluetoothSocketTest/w;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/BluetoothSocketTest/INotifyServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->m(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/android/BluetoothSocketTest/MyMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->p(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0, p1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->p(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0, p1, p2}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public aQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/NotifyService;->hW:Ljava/lang/String;

    return-object v0
.end method

.method public aR()Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const-class v2, Lcom/android/BluetoothSocketTest/AppLists;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data_entries"

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/NotifyService;->g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public aS()V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->q(Lcom/android/BluetoothSocketTest/NotifyService;)V

    return-void
.end method

.method public b(Lcom/android/BluetoothSocketTest/INotifyServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->m(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public connect()V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->p(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->c(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/NotifyService;->im:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->n(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/BluetoothSocketTest/n;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->p(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->n(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/n;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/n;->j(Z)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->p(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->c(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/NotifyService;->im:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/BluetoothSocketTest/NotifyService;->hW:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->n(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/BluetoothSocketTest/n;->a(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iput-object p1, v0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->l(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_name"

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->hW:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->l(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_addr"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->l(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/av;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->p(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    return v0
.end method
