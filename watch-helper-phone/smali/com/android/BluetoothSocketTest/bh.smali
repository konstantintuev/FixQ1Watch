.class Lcom/android/BluetoothSocketTest/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic jh:Lcom/android/BluetoothSocketTest/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0x1f4

    const v4, 0x7f08001c

    const v3, 0x7f08001b

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->c(Lcom/android/BluetoothSocketTest/SettingsActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->g(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->f(Lcom/android/BluetoothSocketTest/SettingsActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->f(Lcom/android/BluetoothSocketTest/SettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->g(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-virtual {v2, v3}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v2}, Lcom/android/BluetoothSocketTest/SettingsActivity;->h(Lcom/android/BluetoothSocketTest/SettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->ja:Landroid/content/SharedPreferences$Editor;

    const-string v1, "device_name"

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v2}, Lcom/android/BluetoothSocketTest/SettingsActivity;->h(Lcom/android/BluetoothSocketTest/SettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/SettingsActivity;->ja:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->b(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-virtual {v1, v3}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->e(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->d(Lcom/android/BluetoothSocketTest/SettingsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->b(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->b(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-virtual {v1, v4}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->e(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/SettingsActivity;->d(Lcom/android/BluetoothSocketTest/SettingsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->g(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bh;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-virtual {v1, v4}, Lcom/android/BluetoothSocketTest/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
