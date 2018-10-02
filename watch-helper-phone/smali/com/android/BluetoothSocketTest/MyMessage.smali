.class public Lcom/android/BluetoothSocketTest/MyMessage;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCmd:I

.field private mDisplayName:Ljava/lang/String;

.field private mFromAddress:Ljava/lang/String;

.field public mIconBitmapBytes:[B

.field public mLabel:Ljava/lang/String;

.field private mMsgContent:Ljava/lang/String;

.field public mPackName:Ljava/lang/String;

.field private mType:I

.field private notiId:I

.field private tickerText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/BluetoothSocketTest/ac;

    invoke-direct {v0}, Lcom/android/BluetoothSocketTest/ac;-><init>()V

    sput-object v0, Lcom/android/BluetoothSocketTest/MyMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    iput p1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    iput p1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mMsgContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    iput p1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mMsgContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mFromAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    iput p1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mMsgContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mFromAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mDisplayName:Ljava/lang/String;

    iput p5, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mMsgContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mFromAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->tickerText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->notiId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mMsgContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    iput p2, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mMsgContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    iput-object p3, p0, Lcom/android/BluetoothSocketTest/MyMessage;->tickerText:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mLabel:Ljava/lang/String;

    iput p4, p0, Lcom/android/BluetoothSocketTest/MyMessage;->notiId:I

    iput p5, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    return-void
.end method

.method public static getBitmap([B)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapBytes(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toByteArray(Lcom/android/BluetoothSocketTest/MyMessage;)[B
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static toMyMessage([B)Lcom/android/BluetoothSocketTest/MyMessage;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/BluetoothSocketTest/MyMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "DHYCO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const-string v2, "DHYCO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCmd()I
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mFromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mMsgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    return v0
.end method

.method public getNotiId()I
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->notiId:I

    return v0
.end method

.method public getTickerText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->tickerText:Ljava/lang/String;

    return-object v0
.end method

.method public setmDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mMsgContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mFromAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->tickerText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/BluetoothSocketTest/MyMessage;->notiId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mMsgContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mFromAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mCmd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mPackName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->mIconBitmapBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->tickerText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/BluetoothSocketTest/MyMessage;->notiId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
