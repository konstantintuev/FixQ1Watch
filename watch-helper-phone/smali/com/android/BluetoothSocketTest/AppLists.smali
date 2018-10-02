.class public Lcom/android/BluetoothSocketTest/AppLists;
.super Landroid/app/Activity;


# static fields
.field public static final gQ:Ljava/util/Comparator;

.field private static gR:Landroid/app/ProgressDialog;

.field private static gS:Ljava/lang/Runnable;

.field static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/BluetoothSocketTest/AppLists;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/android/BluetoothSocketTest/b;

    invoke-direct {v0}, Lcom/android/BluetoothSocketTest/b;-><init>()V

    sput-object v0, Lcom/android/BluetoothSocketTest/AppLists;->gQ:Ljava/util/Comparator;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/BluetoothSocketTest/AppLists;->gR:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/BluetoothSocketTest/c;

    invoke-direct {v0}, Lcom/android/BluetoothSocketTest/c;-><init>()V

    sput-object v0, Lcom/android/BluetoothSocketTest/AppLists;->gS:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    sput-object p0, Lcom/android/BluetoothSocketTest/AppLists;->gR:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic aK()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/android/BluetoothSocketTest/AppLists;->gR:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic aL()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/android/BluetoothSocketTest/AppLists;->gS:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v2, 0x1020002

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/AppLists;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/AppLists;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/BluetoothSocketTest/f;

    invoke-direct {v1}, Lcom/android/BluetoothSocketTest/f;-><init>()V

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
