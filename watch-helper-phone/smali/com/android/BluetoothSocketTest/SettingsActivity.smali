.class public Lcom/android/BluetoothSocketTest/SettingsActivity;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field private gR:Landroid/app/ProgressDialog;

.field private gS:Ljava/lang/Runnable;

.field private hS:Landroid/bluetooth/BluetoothAdapter;

.field private iU:Z

.field private iV:Landroid/preference/CheckBoxPreference;

.field private iW:Landroid/preference/CheckBoxPreference;

.field private iX:Z

.field private iY:Ljava/lang/String;

.field private iZ:Ljava/lang/String;

.field ja:Landroid/content/SharedPreferences$Editor;

.field private jb:Landroid/os/Handler;

.field protected jc:Lcom/android/BluetoothSocketTest/INotifyService;

.field protected jd:Lcom/android/BluetoothSocketTest/INotifyServiceCallback;

.field private je:Ljava/lang/Runnable;

.field private jf:Landroid/content/ServiceConnection;

.field private jg:Z

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iU:Z

    iput-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->hS:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iY:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iZ:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jb:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->gR:Landroid/app/ProgressDialog;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->mState:I

    new-instance v0, Lcom/android/BluetoothSocketTest/bf;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/bf;-><init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jd:Lcom/android/BluetoothSocketTest/INotifyServiceCallback;

    new-instance v0, Lcom/android/BluetoothSocketTest/bg;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/bg;-><init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->gS:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/BluetoothSocketTest/bh;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/bh;-><init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->je:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/BluetoothSocketTest/bi;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/bi;-><init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jf:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jg:Z

    return-void
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/SettingsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/SettingsActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->je:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iY:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/SettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iU:Z

    return p1
.end method

.method static synthetic b(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->gR:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private bl()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string v1, "Select a File to Upload"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xff0

    invoke-virtual {p0, v0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Please install a File Manager."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private bm()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/BluetoothSocketTest/DeviceListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1009

    invoke-virtual {p0, v0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private bn()Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enabled_notification_listeners"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/BluetoothSocketTest/SettingsActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->mState:I

    return v0
.end method

.method static synthetic d(Lcom/android/BluetoothSocketTest/SettingsActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->gS:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, -0x2

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/BluetoothSocketTest/bl;

    invoke-direct {v3, p0}, Lcom/android/BluetoothSocketTest/bl;-><init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method static synthetic e(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jb:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/android/BluetoothSocketTest/SettingsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iU:Z

    return v0
.end method

.method static synthetic g(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iV:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic h(Lcom/android/BluetoothSocketTest/SettingsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iW:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jb:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->gS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->gR:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :goto_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v0}, Lcom/android/BluetoothSocketTest/INotifyService;->disconnect()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iZ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/BluetoothSocketTest/INotifyService;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/android/BluetoothSocketTest/DeviceListActivity;->hC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iX:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iZ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v1}, Lcom/android/BluetoothSocketTest/INotifyService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->ja:Landroid/content/SharedPreferences$Editor;

    const-string v1, "device_addr"

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iZ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->ja:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->connect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    if-eq p2, v0, :cond_0

    const v0, 0x7f080005

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->finish()V

    goto :goto_0

    :sswitch_2
    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iW:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->bn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "notification"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isSendMsg"

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_4
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "bluetooth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xff0 -> :sswitch_4
        0x1009 -> :sswitch_0
        0x100a -> :sswitch_1
        0x1010 -> :sswitch_3
        0x13e8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string v0, ""

    invoke-direct {p0, p0, v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->gR:Landroid/app/ProgressDialog;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->hS:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->hS:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "Bluetooth is not available"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->ja:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_first_run"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jg:Z

    iget-boolean v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->ja:Landroid/content/SharedPreferences$Editor;

    const-string v2, "is_first_run"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->ja:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "device_addr"

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iZ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iZ:Ljava/lang/String;

    const-string v1, "device_name"

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iZ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iY:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jf:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/BluetoothSocketTest/SettingsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iX:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jd:Lcom/android/BluetoothSocketTest/INotifyServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/BluetoothSocketTest/INotifyService;->b(Lcom/android/BluetoothSocketTest/INotifyServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jf:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->bm()V

    goto :goto_1

    :sswitch_2
    :try_start_0
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v1}, Lcom/android/BluetoothSocketTest/INotifyService;->aS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c001c -> :sswitch_1
        0x7f0c001d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->addPreferencesFromResource(I)V

    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iV:Landroid/preference/CheckBoxPreference;

    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iW:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iX:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iV:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v0}, Lcom/android/BluetoothSocketTest/INotifyService;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iV:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->connect()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v0}, Lcom/android/BluetoothSocketTest/INotifyService;->disconnect()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iW:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_6

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->bn()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/BluetoothSocketTest/bk;

    invoke-direct {v3, p0}, Lcom/android/BluetoothSocketTest/bk;-><init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/android/BluetoothSocketTest/bj;

    invoke-direct {v3, p0}, Lcom/android/BluetoothSocketTest/bj;-><init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_5
    :goto_2
    check-cast p2, Landroid/preference/CheckBoxPreference;

    :try_start_2
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/BluetoothSocketTest/INotifyService;->a(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f080035

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->iW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_7
    :try_start_3
    instance-of v1, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    check-cast p2, Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/BluetoothSocketTest/INotifyService;->a(Ljava/lang/String;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    const v1, 0x7f080038

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    new-instance v1, Lcom/android/BluetoothSocketTest/MyMessage;

    const/16 v2, 0x100e

    invoke-direct {v1, v2}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/BluetoothSocketTest/INotifyService;->a(Lcom/android/BluetoothSocketTest/MyMessage;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "PREF_APP_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v0}, Lcom/android/BluetoothSocketTest/INotifyService;->aR()Z

    goto/16 :goto_0

    :cond_a
    const v1, 0x7f080046

    invoke-virtual {p0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->bl()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/SettingsActivity;->hS:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x100a

    invoke-virtual {p0, v0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
