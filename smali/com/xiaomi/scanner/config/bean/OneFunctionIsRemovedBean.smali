.class public Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;
.super Ljava/lang/Object;
.source "OneFunctionIsRemovedBean.java"


# instance fields
.field private functionIsRemoved:Ljava/lang/Boolean;

.field private functionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;->functionIsRemoved:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getFunctionIsRemoved()Ljava/lang/Boolean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;->functionIsRemoved:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public setFunctionIsRemoved(Ljava/lang/Boolean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;->functionIsRemoved:Ljava/lang/Boolean;

    return-void
.end method

.method public setFunctionName(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;->functionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneFunctionIsRemovedBean{functionName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", functionIsRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/config/bean/OneFunctionIsRemovedBean;->functionIsRemoved:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
