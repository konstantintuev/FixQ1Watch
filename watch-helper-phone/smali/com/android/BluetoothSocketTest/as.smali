.class Lcom/android/BluetoothSocketTest/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field final synthetic iF:Lcom/android/BluetoothSocketTest/aq;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/as;->iF:Lcom/android/BluetoothSocketTest/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8

    const/high16 v2, 0x41700000    # 15.0f

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/as;->iF:Lcom/android/BluetoothSocketTest/aq;

    iget-object v7, v0, Lcom/android/BluetoothSocketTest/aq;->iD:Lcom/android/BluetoothSocketTest/NotifyService;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v1, p2

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    invoke-static {v7, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Lcom/android/BluetoothSocketTest/NotifyService;I)I

    return-void
.end method
