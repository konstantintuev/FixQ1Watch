.class public Lcom/android/BluetoothSocketTest/bm;
.super Ljava/lang/Object;


# static fields
.field private static ji:Lcom/android/BluetoothSocketTest/bm;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field private jc:Lcom/android/BluetoothSocketTest/INotifyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/BluetoothSocketTest/bm;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bo()Lcom/android/BluetoothSocketTest/bm;
    .locals 2

    sget-object v1, Lcom/android/BluetoothSocketTest/bm;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/BluetoothSocketTest/bm;->ji:Lcom/android/BluetoothSocketTest/bm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/BluetoothSocketTest/bm;

    invoke-direct {v0}, Lcom/android/BluetoothSocketTest/bm;-><init>()V

    sput-object v0, Lcom/android/BluetoothSocketTest/bm;->ji:Lcom/android/BluetoothSocketTest/bm;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/BluetoothSocketTest/bm;->ji:Lcom/android/BluetoothSocketTest/bm;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/android/BluetoothSocketTest/INotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bm;->jc:Lcom/android/BluetoothSocketTest/INotifyService;

    return-void
.end method
