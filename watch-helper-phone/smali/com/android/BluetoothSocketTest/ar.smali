.class Lcom/android/BluetoothSocketTest/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field final synthetic iF:Lcom/android/BluetoothSocketTest/aq;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/ar;->iF:Lcom/android/BluetoothSocketTest/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    const/4 v4, 0x0

    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v1, p2

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
