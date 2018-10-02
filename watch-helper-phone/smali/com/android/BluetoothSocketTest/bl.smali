.class Lcom/android/BluetoothSocketTest/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic jh:Lcom/android/BluetoothSocketTest/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bl;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bl;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bl;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-interface {v0}, Lcom/android/BluetoothSocketTest/INotifyService;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
