.class public Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;
.super Ljava/lang/Object;
.source "CloudControlConfigResult.java"


# instance fields
.field private defaultSet:Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;

.field private otherSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/config/bean/OtherSetEntity;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultSet()Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->defaultSet:Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;

    return-object v0
.end method

.method public getOtherSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/config/bean/OtherSetEntity;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->otherSet:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->version:I

    return v0
.end method

.method public setDefaultSet(Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->defaultSet:Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;

    return-void
.end method

.method public setOtherSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/config/bean/OtherSetEntity;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->otherSet:Ljava/util/List;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudControlConfigResult{defaultSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->defaultSet:Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", otherSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->otherSet:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
