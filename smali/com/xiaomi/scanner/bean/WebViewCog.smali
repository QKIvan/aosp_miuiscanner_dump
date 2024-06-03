.class public Lcom/xiaomi/scanner/bean/WebViewCog;
.super Ljava/lang/Object;
.source "WebViewCog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/bean/WebViewCog$ListEntity;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/WebViewCog$ListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private openType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/WebViewCog$ListEntity;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/WebViewCog;->list:Ljava/util/List;

    return-object v0
.end method

.method public getOpenType()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaomi/scanner/bean/WebViewCog;->openType:Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/bean/WebViewCog$ListEntity;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/WebViewCog;->list:Ljava/util/List;

    return-void
.end method

.method public setOpenType(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaomi/scanner/bean/WebViewCog;->openType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewCog{list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/scanner/bean/WebViewCog;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
