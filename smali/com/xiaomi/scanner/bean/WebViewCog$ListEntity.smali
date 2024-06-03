.class public Lcom/xiaomi/scanner/bean/WebViewCog$ListEntity;
.super Ljava/lang/Object;
.source "WebViewCog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/bean/WebViewCog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListEntity"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/bean/WebViewCog;

.field private urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/scanner/bean/WebViewCog;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/WebViewCog$ListEntity;->this$0:Lcom/xiaomi/scanner/bean/WebViewCog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrlStr()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/WebViewCog$ListEntity;->urlStr:Ljava/lang/String;

    return-object v0
.end method

.method public setUrlStr(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/WebViewCog$ListEntity;->urlStr:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListEntity{urlStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/bean/WebViewCog$ListEntity;->urlStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
