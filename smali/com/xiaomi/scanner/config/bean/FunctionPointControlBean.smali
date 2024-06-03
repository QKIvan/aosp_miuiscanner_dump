.class public Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;
.super Ljava/lang/Object;
.source "FunctionPointControlBean.java"


# instance fields
.field private alpha_enable:Z

.field private dev_enable:Z

.field private id:I

.field private stable_enable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->id:I

    return v0
.end method

.method public isAlpha_enable()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->alpha_enable:Z

    return v0
.end method

.method public isDev_enable()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->dev_enable:Z

    return v0
.end method

.method public isStable_enable()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->stable_enable:Z

    return v0
.end method

.method public setAlpha_enable(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->alpha_enable:Z

    return-void
.end method

.method public setDev_enable(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->dev_enable:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->id:I

    return-void
.end method

.method public setStable_enable(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->stable_enable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FunctionPointControlBean{dev_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->dev_enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", alpha_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->alpha_enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stable_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->stable_enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
