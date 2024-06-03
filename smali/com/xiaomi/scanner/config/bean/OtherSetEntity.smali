.class public Lcom/xiaomi/scanner/config/bean/OtherSetEntity;
.super Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;
.source "OtherSetEntity.java"


# instance fields
.field private appVersion:Ljava/lang/String;

.field private phone_model:Ljava/lang/String;

.field private systemAndroidVersionCode:Ljava/lang/String;

.field private systemMiuiVersionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_model()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->phone_model:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemAndroidVersionCode()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->systemAndroidVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemMiuiVersionCode()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->systemMiuiVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setPhone_model(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->phone_model:Ljava/lang/String;

    return-void
.end method

.method public setSystemAndroidVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->systemAndroidVersionCode:Ljava/lang/String;

    return-void
.end method

.method public setSystemMiuiVersionCode(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->systemMiuiVersionCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtherSetEntity{systemAndroidVersionCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->systemAndroidVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", systemMiuiVersionCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->systemMiuiVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phone_model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->phone_model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
