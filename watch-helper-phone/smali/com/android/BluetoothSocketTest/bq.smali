.class Lcom/android/BluetoothSocketTest/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic jm:Lcom/android/BluetoothSocketTest/bp;


# direct methods
.method constructor <init>(Lcom/android/BluetoothSocketTest/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/bq;->jm:Lcom/android/BluetoothSocketTest/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/BluetoothSocketTest/bo;

    iget-object v1, v0, Lcom/android/BluetoothSocketTest/bo;->iL:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    sget-object v1, Lcom/android/BluetoothSocketTest/bn;->iH:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lcom/android/BluetoothSocketTest/bo;->iL:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
