.class Lcom/android/BluetoothSocketTest/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/AppSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/i;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/i;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->finish()V

    return-void
.end method
