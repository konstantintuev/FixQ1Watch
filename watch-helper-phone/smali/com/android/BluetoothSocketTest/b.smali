.class final Lcom/android/BluetoothSocketTest/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/b;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/BluetoothSocketTest/a;Lcom/android/BluetoothSocketTest/a;)I
    .locals 3

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/b;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/BluetoothSocketTest/a;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/BluetoothSocketTest/a;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/BluetoothSocketTest/a;

    check-cast p2, Lcom/android/BluetoothSocketTest/a;

    invoke-virtual {p0, p1, p2}, Lcom/android/BluetoothSocketTest/b;->a(Lcom/android/BluetoothSocketTest/a;Lcom/android/BluetoothSocketTest/a;)I

    move-result v0

    return v0
.end method
