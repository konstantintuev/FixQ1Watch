.class Lcom/android/BluetoothSocketTest/ax;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x20004

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->t(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->u(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->d(Lcom/android/BluetoothSocketTest/NotifyService;I)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->v(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->u(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    new-instance v2, Lcom/android/BluetoothSocketTest/MyMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/NotifyService;->u(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/NotifyService;->o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v0, v6, v3}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    new-instance v1, Lcom/android/BluetoothSocketTest/MyMessage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/NotifyService;->u(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/ax;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/NotifyService;->o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v2, v6, v3}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V

    goto :goto_0
.end method
