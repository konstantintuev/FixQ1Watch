.class Lcom/android/BluetoothSocketTest/aw;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->r(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->s(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->i(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->c(Lcom/android/BluetoothSocketTest/NotifyService;I)I

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->h(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-boolean v1, v1, Lcom/android/BluetoothSocketTest/NotifyService;->iq:Z

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    new-instance v1, Lcom/android/BluetoothSocketTest/MyMessage;

    const v2, 0x20005

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v4}, Lcom/android/BluetoothSocketTest/NotifyService;->i(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/BluetoothSocketTest/aw;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v5}, Lcom/android/BluetoothSocketTest/NotifyService;->o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V

    :cond_0
    return-void
.end method
