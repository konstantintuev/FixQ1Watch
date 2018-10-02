.class Lcom/android/BluetoothSocketTest/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hB:Lcom/android/BluetoothSocketTest/CallService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/CallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/r;->hB:Lcom/android/BluetoothSocketTest/CallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel:15210829287"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/r;->hB:Lcom/android/BluetoothSocketTest/CallService;

    invoke-virtual {v1, v0}, Lcom/android/BluetoothSocketTest/CallService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
