.class public Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;
.super Ljava/lang/Object;
.source "NetWorkRuleBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsBean"
.end annotation


# instance fields
.field private appName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->appName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/NetWorkRuleBean$DataBean$AppsBean;->packageName:Ljava/lang/String;

    return-void
.end method
