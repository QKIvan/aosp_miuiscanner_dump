.class public Lcom/xiaomi/scanner/bean/TrackingNumInspectorBean;
.super Ljava/lang/Object;
.source "TrackingNumInspectorBean.java"


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/TrackingNumInspectorBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/TrackingNumInspectorBean;->data:Ljava/lang/String;

    return-void
.end method
