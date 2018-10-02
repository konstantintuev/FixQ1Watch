.class Lcom/android/BluetoothSocketTest/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic jh:Lcom/android/BluetoothSocketTest/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {p2}, Lcom/android/BluetoothSocketTest/w;->a(Landroid/os/IBinder;)Lcom/android/BluetoothSocketTest/INotifyService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-static {}, Lcom/android/BluetoothSocketTest/bm;->bo()Lcom/android/BluetoothSocketTest/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/bm;->a(Lcom/android/BluetoothSocketTest/INotifyService;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/SettingsActivity;->jd:Lcom/android/BluetoothSocketTest/INotifyServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/BluetoothSocketTest/INotifyService;->a(Lcom/android/BluetoothSocketTest/INotifyServiceCallback;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->g(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v1}, Lcom/android/BluetoothSocketTest/INotifyService;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v0}, Lcom/android/BluetoothSocketTest/INotifyService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->g(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v2, v2, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v2}, Lcom/android/BluetoothSocketTest/INotifyService;->aQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v0}, Lcom/android/BluetoothSocketTest/INotifyService;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->connect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/SettingsActivity;->jd:Lcom/android/BluetoothSocketTest/INotifyServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/BluetoothSocketTest/INotifyService;->b(Lcom/android/BluetoothSocketTest/INotifyServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-static {}, Lcom/android/BluetoothSocketTest/bm;->bo()Lcom/android/BluetoothSocketTest/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bi;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v1, v1, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/bm;->a(Lcom/android/BluetoothSocketTest/INotifyService;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
