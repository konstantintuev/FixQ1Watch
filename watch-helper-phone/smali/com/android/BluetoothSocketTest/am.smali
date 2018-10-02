.class Lcom/android/BluetoothSocketTest/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic iE:Lcom/android/BluetoothSocketTest/ak;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/am;->iE:Lcom/android/BluetoothSocketTest/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/am;->iE:Lcom/android/BluetoothSocketTest/ak;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->F(Lcom/android/BluetoothSocketTest/NotifyService;)V

    return-void
.end method
