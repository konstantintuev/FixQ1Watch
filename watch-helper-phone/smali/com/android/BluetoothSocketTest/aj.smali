.class Lcom/android/BluetoothSocketTest/aj;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/aj;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aj;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->E(Lcom/android/BluetoothSocketTest/NotifyService;)V

    :cond_0
    return-void
.end method
