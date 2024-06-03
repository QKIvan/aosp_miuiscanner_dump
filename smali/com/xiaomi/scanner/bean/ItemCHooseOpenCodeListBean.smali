.class public Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;
.super Ljava/lang/Object;
.source "ItemCHooseOpenCodeListBean.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private isChecked:Z

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->isChecked:Z

    .line 13
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->appName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->isChecked:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->appName:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->isChecked:Z

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/ItemCHooseOpenCodeListBean;->packageName:Ljava/lang/String;

    return-void
.end method
