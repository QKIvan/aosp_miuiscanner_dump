.class public Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;
.super Landroid/app/Fragment;
.source "TrackingNumFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private bottom_layout:Landroid/widget/LinearLayout;

.field private btn_copy:Landroid/widget/LinearLayout;

.field private btn_details:Landroid/widget/LinearLayout;

.field private btn_queryMore:Landroid/widget/Button;

.field private btn_query_AI:Landroid/widget/Button;

.field private btn_query_jd:Landroid/widget/Button;

.field private btn_query_mishop:Landroid/widget/Button;

.field private btn_query_num:Landroid/widget/Button;

.field private btn_query_tb:Landroid/widget/Button;

.field private content:Landroid/widget/TextView;

.field private data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

.field private dataLayout:Landroid/widget/ScrollView;

.field private layout:Landroid/widget/RelativeLayout;

.field private mActivity:Landroid/content/Context;

.field private mResult:Ljava/lang/String;

.field private noDataLayout:Landroid/widget/LinearLayout;

.field private notData_waybillNum:Landroid/widget/TextView;

.field private state:Landroid/widget/TextView;

.field private stateIcon:Landroid/widget/ImageView;

.field private time:Landroid/widget/TextView;

.field private timeYear:Landroid/widget/TextView;

.field private trackingCom:Ljava/lang/String;

.field private trackingNum:Ljava/lang/String;

.field private waybillNum:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "TrackingNumFragment"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->trackingNum:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->trackingCom:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->copyToClipboard()V

    return-void
.end method

.method private copyToClipboard()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->mActivity:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "mActivity is null"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 126
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->mActivity:Landroid/content/Context;

    const v1, 0x7f10008a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static formatHHMM(J)Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 210
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v1, "HH:mm"

    invoke-direct {p0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 212
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYYMM(J)Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 198
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v1, "MM-dd"

    invoke-direct {p0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 200
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringToDate(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 182
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 183
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 185
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 190
    :goto_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a01ae

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->time:Landroid/widget/TextView;

    const v0, 0x7f0a01af

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->timeYear:Landroid/widget/TextView;

    const v0, 0x7f0a01aa

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->content:Landroid/widget/TextView;

    const v0, 0x7f0a01ab

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0066

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_details:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01d3

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->waybillNum:Landroid/widget/TextView;

    const v0, 0x7f0a01ac

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->state:Landroid/widget/TextView;

    const v0, 0x7f0a01ad

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->stateIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0088

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->dataLayout:Landroid/widget/ScrollView;

    const v0, 0x7f0a010f

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->notData_waybillNum:Landroid/widget/TextView;

    const v0, 0x7f0a0064

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_AI:Landroid/widget/Button;

    const v0, 0x7f0a010b

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->noDataLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0061

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_queryMore:Landroid/widget/Button;

    const v0, 0x7f0a0062

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_tb:Landroid/widget/Button;

    const v0, 0x7f0a005f

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_jd:Landroid/widget/Button;

    const v0, 0x7f0a0060

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_mishop:Landroid/widget/Button;

    const v0, 0x7f0a0063

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_num:Landroid/widget/Button;

    const v0, 0x7f0a0065

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_copy:Landroid/widget/LinearLayout;

    const v0, 0x7f0a012f

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->bottom_layout:Landroid/widget/LinearLayout;

    .line 92
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_details:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_AI:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_queryMore:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_tb:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_jd:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_mishop:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_query_num:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->btn_copy:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment$1;-><init>(Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->waybillNum:Landroid/widget/TextView;

    new-instance v0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment$2;-><init>(Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private jumpAIQuery()V
    .locals 2

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.personalassistant.action.EXPRESS_QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private jumpExpressDelivery()V
    .locals 0

    return-void
.end method

.method private jumpExpressDeliveryToQuery()V
    .locals 0

    return-void
.end method


# virtual methods
.method public hideView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->layout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->layout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 222
    :pswitch_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->jumpExpressDelivery()V

    goto :goto_0

    .line 226
    :pswitch_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->copyToClipboard()V

    .line 227
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->jumpAIQuery()V

    goto :goto_0

    .line 247
    :pswitch_3
    sget-object p1, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "btn_query_tracknum"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_4
    sget-object p1, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "btn_query_tb"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_5
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->jumpExpressDeliveryToQuery()V

    goto :goto_0

    .line 243
    :pswitch_6
    sget-object p1, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "btn_query_mishop"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :pswitch_7
    sget-object p1, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "btn_query_jd"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a005f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00c4

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->mActivity:Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public showNoDataLayout(Ljava/lang/String;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->noDataLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->dataLayout:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->bottom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->mResult:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->notData_waybillNum:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showResult(Ljava/lang/String;)V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->dataLayout:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->bottom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->noDataLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/bean/TrackingNumBean;

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

    .line 154
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->timeYear:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getTime()Ljava/lang/String;

    move-result-object p1

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->getStringToDate(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->formatYYMM(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->getStringToDate(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->formatHHMM(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->waybillNum:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getNu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->state:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getStateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getNu()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->trackingNum:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getCom()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->trackingCom:Ljava/lang/String;

    .line 164
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getStateImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->stateIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 165
    sget-object p1, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "img  ==   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/TrackingNumFragment;->data:Lcom/xiaomi/scanner/bean/TrackingNumBean;

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/TrackingNumBean;->getData()Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/bean/TrackingNumBean$DataBean;->getStateImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
