.class Lcom/android/BluetoothSocketTest/ae;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/ae;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    move v7, v8

    move-object v10, v2

    :goto_1
    array-length v2, v6

    if-ge v7, v2, :cond_2

    aget-object v0, v6, v7

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-object v10, v2

    move-object v0, v1

    move-object v1, v9

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/BluetoothSocketTest/ae;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v2}, Lcom/android/BluetoothSocketTest/NotifyService;->x(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/ae;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iput-boolean v12, v2, Lcom/android/BluetoothSocketTest/NotifyService;->iq:Z

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/ae;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    new-instance v3, Lcom/android/BluetoothSocketTest/MyMessage;

    const v4, 0x20002

    invoke-direct {v3, v4, v10, v1, v0}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v9

    goto :goto_2

    :cond_4
    move-object v1, v9

    goto :goto_3
.end method
