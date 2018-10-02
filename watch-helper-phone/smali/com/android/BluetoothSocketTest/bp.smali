.class public Lcom/android/BluetoothSocketTest/bp;
.super Landroid/app/Fragment;


# instance fields
.field private hk:Ljava/util/ArrayList;

.field private iM:Landroid/view/View;

.field private iO:Landroid/widget/Button;

.field private iP:Landroid/widget/Button;

.field private iR:Z

.field private iS:Landroid/widget/Toast;

.field private jk:Landroid/widget/ListView;

.field private jl:Lcom/android/BluetoothSocketTest/bn;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iS:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iS:Landroid/widget/Toast;

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/bp;->hk:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/BluetoothSocketTest/bn;

    invoke-direct {v0, p1, p2}, Lcom/android/BluetoothSocketTest/bn;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->jl:Lcom/android/BluetoothSocketTest/bn;

    return-void
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/bp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->hk:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/bp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/BluetoothSocketTest/bp;->iR:Z

    return p1
.end method

.method private af(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iS:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/bp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iS:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iS:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iS:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/BluetoothSocketTest/bp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/bp;->iR:Z

    return v0
.end method

.method private bk()V
    .locals 5

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_0
    sget-object v0, Lcom/android/BluetoothSocketTest/bn;->iH:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/android/BluetoothSocketTest/bn;->iH:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/BluetoothSocketTest/bp;->jl:Lcom/android/BluetoothSocketTest/bn;

    invoke-virtual {v4, v1}, Lcom/android/BluetoothSocketTest/bn;->ae(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/bp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "notification_post"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "system_apps"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const v0, 0x7f080068

    invoke-direct {p0, v0}, Lcom/android/BluetoothSocketTest/bp;->af(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/BluetoothSocketTest/bp;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iO:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/android/BluetoothSocketTest/bp;)Lcom/android/BluetoothSocketTest/bn;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->jl:Lcom/android/BluetoothSocketTest/bn;

    return-object v0
.end method

.method static synthetic e(Lcom/android/BluetoothSocketTest/bp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/bp;->bk()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03000c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iM:Landroid/view/View;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iM:Landroid/view/View;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->jk:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->jk:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bp;->jl:Lcom/android/BluetoothSocketTest/bn;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->jk:Landroid/widget/ListView;

    new-instance v1, Lcom/android/BluetoothSocketTest/bq;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/bq;-><init>(Lcom/android/BluetoothSocketTest/bp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iM:Landroid/view/View;

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iO:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iO:Landroid/widget/Button;

    new-instance v1, Lcom/android/BluetoothSocketTest/br;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/br;-><init>(Lcom/android/BluetoothSocketTest/bp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iM:Landroid/view/View;

    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iP:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iP:Landroid/widget/Button;

    new-instance v1, Lcom/android/BluetoothSocketTest/bs;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/bs;-><init>(Lcom/android/BluetoothSocketTest/bp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bp;->iM:Landroid/view/View;

    return-object v0
.end method
