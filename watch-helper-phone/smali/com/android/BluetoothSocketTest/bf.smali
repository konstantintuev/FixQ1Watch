.class Lcom/android/BluetoothSocketTest/bf;
.super Lcom/android/BluetoothSocketTest/y;


# instance fields
.field final synthetic jh:Lcom/android/BluetoothSocketTest/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bf;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bf;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0, p1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->a(Lcom/android/BluetoothSocketTest/SettingsActivity;I)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bf;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0, p2}, Lcom/android/BluetoothSocketTest/SettingsActivity;->a(Lcom/android/BluetoothSocketTest/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bf;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->a(Lcom/android/BluetoothSocketTest/SettingsActivity;Z)Z

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bf;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bf;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->a(Lcom/android/BluetoothSocketTest/SettingsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bf;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->a(Lcom/android/BluetoothSocketTest/SettingsActivity;Z)Z

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bf;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bf;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->a(Lcom/android/BluetoothSocketTest/SettingsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
