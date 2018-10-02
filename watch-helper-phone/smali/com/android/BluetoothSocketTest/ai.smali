.class Lcom/android/BluetoothSocketTest/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/ai;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ai;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->D(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/u;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ai;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->C(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/u;->a(Lcom/android/BluetoothSocketTest/v;)V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/ai;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v2}, Lcom/android/BluetoothSocketTest/NotifyService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ai;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->D(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/u;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/BluetoothSocketTest/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
