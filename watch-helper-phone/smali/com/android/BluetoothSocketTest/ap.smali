.class Lcom/android/BluetoothSocketTest/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/ap;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ap;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ap;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->b(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ap;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ap;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->b(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ap;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ap;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    new-instance v1, Lcom/android/BluetoothSocketTest/MyMessage;

    const v2, 0x20006

    const-string v3, "STATE_DIAG_DISMISS"

    invoke-direct {v1, v2, v3}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V

    return-void
.end method
