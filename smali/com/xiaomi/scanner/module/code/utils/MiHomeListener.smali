.class public Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;
.super Ljava/lang/Object;
.source "MiHomeListener.java"

# interfaces
.implements Lcom/xiaomi/scanner/module/code/utils/BarcodeScannerListener;


# static fields
.field private static GOOGLE_PLAY:Ljava/lang/String; = null

.field private static final MIHOME_APP_VERSION_CODE:I = 0xf66f

.field private static MIHOME_PKGNAME:Ljava/lang/String;

.field private static MIHOME_StARTWITH_ONE:Ljava/lang/String;

.field private static MIHOME_StARTWITH_TWO:Ljava/lang/String;

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static deStr:Ljava/lang/String;

.field private static i2Str:Ljava/lang/String;

.field private static ruStr:Ljava/lang/String;

.field private static sgStr:Ljava/lang/String;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "MiHomeListener"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "https://ru.home.mi.com"

    .line 27
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->ruStr:Ljava/lang/String;

    const-string v0, "https://i2.home.mi.com"

    .line 28
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->i2Str:Ljava/lang/String;

    const-string v0, "https://de.home.mi.com"

    .line 30
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->deStr:Ljava/lang/String;

    const-string v0, "https://sg.home.mi.com"

    .line 31
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->sgStr:Ljava/lang/String;

    const-string v0, "/do/home.html?f=xz"

    .line 32
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->MIHOME_StARTWITH_ONE:Ljava/lang/String;

    const-string v0, "/do/home.html?f=fnetsuoiea"

    .line 33
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->MIHOME_StARTWITH_TWO:Ljava/lang/String;

    const-string v0, "com.xiaomi.smarthome"

    .line 34
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->MIHOME_PKGNAME:Ljava/lang/String;

    const-string v0, "com.android.vending"

    .line 35
    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->GOOGLE_PLAY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->list:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->list:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->GOOGLE_PLAY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 7

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const-string v2, "com.xiaomi.smarthome.mitvconnect"

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->isMiHomeFnetsuoiea(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "checkUrl 1"

    invoke-static {v0, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->getEscapeEncodedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->MIHOME_PKGNAME:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 86
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUrl isMiHomeFnetsuoiea Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->showInstallDialog()V

    :goto_1
    return v3

    .line 94
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->isMiHomeXz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v4, "checkUrl 2"

    invoke-static {v0, v4}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->getEscapeEncodedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->MIHOME_PKGNAME:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/util/Util;->checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 99
    iget-object v4, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->MIHOME_PKGNAME:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/xiaomi/scanner/util/AppJumpUtils;->getAppVersionCodeNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkUrl 2 appVersionCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const v5, 0xf66f

    if-lt v4, v5, :cond_4

    .line 103
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 111
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 114
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUrl isMiHomeXz Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    const-string p1, "checkUrl 2 showUpdateDialog"

    .line 118
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->showUpdateDialog()V

    goto :goto_3

    :cond_5
    const-string p1, "checkUrl 2 showInstallDialog"

    .line 122
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->showInstallDialog()V

    :goto_3
    return v3

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private getEscapeEncodedURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 221
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEscapeEncodedURL before:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "+"

    const-string v2, "%2B"

    .line 222
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "?"

    .line 224
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 227
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "/"

    const-string v4, "%2F"

    .line 229
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEscapeEncodedURL after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private isMiHome(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->list:Ljava/util/ArrayList;

    .line 143
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->ruStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->list:Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->i2Str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->list:Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->deStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->list:Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->sgStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private isMiHomeFnetsuoiea(Ljava/lang/String;)Z
    .locals 1

    .line 132
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->MIHOME_StARTWITH_TWO:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->isMiHome(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isMiHomeXz(Ljava/lang/String;)Z
    .locals 1

    .line 136
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->MIHOME_StARTWITH_ONE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->isMiHome(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private showInstallDialog()V
    .locals 2

    .line 162
    new-instance v0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10012b

    .line 163
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setMessage(I)V

    const v1, 0x7f10012c

    .line 164
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setTitle(I)V

    const v1, 0x7f100129

    .line 165
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setButton(I)V

    .line 166
    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener$1;-><init>(Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->show()V

    .line 179
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method private showUpdateDialog()V
    .locals 2

    .line 187
    new-instance v0, Lcom/xiaomi/scanner/dialog/MiHomeDialog;

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10012d

    .line 188
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setMessage(I)V

    const v1, 0x7f10012e

    .line 189
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setTitle(I)V

    const v1, 0x7f10012a

    .line 190
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setButton(I)V

    .line 191
    new-instance v1, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener$2;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener$2;-><init>(Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-virtual {v0}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->show()V

    .line 203
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/dialog/MiHomeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleBarcode(Ljava/lang/String;Lcom/xiaomi/scanner/module/code/codec/QRCodeType;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->checkUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCodeModuleDestroy()V
    .locals 2

    .line 61
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCodeModuleDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
