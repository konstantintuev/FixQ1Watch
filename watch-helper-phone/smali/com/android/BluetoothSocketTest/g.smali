.class public Lcom/android/BluetoothSocketTest/g;
.super Landroid/content/AsyncTaskLoader;


# instance fields
.field final gX:Lcom/android/BluetoothSocketTest/h;

.field gY:Ljava/util/ArrayList;

.field gZ:Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;

.field mApps:Ljava/util/List;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/BluetoothSocketTest/h;

    invoke-direct {v0}, Lcom/android/BluetoothSocketTest/h;-><init>()V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gX:Lcom/android/BluetoothSocketTest/h;

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/g;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string v0, "data_entries"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gY:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2

    sget-object v1, Lcom/android/BluetoothSocketTest/AppLists;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/BluetoothSocketTest/g;->gY:Ljava/util/ArrayList;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aM()Ljava/util/List;
    .locals 8

    sget-object v2, Lcom/android/BluetoothSocketTest/AppLists;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMsg.size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/g;->gY:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gY:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/BluetoothSocketTest/MyMessage;

    new-instance v4, Lcom/android/BluetoothSocketTest/a;

    iget-object v5, p0, Lcom/android/BluetoothSocketTest/g;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/BluetoothSocketTest/a;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/BluetoothSocketTest/g;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    invoke-static {v7}, Lcom/android/BluetoothSocketTest/MyMessage;->getBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v6, v0, Lcom/android/BluetoothSocketTest/MyMessage;->mLabel:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    invoke-virtual {v4, v6, v0, v5}, Lcom/android/BluetoothSocketTest/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->mApps:Ljava/util/List;

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gY:Ljava/util/ArrayList;

    const-string v0, "DHYCO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entries.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1
.end method

.method public c(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/g;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/BluetoothSocketTest/g;->e(Ljava/util/List;)V

    :cond_0
    iput-object p1, p0, Lcom/android/BluetoothSocketTest/g;->mApps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/g;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/BluetoothSocketTest/g;->e(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/BluetoothSocketTest/g;->e(Ljava/util/List;)V

    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/BluetoothSocketTest/g;->c(Ljava/util/List;)V

    return-void
.end method

.method protected e(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/g;->aM()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/BluetoothSocketTest/g;->d(Ljava/util/List;)V

    return-void
.end method

.method protected onReset()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/g;->onStopLoading()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/g;->e(Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/BluetoothSocketTest/g;->mApps:Ljava/util/List;

    :cond_0
    iput-object v2, p0, Lcom/android/BluetoothSocketTest/g;->gY:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gZ:Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/g;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/g;->gZ:Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/BluetoothSocketTest/g;->gZ:Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;

    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/g;->c(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gZ:Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;-><init>(Lcom/android/BluetoothSocketTest/g;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gZ:Lcom/android/BluetoothSocketTest/AppLists$PackageIntentReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gX:Lcom/android/BluetoothSocketTest/h;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/h;->a(Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/g;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/g;->mApps:Ljava/util/List;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/g;->forceLoad()V

    :cond_3
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/g;->cancelLoad()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/g;->gY:Ljava/util/ArrayList;

    return-void
.end method
