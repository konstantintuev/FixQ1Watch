.class Lcom/android/BluetoothSocketTest/ag;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/ag;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ag;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->B(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ag;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    new-instance v1, Lcom/android/BluetoothSocketTest/MyMessage;

    const v2, 0x20006

    const-string v3, "STATE_IMCONING_CALL"

    invoke-direct {v1, v2, v3}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V

    :cond_1
    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject the incoming call!,,incomingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v0, "DHYCO"

    const-string v1, "Accept the incoming call!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call Number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ag;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->B(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ag;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/BluetoothSocketTest/NotifyService;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ag;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    new-instance v2, Lcom/android/BluetoothSocketTest/MyMessage;

    const v3, 0x20001

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/BluetoothSocketTest/ag;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v5}, Lcom/android/BluetoothSocketTest/NotifyService;->o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
