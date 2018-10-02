.class Lcom/android/BluetoothSocketTest/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic iE:Lcom/android/BluetoothSocketTest/ak;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/al;->iE:Lcom/android/BluetoothSocketTest/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
