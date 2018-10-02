.class public Lcom/android/BluetoothSocketTest/bn;
.super Landroid/widget/BaseAdapter;


# static fields
.field public static iH:Ljava/util/HashMap;


# instance fields
.field private iI:Ljava/util/ArrayList;

.field private jj:Lcom/android/BluetoothSocketTest/bo;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/bn;->iI:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/bn;->init()V

    return-void
.end method

.method private m(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bn;->mContext:Landroid/content/Context;

    const-string v2, "notification_post"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "system_apps"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ae(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->iI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "package"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->iI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/BluetoothSocketTest/bo;

    invoke-direct {v0}, Lcom/android/BluetoothSocketTest/bo;-><init>()V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->jj:Lcom/android/BluetoothSocketTest/bo;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bn;->jj:Lcom/android/BluetoothSocketTest/bo;

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/BluetoothSocketTest/bo;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bn;->jj:Lcom/android/BluetoothSocketTest/bo;

    const v0, 0x7f0c0002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/BluetoothSocketTest/bo;->iK:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bn;->jj:Lcom/android/BluetoothSocketTest/bo;

    const v0, 0x7f0c0001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/android/BluetoothSocketTest/bo;->iL:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->jj:Lcom/android/BluetoothSocketTest/bo;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->jj:Lcom/android/BluetoothSocketTest/bo;

    iget-object v1, v0, Lcom/android/BluetoothSocketTest/bo;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->iI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "icon"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->jj:Lcom/android/BluetoothSocketTest/bo;

    iget-object v1, v0, Lcom/android/BluetoothSocketTest/bo;->iK:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->iI:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "title"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->jj:Lcom/android/BluetoothSocketTest/bo;

    iget-object v1, v0, Lcom/android/BluetoothSocketTest/bo;->iL:Landroid/widget/CheckBox;

    sget-object v0, Lcom/android/BluetoothSocketTest/bn;->iH:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/BluetoothSocketTest/bo;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bn;->jj:Lcom/android/BluetoothSocketTest/bo;

    goto :goto_0
.end method

.method public init()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/BluetoothSocketTest/bn;->iH:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bn;->iI:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/BluetoothSocketTest/bn;->iH:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/bn;->ae(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/BluetoothSocketTest/bn;->m(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
