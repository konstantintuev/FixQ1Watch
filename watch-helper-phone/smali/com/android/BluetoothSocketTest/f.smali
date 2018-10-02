.class public Lcom/android/BluetoothSocketTest/f;
.super Landroid/app/ListFragment;

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field gV:Lcom/android/BluetoothSocketTest/d;

.field gW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/f;->gV:Lcom/android/BluetoothSocketTest/d;

    invoke-virtual {v0, p2}, Lcom/android/BluetoothSocketTest/d;->b(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/f;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/BluetoothSocketTest/f;->setListShown(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/BluetoothSocketTest/f;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v0, "No applications"

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/f;->setEmptyText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/f;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/android/BluetoothSocketTest/d;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/BluetoothSocketTest/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/f;->gV:Lcom/android/BluetoothSocketTest/d;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/f;->gV:Lcom/android/BluetoothSocketTest/d;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/f;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v2}, Lcom/android/BluetoothSocketTest/f;->setListShown(Z)V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/f;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    new-instance v0, Lcom/android/BluetoothSocketTest/g;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/BluetoothSocketTest/g;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const-string v0, "Search"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    const-string v0, "DHYCO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/BluetoothSocketTest/f;->a(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/f;->gV:Lcom/android/BluetoothSocketTest/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/d;->b(Ljava/util/List;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/android/BluetoothSocketTest/f;->gW:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/f;->gV:Lcom/android/BluetoothSocketTest/d;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/d;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/f;->gW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
