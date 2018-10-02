.class Lcom/android/BluetoothSocketTest/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/BluetoothSocketTest/v;


# instance fields
.field final synthetic iD:Lcom/android/BluetoothSocketTest/NotifyService;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/u;)Lcom/android/BluetoothSocketTest/u;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/u;)Lcom/android/BluetoothSocketTest/u;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "_apkUri"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "_versionCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/u;)Lcom/android/BluetoothSocketTest/u;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const-string v2, "_apkUri"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/BluetoothSocketTest/NotifyService;->b(Lcom/android/BluetoothSocketTest/NotifyService;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "_versionCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v2}, Lcom/android/BluetoothSocketTest/NotifyService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v1, :cond_4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-virtual {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030073

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/BluetoothSocketTest/al;

    invoke-direct {v2, p0}, Lcom/android/BluetoothSocketTest/al;-><init>(Lcom/android/BluetoothSocketTest/ak;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/BluetoothSocketTest/am;

    invoke-direct {v2, p0}, Lcom/android/BluetoothSocketTest/am;-><init>(Lcom/android/BluetoothSocketTest/ak;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/BluetoothSocketTest/an;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/an;-><init>(Lcom/android/BluetoothSocketTest/ak;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    const-string v0, "DHYCO"

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    invoke-static {v1}, Lcom/android/BluetoothSocketTest/NotifyService;->G(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->c(Lcom/android/BluetoothSocketTest/NotifyService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/ak;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/u;)Lcom/android/BluetoothSocketTest/u;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
