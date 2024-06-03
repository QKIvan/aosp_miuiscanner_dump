.class public Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;
.super Ljava/lang/Object;
.source "NetWorkRuleBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/bean/NetWorkRuleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;
    }
.end annotation


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private type:I

.field private validator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->type:I

    return v0
.end method

.method public getValidator()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->validator:Ljava/lang/String;

    return-object v0
.end method

.method public setApps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;",
            ">;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->apps:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->type:I

    return-void
.end method

.method public setValidator(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;->validator:Ljava/lang/String;

    return-void
.end method
