.class Lcom/android/BluetoothSocketTest/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hN:Lcom/android/BluetoothSocketTest/MsgReceivedDialog;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/MsgReceivedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/ab;->hN:Lcom/android/BluetoothSocketTest/MsgReceivedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ab;->hN:Lcom/android/BluetoothSocketTest/MsgReceivedDialog;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MsgReceivedDialog;->finish()V

    return-void
.end method
