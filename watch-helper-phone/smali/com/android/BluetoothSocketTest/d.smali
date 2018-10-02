.class public Lcom/android/BluetoothSocketTest/d;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private final gT:Landroid/view/View$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1090004

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/android/BluetoothSocketTest/e;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/e;-><init>(Lcom/android/BluetoothSocketTest/d;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/d;->gT:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/d;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/d;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/d;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/d;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/BluetoothSocketTest/d;->addAll(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/d;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/BluetoothSocketTest/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/BluetoothSocketTest/a;

    const v1, 0x7f0c0007

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0c0008

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/a;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c0009

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/d;->gT:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
