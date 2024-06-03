.class public Lcom/xiaomi/scanner/bean/NetWorkRuleBean;
.super Ljava/lang/Object;
.source "NetWorkRuleBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private status:I

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->status:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->versionCode:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->data:Ljava/util/List;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->status:I

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean;->versionCode:I

    return-void
.end method
