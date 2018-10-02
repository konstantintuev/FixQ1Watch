.class final Landroid/support/v4/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic bo:Landroid/support/v4/b/f;

.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I


# direct methods
.method constructor <init>(Landroid/support/v4/b/f;I)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/b/g;->bo:Landroid/support/v4/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/b/g;->mCanRemove:Z

    iput p2, p0, Landroid/support/v4/b/g;->mOffset:I

    invoke-virtual {p1}, Landroid/support/v4/b/f;->colGetSize()I

    move-result v0

    iput v0, p0, Landroid/support/v4/b/g;->mSize:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/b/g;->mIndex:I

    iget v1, p0, Landroid/support/v4/b/g;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/b/g;->bo:Landroid/support/v4/b/f;

    iget v1, p0, Landroid/support/v4/b/g;->mIndex:I

    iget v2, p0, Landroid/support/v4/b/g;->mOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/b/f;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/b/g;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/b/g;->mIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/b/g;->mCanRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/b/g;->mCanRemove:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/support/v4/b/g;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/b/g;->mIndex:I

    iget v0, p0, Landroid/support/v4/b/g;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/b/g;->mSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/b/g;->mCanRemove:Z

    iget-object v0, p0, Landroid/support/v4/b/g;->bo:Landroid/support/v4/b/f;

    iget v1, p0, Landroid/support/v4/b/g;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/b/f;->colRemoveAt(I)V

    return-void
.end method
