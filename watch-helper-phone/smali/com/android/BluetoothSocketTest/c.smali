.class final Lcom/android/BluetoothSocketTest/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/BluetoothSocketTest/AppLists;->aK()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/BluetoothSocketTest/AppLists;->aK()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/BluetoothSocketTest/AppLists;->a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
