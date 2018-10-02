.class public Lcom/android/BluetoothSocketTest/a;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;

.field private mPackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/a;->mLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/a;->mPackName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/BluetoothSocketTest/a;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public aJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/a;->mPackName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/a;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/a;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/a;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/a;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/a;->mLabel:Ljava/lang/String;

    return-object v0
.end method
