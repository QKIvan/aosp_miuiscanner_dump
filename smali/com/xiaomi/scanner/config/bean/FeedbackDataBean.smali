.class public Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;
.super Ljava/lang/Object;
.source "FeedbackDataBean.java"


# instance fields
.field private app_v:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private contact:Ljava/lang/String;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_v:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_v()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->app_v:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getM_v()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->m_v:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_v(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->app_v:Ljava/lang/String;

    return-void
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->contact:Ljava/lang/String;

    return-void
.end method

.method public setFeedbackContent(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->comment:Ljava/lang/String;

    return-void
.end method

.method public setImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->imageList:Ljava/util/List;

    return-void
.end method

.method public setM_v(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->m_v:Ljava/lang/String;

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->mode:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->model:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaomi/scanner/config/bean/FeedbackDataBean;->time:Ljava/lang/String;

    return-void
.end method
