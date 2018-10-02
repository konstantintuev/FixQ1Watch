.class public Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final hb:Lcom/android/BluetoothSocketTest/g;


# direct methods
.method public constructor <init>(Lcom/android/BluetoothSocketTest/g;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;->hb:Lcom/android/BluetoothSocketTest/g;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "dhyco_data_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;->hb:Lcom/android/BluetoothSocketTest/g;

    invoke-virtual {v1}, Lcom/android/BluetoothSocketTest/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data_entries"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "is_suceeded"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/BluetoothSocketTest/AppLists;->aK()Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/BluetoothSocketTest/AppLists;->aK()Landroid/app/ProgressDialog;

    move-result-object v0

    const v2, 0x7f080055

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Lcom/android/BluetoothSocketTest/AppLists;->aL()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;->hb:Lcom/android/BluetoothSocketTest/g;

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/g;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;->hb:Lcom/android/BluetoothSocketTest/g;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/g;->onContentChanged()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/BluetoothSocketTest/AppLists;->aK()Landroid/app/ProgressDialog;

    move-result-object v0

    const v2, 0x7f080054

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
