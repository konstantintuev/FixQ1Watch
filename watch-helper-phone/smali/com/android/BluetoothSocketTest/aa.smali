.class Lcom/android/BluetoothSocketTest/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic hN:Lcom/android/BluetoothSocketTest/MsgReceivedDialog;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/MsgReceivedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/aa;->hN:Lcom/android/BluetoothSocketTest/MsgReceivedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aa;->hN:Lcom/android/BluetoothSocketTest/MsgReceivedDialog;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MsgReceivedDialog;->finish()V

    return-void
.end method
