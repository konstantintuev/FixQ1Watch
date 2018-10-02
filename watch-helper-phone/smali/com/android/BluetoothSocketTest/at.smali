.class Lcom/android/BluetoothSocketTest/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic iF:Lcom/android/BluetoothSocketTest/aq;

.field final synthetic iG:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/aq;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/at;->iF:Lcom/android/BluetoothSocketTest/aq;

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/at;->iG:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/at;->iG:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/at;->iG:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/at;->iG:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
