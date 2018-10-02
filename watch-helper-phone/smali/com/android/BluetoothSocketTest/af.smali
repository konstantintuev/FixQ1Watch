.class Lcom/android/BluetoothSocketTest/af;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "check_notification_listener"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    const-class v4, Lcom/android/BluetoothSocketTest/NotificationListener;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v6

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "DHYCO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->y(Lcom/android/BluetoothSocketTest/NotifyService;)V

    :cond_2
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->z(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v0, "action_post_notification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "content"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "icon"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "id"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1, v9}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v10, 0x2

    invoke-virtual {v1, v9, v10}, Lcom/android/BluetoothSocketTest/NotifyService;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getBitmapBytes(Landroid/graphics/Bitmap;)[B
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_3
    move-object v1, v0

    :goto_4
    const-string v7, "yantm"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " content = $$$$"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "$$$$ is null ? "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v3, :cond_8

    move v0, v6

    :goto_5
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "NULL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const v3, 0x7f08006e

    invoke-virtual {v0, v3}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    const-string v0, "yantm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " after content = $$$$"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "$$$$ is null ? "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_9

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/BluetoothSocketTest/MyMessage;

    const/16 v5, 0x1011

    invoke-direct/range {v0 .. v5}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>([BLjava/lang/String;Ljava/lang/String;II)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, v8}, Lcom/android/BluetoothSocketTest/MyMessage;->setmDisplayName(Ljava/lang/String;)V

    :cond_7
    iput-object v9, v0, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    :try_start_1
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->A(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/BluetoothSocketTest/w;->a(Lcom/android/BluetoothSocketTest/MyMessage;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v7

    goto/16 :goto_4

    :cond_8
    move v0, v5

    goto :goto_5

    :cond_9
    move v6, v5

    goto :goto_6

    :cond_a
    const-string v0, "action_remove_notification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "content"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "icon"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "id"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1, v6}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_2
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v5, 0x2

    invoke-virtual {v1, v6, v5}, Lcom/android/BluetoothSocketTest/NotifyService;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getBitmapBytes(Landroid/graphics/Bitmap;)[B
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v7

    :cond_b
    move-object v1, v7

    :goto_7
    new-instance v0, Lcom/android/BluetoothSocketTest/MyMessage;

    const/16 v5, 0x1012

    invoke-direct/range {v0 .. v5}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>([BLjava/lang/String;Ljava/lang/String;II)V

    iput-object v6, v0, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    :try_start_3
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/af;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->A(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/BluetoothSocketTest/w;->a(Lcom/android/BluetoothSocketTest/MyMessage;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v7

    goto :goto_7

    :cond_c
    move-object v0, v7

    goto/16 :goto_3

    :cond_d
    move v0, v1

    goto/16 :goto_1
.end method
