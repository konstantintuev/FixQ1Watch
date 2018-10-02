.class public Lcom/android/BluetoothSocketTest/NotifyService;
.super Landroid/app/Service;


# static fields
.field private static final hR:Ljava/util/Comparator;


# instance fields
.field count:I

.field private hO:I

.field private hP:I

.field private final hQ:Ljava/util/ArrayList;

.field private final hS:Landroid/bluetooth/BluetoothAdapter;

.field private hT:Lcom/android/BluetoothSocketTest/n;

.field protected hU:Ljava/lang/String;

.field protected hV:Ljava/lang/String;

.field protected hW:Ljava/lang/String;

.field private hX:Lcom/android/internal/telephony/ITelephony;

.field private hY:Landroid/widget/Toast;

.field private hZ:Landroid/app/AlertDialog;

.field private iA:Landroid/app/DownloadManager;

.field private iB:Landroid/content/BroadcastReceiver;

.field private iC:Lcom/android/BluetoothSocketTest/v;

.field private ia:Z

.field private ib:Z

.field private ic:Z

.field private id:Z

.field private ie:Z

.field private if:Z

.field private ig:Z

.field private ih:Landroid/content/SharedPreferences;

.field private ii:Landroid/content/SharedPreferences$Editor;

.field private ij:Landroid/os/PowerManager;

.field private ik:Landroid/media/SoundPool;

.field private il:I

.field im:Ljava/lang/Runnable;

.field private final in:Lcom/android/BluetoothSocketTest/w;

.field private io:Landroid/database/ContentObserver;

.field private ip:Landroid/database/ContentObserver;

.field protected iq:Z

.field private ir:Landroid/content/BroadcastReceiver;

.field private is:Landroid/content/BroadcastReceiver;

.field private it:Landroid/content/BroadcastReceiver;

.field private final iu:Landroid/os/RemoteCallbackList;

.field private iv:Landroid/telephony/PhoneStateListener;

.field private iw:Landroid/content/BroadcastReceiver;

.field private ix:J

.field private iy:I

.field private iz:Lcom/android/BluetoothSocketTest/u;

.field private final mHandler:Landroid/os/Handler;

.field private mUri:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/BluetoothSocketTest/ad;

    invoke-direct {v0}, Lcom/android/BluetoothSocketTest/ad;-><init>()V

    sput-object v0, Lcom/android/BluetoothSocketTest/NotifyService;->hR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hO:I

    iput v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hP:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hQ:Ljava/util/ArrayList;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hS:Landroid/bluetooth/BluetoothAdapter;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hV:Ljava/lang/String;

    iput v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->il:I

    iput v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->count:I

    new-instance v0, Lcom/android/BluetoothSocketTest/aq;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/aq;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/BluetoothSocketTest/au;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/au;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->im:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/BluetoothSocketTest/av;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/av;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->in:Lcom/android/BluetoothSocketTest/w;

    new-instance v0, Lcom/android/BluetoothSocketTest/aw;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/BluetoothSocketTest/aw;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->io:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/BluetoothSocketTest/ax;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/BluetoothSocketTest/ax;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ip:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/BluetoothSocketTest/ay;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/ay;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ir:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/BluetoothSocketTest/ae;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/ae;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->is:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/BluetoothSocketTest/af;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/af;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->it:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iu:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/BluetoothSocketTest/ag;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/ag;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iv:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/BluetoothSocketTest/ah;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/ah;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iw:Landroid/content/BroadcastReceiver;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ix:J

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iy:I

    new-instance v0, Lcom/android/BluetoothSocketTest/aj;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/aj;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iB:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/BluetoothSocketTest/ak;

    invoke-direct {v0, p0}, Lcom/android/BluetoothSocketTest/ak;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iC:Lcom/android/BluetoothSocketTest/v;

    return-void
.end method

.method static synthetic A(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/w;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->in:Lcom/android/BluetoothSocketTest/w;

    return-object v0
.end method

.method static synthetic B(Lcom/android/BluetoothSocketTest/NotifyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ie:Z

    return v0
.end method

.method static synthetic C(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/v;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iC:Lcom/android/BluetoothSocketTest/v;

    return-object v0
.end method

.method static synthetic D(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/u;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iz:Lcom/android/BluetoothSocketTest/u;

    return-object v0
.end method

.method static synthetic E(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bh()V

    return-void
.end method

.method static synthetic F(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bg()V

    return-void
.end method

.method static synthetic G(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/NotifyService;I)I
    .locals 0

    iput p1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->il:I

    return p1
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/NotifyService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hZ:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ik:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/u;)Lcom/android/BluetoothSocketTest/u;
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iz:Lcom/android/BluetoothSocketTest/u;

    return-object p1
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/NotifyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/BluetoothSocketTest/NotifyService;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 9

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v7

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v2, v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date  desc"

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    move v0, v7

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const-string v2, "number"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v8

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/NotifyService;Lcom/android/BluetoothSocketTest/MyMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/BluetoothSocketTest/NotifyService;->b(Lcom/android/BluetoothSocketTest/MyMessage;)V

    return-void
.end method

.method static synthetic a(Lcom/android/BluetoothSocketTest/NotifyService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/BluetoothSocketTest/NotifyService;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "PREF_MISS_SMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean p2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ib:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "PREF_READ_SMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean p2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ic:Z

    goto :goto_0

    :cond_2
    const-string v0, "PREF_MISS_CALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean p2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->id:Z

    goto :goto_0

    :cond_3
    const-string v0, "PREF_INCOMMING_CALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean p2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ie:Z

    goto :goto_0

    :cond_4
    const-string v0, "AUTO_UPDATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean p2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->if:Z

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->if:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iw:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iw:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_6
    const-string v0, "PREF_NOTI_FUN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ig:Z

    goto :goto_0
.end method

.method private aS()V
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iz:Lcom/android/BluetoothSocketTest/u;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/BluetoothSocketTest/u;

    invoke-direct {v0}, Lcom/android/BluetoothSocketTest/u;-><init>()V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iz:Lcom/android/BluetoothSocketTest/u;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/BluetoothSocketTest/ai;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/ai;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private aT()V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private aU()V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private aV()Landroid/app/AlertDialog;
    .locals 4

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aT()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x3

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/BluetoothSocketTest/ao;

    invoke-direct {v3, p0}, Lcom/android/BluetoothSocketTest/ao;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/BluetoothSocketTest/ap;

    invoke-direct {v1, p0}, Lcom/android/BluetoothSocketTest/ap;-><init>(Lcom/android/BluetoothSocketTest/NotifyService;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aU()V

    return-object v0
.end method

.method private aW()V
    .locals 3

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/BluetoothSocketTest/n;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/BluetoothSocketTest/n;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/n;->i(Z)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/n;->stop()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hS:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hS:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/n;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hS:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/BluetoothSocketTest/n;->a(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    return-void
.end method

.method private aY()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aZ()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hX:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private ad(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iu:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iu:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/BluetoothSocketTest/INotifyServiceCallback;

    iget-object v3, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hW:Ljava/lang/String;

    invoke-interface {v0, p1, v3}, Lcom/android/BluetoothSocketTest/INotifyServiceCallback;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iu:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/BluetoothSocketTest/NotifyService;)I
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->il:I

    return v0
.end method

.method static synthetic b(Lcom/android/BluetoothSocketTest/NotifyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mUri:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/android/BluetoothSocketTest/MyMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    invoke-virtual {v0, p1}, Lcom/android/BluetoothSocketTest/n;->R(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/android/BluetoothSocketTest/NotifyService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/BluetoothSocketTest/NotifyService;->ad(I)V

    return-void
.end method

.method private ba()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bc()V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->io:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->io:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://call_log/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ip:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private bb()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->is:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "dhy_delete_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ir:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_post_notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action_remove_notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "check_notification_listener"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->it:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->if:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iw:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private bc()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->io:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->io:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->io:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->io:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ip:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ip:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "DHYCO"

    const-string v1, "unregisterObserver fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bd()I
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "type = 1 and read = 0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method private be()I
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "read = 0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method private bf()I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "type"

    aput-object v3, v2, v6

    const-string v3, " type=? and new=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "3"

    aput-object v5, v4, v6

    const-string v5, "1"

    aput-object v5, v4, v7

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method private bg()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iA:Landroid/app/DownloadManager;

    new-instance v0, Landroid/app/DownloadManager$Request;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iA:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ix:J

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iB:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/BluetoothSocketTest/NotifyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bh()V

    return-void
.end method

.method private bh()V
    .locals 6

    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ix:J

    aput-wide v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iA:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iy:I

    iget v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iy:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v0, "DHYCO"

    const-string v1, "STATUS_PAUSED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_1
    const-string v0, "DHYCO"

    const-string v1, "STATUS_PENDING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_2
    const-string v0, "DHYCO"

    const-string v1, "STATUS_RUNNING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iA:Landroid/app/DownloadManager;

    iget-wide v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ix:J

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iA:Landroid/app/DownloadManager;

    iget-wide v4, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ix:J

    invoke-virtual {v2, v4, v5}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->startActivity(Landroid/content/Intent;)V

    const-string v0, "DHYCO"

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_4
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iB:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iy:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const-string v0, "Download failed !"

    invoke-direct {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->k(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ix:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iz:Lcom/android/BluetoothSocketTest/u;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private bi()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/BluetoothSocketTest/NotificationListener;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/BluetoothSocketTest/NotificationListener;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method static synthetic bj()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/android/BluetoothSocketTest/NotifyService;->hR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic c(Lcom/android/BluetoothSocketTest/NotifyService;I)I
    .locals 0

    iput p1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hP:I

    return p1
.end method

.method static synthetic c(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/android/BluetoothSocketTest/NotifyService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/BluetoothSocketTest/NotifyService;->k(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/android/BluetoothSocketTest/NotifyService;I)I
    .locals 0

    iput p1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hO:I

    return p1
.end method

.method static synthetic d(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hZ:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aT()V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const-string v6, ""

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "number"

    aput-object v5, v2, v4

    const-string v4, "display_name"

    aput-object v4, v2, v7

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "label"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aU()V

    return-void
.end method

.method static synthetic g(Lcom/android/BluetoothSocketTest/NotifyService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hQ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/android/BluetoothSocketTest/NotifyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ib:Z

    return v0
.end method

.method static synthetic i(Lcom/android/BluetoothSocketTest/NotifyService;)I
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hP:I

    return v0
.end method

.method static synthetic j(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/app/AlertDialog;
    .locals 1

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aV()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aY()V

    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hY:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hY:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hY:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hY:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hY:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ii:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic m(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iu:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic n(Lcom/android/BluetoothSocketTest/NotifyService;)Lcom/android/BluetoothSocketTest/n;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    return-object v0
.end method

.method static synthetic o(Lcom/android/BluetoothSocketTest/NotifyService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hS:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic p(Lcom/android/BluetoothSocketTest/NotifyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ia:Z

    return v0
.end method

.method static synthetic q(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aS()V

    return-void
.end method

.method static synthetic r(Lcom/android/BluetoothSocketTest/NotifyService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bd()I

    move-result v0

    return v0
.end method

.method static synthetic s(Lcom/android/BluetoothSocketTest/NotifyService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->be()I

    move-result v0

    return v0
.end method

.method static synthetic t(Lcom/android/BluetoothSocketTest/NotifyService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bf()I

    move-result v0

    return v0
.end method

.method static synthetic u(Lcom/android/BluetoothSocketTest/NotifyService;)I
    .locals 1

    iget v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hO:I

    return v0
.end method

.method static synthetic v(Lcom/android/BluetoothSocketTest/NotifyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->id:Z

    return v0
.end method

.method static synthetic w(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aW()V

    return-void
.end method

.method static synthetic x(Lcom/android/BluetoothSocketTest/NotifyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ic:Z

    return v0
.end method

.method static synthetic y(Lcom/android/BluetoothSocketTest/NotifyService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bi()V

    return-void
.end method

.method static synthetic z(Lcom/android/BluetoothSocketTest/NotifyService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ig:Z

    return v0
.end method


# virtual methods
.method aX()V
    .locals 3

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void

    :array_0
    .array-data 8
        0x1f4
        0x1f4
        0x1f4
        0x3e8
    .end array-data
.end method

.method public aZ()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-class v3, Landroid/telephony/TelephonyManager;

    :try_start_0
    const-string v4, "getITelephony"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hX:Lcom/android/internal/telephony/ITelephony;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/n;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-class v0, Lcom/android/BluetoothSocketTest/INotifyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->in:Lcom/android/BluetoothSocketTest/w;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    const v6, 0x7f070002

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ij:Landroid/os/PowerManager;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ih:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ih:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ii:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ih:Landroid/content/SharedPreferences;

    const-string v1, "device_addr"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hU:Ljava/lang/String;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ih:Landroid/content/SharedPreferences;

    const-string v3, "device_name"

    iget-object v4, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hW:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hW:Ljava/lang/String;

    const-string v2, "PREF_MISS_SMS"

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ib:Z

    const-string v2, "PREF_READ_SMS"

    const v3, 0x7f070001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ic:Z

    const-string v2, "PREF_MISS_CALL"

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->id:Z

    const-string v2, "PREF_INCOMMING_CALL"

    const v3, 0x7f070003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ie:Z

    const-string v2, "PREF_NOTI_FUN"

    const v3, 0x7f070004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ig:Z

    const-string v2, "AUTO_UPDATE"

    const v3, 0x7f070006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->if:Z

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iv:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bd()I

    move-result v0

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->be()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hP:I

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bf()I

    move-result v0

    iput v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hO:I

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->ba()V

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->bb()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ik:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xf

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ik:Landroid/media/SoundPool;

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ij:Landroid/os/PowerManager;

    const v1, 0x3000001a

    invoke-virtual {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ia:Z

    invoke-direct {p0}, Lcom/android/BluetoothSocketTest/NotifyService;->aW()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ia:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ik:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ik:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ik:Landroid/media/SoundPool;

    :cond_0
    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iu:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    invoke-virtual {v0}, Lcom/android/BluetoothSocketTest/n;->stop()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->hT:Lcom/android/BluetoothSocketTest/n;

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->is:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->ir:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->it:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->if:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/BluetoothSocketTest/NotifyService;->iw:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/BluetoothSocketTest/NotifyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DHYCO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
