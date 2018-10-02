.class public Lcom/android/BluetoothSocketTest/bb;
.super Landroid/app/Fragment;


# instance fields
.field private hj:Ljava/util/ArrayList;

.field private iM:Landroid/view/View;

.field private iN:Landroid/widget/ListView;

.field private iO:Landroid/widget/Button;

.field private iP:Landroid/widget/Button;

.field private iQ:Lcom/android/BluetoothSocketTest/az;

.field private iR:Z

.field private iS:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iS:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iS:Landroid/widget/Toast;

    iput-object p2, p0, Lcom/android/BluetoothSocketTest/bb;->hj:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/BluetoothSocketTest/az;

    invoke-direct {v0, p1, p2}, Lcom/android/BluetoothSocketTest/az;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iQ:Lcom/android/BluetoothSocketTest/az;

    return-void
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/bb;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->hj:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/bb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/BluetoothSocketTest/bb;->iR:Z

    return p1
.end method

.method private af(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iS:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/bb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iS:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iS:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iS:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/BluetoothSocketTest/bb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/bb;->iR:Z

    return v0
.end method

.method private bk()V
    .locals 5

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :goto_0
    sget-object v0, Lcom/android/BluetoothSocketTest/az;->iH:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/android/BluetoothSocketTest/az;->iH:Ljava/util/HashMap;

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

    iget-object v4, p0, Lcom/android/BluetoothSocketTest/bb;->iQ:Lcom/android/BluetoothSocketTest/az;

    invoke-virtual {v4, v1}, Lcom/android/BluetoothSocketTest/az;->ae(I)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/bb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "notification_post"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "person_apps"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const v0, 0x7f080068

    invoke-direct {p0, v0}, Lcom/android/BluetoothSocketTest/bb;->af(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/BluetoothSocketTest/bb;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iO:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/android/BluetoothSocketTest/bb;)Lcom/android/BluetoothSocketTest/az;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iQ:Lcom/android/BluetoothSocketTest/az;

    return-object v0
.end method

.method static synthetic e(Lcom/android/BluetoothSocketTest/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/bb;->bk()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f03000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iM:Landroid/view/View;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iM:Landroid/view/View;

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iN:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iN:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/bb;->iQ:Lcom/android/BluetoothSocketTest/az;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iN:Landroid/widget/ListView;

    new-instance v1, Lcom/android/BluetoothSocketTest/bc;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/bc;-><init>(Lcom/android/BluetoothSocketTest/bb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iM:Landroid/view/View;

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iO:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iO:Landroid/widget/Button;

    new-instance v1, Lcom/android/BluetoothSocketTest/bd;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/bd;-><init>(Lcom/android/BluetoothSocketTest/bb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iM:Landroid/view/View;

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iP:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iP:Landroid/widget/Button;

    new-instance v1, Lcom/android/BluetoothSocketTest/be;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/be;-><init>(Lcom/android/BluetoothSocketTest/bb;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/bb;->iM:Landroid/view/View;

    return-object v0
.end method
