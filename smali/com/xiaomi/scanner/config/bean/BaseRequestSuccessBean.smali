.class public Lcom/xiaomi/scanner/config/bean/BaseRequestSuccessBean;
.super Ljava/lang/Object;
.source "BaseRequestSuccessBean.java"


# instance fields
.field private message:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/BaseRequestSuccessBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaomi/scanner/config/bean/BaseRequestSuccessBean;->status:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/BaseRequestSuccessBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/xiaomi/scanner/config/bean/BaseRequestSuccessBean;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseRequestSuccessBean{message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/config/bean/BaseRequestSuccessBean;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/scanner/config/bean/BaseRequestSuccessBean;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
