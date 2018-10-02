.class public Lcom/android/BluetoothSocketTest/n;
.super Ljava/lang/Object;


# static fields
.field private static final hq:Ljava/util/UUID;


# instance fields
.field private hr:Lcom/android/BluetoothSocketTest/p;

.field private hs:Lcom/android/BluetoothSocketTest/o;

.field private ht:Lcom/android/BluetoothSocketTest/q;

.field private hu:Z

.field private hv:Z

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fa87c0d0-afac-11de-8a39-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/BluetoothSocketTest/n;->hq:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/n;->mState:I

    iput-boolean v1, p0, Lcom/android/BluetoothSocketTest/n;->hu:Z

    iput-boolean v1, p0, Lcom/android/BluetoothSocketTest/n;->hv:Z

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/n;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/n;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/n;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/n;Lcom/android/BluetoothSocketTest/o;)Lcom/android/BluetoothSocketTest/o;
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    return-object p1
.end method

.method private a(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "BluetoothMasterService"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/o;->cancel()V

    iput-object v2, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/q;->cancel()V

    iput-object v2, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hr:Lcom/android/BluetoothSocketTest/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hr:Lcom/android/BluetoothSocketTest/p;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/p;->cancel()V

    iput-object v2, p0, Lcom/android/BluetoothSocketTest/n;->hr:Lcom/android/BluetoothSocketTest/p;

    :cond_2
    new-instance v0, Lcom/android/BluetoothSocketTest/q;

    invoke-direct {v0, p0, p1}, Lcom/android/BluetoothSocketTest/q;-><init>(Lcom/android/BluetoothSocketTest/n;Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/q;->start()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device_name"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/n;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/BluetoothSocketTest/n;->setState(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/n;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/BluetoothSocketTest/n;->setState(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/n;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/BluetoothSocketTest/n;->a(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private aN()V
    .locals 4

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/BluetoothSocketTest/n;->setState(I)V

    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionLost !,manual = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/BluetoothSocketTest/n;->hu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/n;->hu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100d

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/n;->stop()V

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/n;->hu:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/n;->hv:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1008

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private aO()V
    .locals 3

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/BluetoothSocketTest/n;->setState(I)V

    const-string v0, "DHYCO"

    const-string v1, "connectionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1005

    const-string v2, "connectionFailed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/n;->stop()V

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/n;->hu:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/n;->hv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1008

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic aP()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/android/BluetoothSocketTest/n;->hq:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic b(Lcom/android/BluetoothSocketTest/n;)I
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/n;->mState:I

    return v0
.end method

.method static synthetic c(Lcom/android/BluetoothSocketTest/n;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/android/BluetoothSocketTest/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/n;->aO()V

    return-void
.end method

.method static synthetic e(Lcom/android/BluetoothSocketTest/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/n;->aN()V

    return-void
.end method

.method private setState(I)V
    .locals 3

    const-string v0, "BluetoothMasterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/BluetoothSocketTest/n;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/BluetoothSocketTest/n;->mState:I

    iget v0, p0, Lcom/android/BluetoothSocketTest/n;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/BluetoothSocketTest/n;->hu:Z

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/BluetoothSocketTest/n;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1}, Lcom/android/BluetoothSocketTest/q;->R(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const-string v0, "BluetoothMasterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/BluetoothSocketTest/n;->mState:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/o;->cancel()V

    iput-object v4, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/q;->cancel()V

    iput-object v4, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    :cond_1
    new-instance v0, Lcom/android/BluetoothSocketTest/o;

    invoke-direct {v0, p0, p1}, Lcom/android/BluetoothSocketTest/o;-><init>(Lcom/android/BluetoothSocketTest/n;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/o;->start()V

    invoke-direct {p0, v3}, Lcom/android/BluetoothSocketTest/n;->setState(I)V

    return-void
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/n;->mState:I

    return v0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/BluetoothSocketTest/n;->hv:Z

    return-void
.end method

.method public j(Z)V
    .locals 2

    const-string v0, "BluetoothMasterService"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/BluetoothSocketTest/n;->hu:Z

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/n;->stop()V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BluetoothMasterService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/o;->cancel()V

    iput-object v2, p0, Lcom/android/BluetoothSocketTest/n;->hs:Lcom/android/BluetoothSocketTest/o;

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/q;->cancel()V

    iput-object v2, p0, Lcom/android/BluetoothSocketTest/n;->ht:Lcom/android/BluetoothSocketTest/q;

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hr:Lcom/android/BluetoothSocketTest/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/n;->hr:Lcom/android/BluetoothSocketTest/p;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/p;->cancel()V

    iput-object v2, p0, Lcom/android/BluetoothSocketTest/n;->hr:Lcom/android/BluetoothSocketTest/p;

    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/BluetoothSocketTest/n;->setState(I)V

    return-void
.end method
