.class public Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;
.super Ljava/lang/Object;
.source "WifiAdmin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "WifiAdmin"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static IsAirModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getWifiApState()Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;
    .locals 4

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWifiApState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0xa

    .line 198
    :cond_0
    const-class v1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->WIFI_AP_STATE_FAILED:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    return-object v0
.end method


# virtual methods
.method public connectExitWifi(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p1

    return p1
.end method

.method public connectWifi(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 52
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "connectWifi config is null"

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    .line 56
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNetwork return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    if-gez p1, :cond_1

    return v0

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 65
    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "enableNetwork return false"

    .line 66
    invoke-static {v1, p1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result p1

    return p1
.end method

.method public connectWifiAndroidQ(Ljava/lang/String;Ljava/lang/String;ILandroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2

    .line 75
    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;-><init>()V

    .line 76
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setIsEnhancedOpen(Z)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 80
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    .line 82
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->build()Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p2

    .line 85
    new-instance p3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    const/16 p3, 0xc

    .line 87
    invoke-virtual {p1, p3}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez p2, :cond_3

    .line 93
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "connectivity"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 94
    :cond_3
    iget-object p2, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1, p4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 107
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 111
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string p3, ""

    aput-object p3, p2, p1

    .line 112
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 113
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p3, v4, :cond_1

    .line 115
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 116
    iget-object p3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p1

    .line 117
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 118
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->set(I)V

    .line 119
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, v3}, Ljava/util/BitSet;->set(I)V

    .line 120
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, v4}, Ljava/util/BitSet;->set(I)V

    .line 121
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 122
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 123
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->set(I)V

    .line 124
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 125
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_0

    :cond_1
    if-ne p3, v3, :cond_2

    .line 127
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 128
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 129
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 130
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 131
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 132
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 133
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 134
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 136
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 137
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 138
    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 139
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x4

    if-ne p3, v5, :cond_3

    .line 141
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 142
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 143
    iget-object p2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 144
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    .line 145
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 146
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 147
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 148
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 149
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 150
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "requirePMF"

    invoke-static {p2, v0, p1}, Lcom/xiaomi/scanner/util/ReflectUtil;->setFieldValueByFieldName(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    :try_start_0
    invoke-static {v0, p2}, Lcom/xiaomi/scanner/util/ReflectUtil;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 153
    sget-object p2, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reflect  requirePMF value  "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 159
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "error   IllegalAccessException "

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 156
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "error   NoSuchFieldException "

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getExitConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .line 215
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 216
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 220
    :cond_1
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "getExitConfiguration null"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getmWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 5

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 170
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 174
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_2

    .line 175
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public isSupportWpa3()Z
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result v0

    .line 232
    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportWpa3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->getWifiApState()Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;->WIFI_AP_STATE_ENABLED:Lcom/xiaomi/scanner/module/code/utils/WifiAdmin$WIFI_AP_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openWifi()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public setmWifiManager(Landroid/net/wifi/WifiManager;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public unRegisterQequestCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/WifiAdmin;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method
