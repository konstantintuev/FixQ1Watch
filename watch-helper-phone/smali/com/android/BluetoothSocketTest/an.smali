.class Lcom/android/BluetoothSocketTest/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic iE:Lcom/android/BluetoothSocketTest/ak;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/an;->iE:Lcom/android/BluetoothSocketTest/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/an;->iE:Lcom/android/BluetoothSocketTest/ak;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/u;)Lcom/android/BluetoothSocketTest/u;

    return-void
.end method
