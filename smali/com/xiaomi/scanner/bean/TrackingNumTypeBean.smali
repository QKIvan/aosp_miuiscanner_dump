.class public Lcom/xiaomi/scanner/bean/TrackingNumTypeBean;
.super Ljava/lang/Object;
.source "TrackingNumTypeBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/bean/TrackingNumTypeBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/xiaomi/scanner/bean/TrackingNumTypeBean$DataBean;

.field private message:Ljava/lang/String;

.field private status:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/xiaomi/scanner/bean/TrackingNumTypeBean$DataBean;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/TrackingNumTypeBean;->data:Lcom/xiaomi/scanner/bean/TrackingNumTypeBean$DataBean;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/TrackingNumTypeBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/xiaomi/scanner/bean/TrackingNumTypeBean;->status:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/TrackingNumTypeBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/xiaomi/scanner/bean/TrackingNumTypeBean$DataBean;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/TrackingNumTypeBean;->data:Lcom/xiaomi/scanner/bean/TrackingNumTypeBean$DataBean;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/TrackingNumTypeBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/xiaomi/scanner/bean/TrackingNumTypeBean;->status:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/TrackingNumTypeBean;->type:Ljava/lang/String;

    return-void
.end method
