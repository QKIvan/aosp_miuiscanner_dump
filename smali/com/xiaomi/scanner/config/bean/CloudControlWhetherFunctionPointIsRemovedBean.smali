.class public Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;
.super Ljava/lang/Object;
.source "CloudControlWhetherFunctionPointIsRemovedBean.java"


# instance fields
.field private homeFunctionPointsIsRemoveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;",
            ">;"
        }
    .end annotation
.end field

.field private mobilePhone3dModelLinkAddress:Ljava/lang/String;

.field private reset_auto_focus_delay_millis:Ljava/lang/String;

.field private scanMiLogoThreshold:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->mobilePhone3dModelLinkAddress:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->scanMiLogoThreshold:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->reset_auto_focus_delay_millis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHomeFunctionPointsIsRemoveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->homeFunctionPointsIsRemoveList:Ljava/util/List;

    return-object v0
.end method

.method public getMobilePhone3dModelLinkAddress()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->mobilePhone3dModelLinkAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getReset_auto_focus_delay_millis()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->reset_auto_focus_delay_millis:Ljava/lang/String;

    return-object v0
.end method

.method public getScanMiLogoThreshold()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->scanMiLogoThreshold:Ljava/lang/String;

    return-object v0
.end method

.method public setHomeFunctionPointsIsRemoveList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->homeFunctionPointsIsRemoveList:Ljava/util/List;

    return-void
.end method

.method public setMobilePhone3dModelLinkAddress(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->mobilePhone3dModelLinkAddress:Ljava/lang/String;

    return-void
.end method

.method public setReset_auto_focus_delay_millis(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->reset_auto_focus_delay_millis:Ljava/lang/String;

    return-void
.end method

.method public setScanMiLogoThreshold(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->scanMiLogoThreshold:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudControlWhetherFunctionPointIsRemovedBean{homeFunctionPointsIsRemoveList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->homeFunctionPointsIsRemoveList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mobilePhone3dModelLinkAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->mobilePhone3dModelLinkAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", scanMiLogoThreshold=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->scanMiLogoThreshold:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reset_auto_focus_delay_millis=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/scanner/config/bean/CloudControlWhetherFunctionPointIsRemovedBean;->reset_auto_focus_delay_millis:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
