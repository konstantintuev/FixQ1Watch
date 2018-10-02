.class public final Landroid/support/v4/media/b;
.super Ljava/lang/Object;


# instance fields
.field private aL:Ljava/lang/String;

.field private aM:Ljava/lang/CharSequence;

.field private aN:Landroid/net/Uri;

.field private mDescription:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/media/b;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/b;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Landroid/support/v4/media/b;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/b;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/media/b;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/b;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Landroid/net/Uri;)Landroid/support/v4/media/b;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/b;->aN:Landroid/net/Uri;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/media/b;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/b;->aM:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/media/b;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/b;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Landroid/support/v4/media/b;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/b;->aL:Ljava/lang/String;

    return-object p0
.end method

.method public t()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 9

    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object v1, p0, Landroid/support/v4/media/b;->aL:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/b;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/media/b;->aM:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/support/v4/media/b;->mDescription:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/v4/media/b;->mIcon:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/support/v4/media/b;->aN:Landroid/net/Uri;

    iget-object v7, p0, Landroid/support/v4/media/b;->mExtras:Landroid/os/Bundle;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/support/v4/media/a;)V

    return-object v0
.end method
