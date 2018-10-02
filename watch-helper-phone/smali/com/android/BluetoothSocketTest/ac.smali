.class final Lcom/android/BluetoothSocketTest/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ac(I)[Lcom/android/BluetoothSocketTest/MyMessage;
    .locals 1

    new-array v0, p1, [Lcom/android/BluetoothSocketTest/MyMessage;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/BluetoothSocketTest/ac;->r(Landroid/os/Parcel;)Lcom/android/BluetoothSocketTest/MyMessage;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/BluetoothSocketTest/ac;->ac(I)[Lcom/android/BluetoothSocketTest/MyMessage;

    move-result-object v0

    return-object v0
.end method

.method public r(Landroid/os/Parcel;)Lcom/android/BluetoothSocketTest/MyMessage;
    .locals 1

    new-instance v0, Lcom/android/BluetoothSocketTest/MyMessage;

    invoke-direct {v0, p1}, Lcom/android/BluetoothSocketTest/MyMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
