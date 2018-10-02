.class Lcom/android/BluetoothSocketTest/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/AppSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/j;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/j;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/j;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/m;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->a(Lcom/android/BluetoothSocketTest/AppSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/j;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/j;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/m;->e(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/AppSelectActivity;->b(Lcom/android/BluetoothSocketTest/AppSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/j;->hn:Lcom/android/BluetoothSocketTest/AppSelectActivity;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/AppSelectActivity;->hm:Landroid/os/Handler;

    const/16 v1, 0x123

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
