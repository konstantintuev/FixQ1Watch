.class Lcom/android/BluetoothSocketTest/bg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic jh:Lcom/android/BluetoothSocketTest/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bg;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bg;->jh:Lcom/android/BluetoothSocketTest/SettingsActivity;

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/SettingsActivity;->b(Lcom/android/BluetoothSocketTest/SettingsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
