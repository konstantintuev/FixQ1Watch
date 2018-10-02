.class Lcom/android/BluetoothSocketTest/aq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const v5, 0x7f080051

    const v4, 0x7f050002

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_STATE_CHANGE: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->b(Lcom/android/BluetoothSocketTest/NotifyService;I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bt_connected"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iput v2, v0, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->c(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/NotifyService;->im:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->c(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x100d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->b(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->b(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0, v2}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;I)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->d(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->d(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bt_connected"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/BluetoothSocketTest/MyMessage;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getCmd()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const-string v1, ""

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getMsgType()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    :goto_1
    :pswitch_4
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const v4, 0x7f080009

    invoke-virtual {v1, v4}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getMsgContent()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->j(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getMsgContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->e(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->aX()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    new-instance v1, Lcom/android/BluetoothSocketTest/ar;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/ar;-><init>(Lcom/android/BluetoothSocketTest/aq;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->f(Lcom/android/BluetoothSocketTest/NotifyService;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, v0, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getMsgType()I

    move-result v1

    const v4, 0x20007

    if-ne v1, v4, :cond_6

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/BluetoothSocketTest/MyMessage;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    :cond_4
    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/android/BluetoothSocketTest/NotifyService;->bj()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "dhyco_data_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "is_suceeded"

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getMsgContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data_entries"

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/NotifyService;->g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_10
    
    iget-object v1, v0, Lcom/android/BluetoothSocketTest/MyMessage;->mLabel:Ljava/lang/String;
    
    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getTickerText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "tuev.konstantin.fixq1watchPhone"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "label"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "tickerText"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v0, v3}, Lcom/android/BluetoothSocketTest/NotifyService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getMsgType()I

    move-result v1

    const v2, 0x20008

    if-ne v1, v2, :cond_5

    const-string v1, "1"

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getMsgContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/BluetoothSocketTest/MyMessage;

    iget-object v3, v1, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v2}, Lcom/android/BluetoothSocketTest/NotifyService;->g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-boolean v0, v0, Lcom/android/BluetoothSocketTest/NotifyService;->iq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->h(Lcom/android/BluetoothSocketTest/NotifyService;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->i(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    new-instance v1, Lcom/android/BluetoothSocketTest/MyMessage;

    const v3, 0x20005

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v5}, Lcom/android/BluetoothSocketTest/NotifyService;->i(Lcom/android/BluetoothSocketTest/NotifyService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v6, v6, Lcom/android/BluetoothSocketTest/NotifyService;->hW:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V

    :cond_8
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iput-boolean v2, v0, Lcom/android/BluetoothSocketTest/NotifyService;->iq:Z

    goto/16 :goto_0

    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const v5, 0x7f080057

    invoke-virtual {v4, v5}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const v5, 0x7f080058

    invoke-virtual {v4, v5}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const v5, 0x7f080057

    invoke-virtual {v4, v5}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/MyMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const v5, 0x7f080059

    invoke-virtual {v4, v5}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "DHYCO"

    const-string v1, "MessageTypes.MESSAGE_LINK_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;

    move-result-object v0

    new-instance v1, Lcom/android/BluetoothSocketTest/as;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/as;-><init>(Lcom/android/BluetoothSocketTest/aq;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_9
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->j(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1, v5}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->c(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/BluetoothSocketTest/at;

    invoke-direct {v2, p0, v0}, Lcom/android/BluetoothSocketTest/at;-><init>(Lcom/android/BluetoothSocketTest/aq;Landroid/app/AlertDialog;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/NotifyService;->hV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->hV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/BluetoothSocketTest/NotifyService;->hV:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "dhyco_data_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data_entries"

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v3}, Lcom/android/BluetoothSocketTest/NotifyService;->g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel:10086"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->k(Lcom/android/BluetoothSocketTest/NotifyService;)V

    goto/16 :goto_0

    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->l(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_addr"

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->l(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_a
    const-string v0, "DHYCO"

    const-string v1, "MessageTypes.STATE_RECONNECT "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget v0, v0, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iput v2, v0, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->c(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/NotifyService;->im:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_b
    const-wide/16 v0, 0x1388

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    if-ne v2, v3, :cond_d

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v2}, Lcom/android/BluetoothSocketTest/NotifyService;->c(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v3, v3, Lcom/android/BluetoothSocketTest/NotifyService;->im:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    if-ne v2, v6, :cond_e

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    goto :goto_3

    :cond_e
    iget-object v2, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    const-wide/16 v2, 0x9

    mul-long/2addr v0, v2

    goto :goto_3

    :cond_f
    iget-object v2, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget v2, v2, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    goto :goto_3

    :sswitch_8
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->m(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    move v1, v2

    :goto_4
    if-ge v1, v3, :cond_10

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->m(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/BluetoothSocketTest/INotifyServiceCallback;

    const-string v2, ""

    invoke-interface {v0, v2}, Lcom/android/BluetoothSocketTest/INotifyServiceCallback;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/NotifyService;->m(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0xff -> :sswitch_8
        0x1001 -> :sswitch_1
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_0
        0x1004 -> :sswitch_4
        0x1005 -> :sswitch_0
        0x1006 -> :sswitch_5
        0x1007 -> :sswitch_6
        0x1008 -> :sswitch_7
        0x100d -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x100d
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20001
        :pswitch_8
        :pswitch_a
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
