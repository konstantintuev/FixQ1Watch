.class Lcom/android/BluetoothSocketTest/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic jh:Lcom/android/BluetoothSocketTest/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bj;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bj;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->i(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
