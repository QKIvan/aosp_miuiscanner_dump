.class public Lcom/xiaomi/scanner/module/code/zxing/VCard;
.super Ljava/lang/Object;
.source "VCard.java"


# instance fields
.field private mIsMobile:Z

.field private mKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mKey:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mName:Ljava/lang/String;

    .line 15
    iput-boolean p4, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mIsMobile:Z

    .line 16
    invoke-virtual {p0, p3}, Lcom/xiaomi/scanner/module/code/zxing/VCard;->addValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mValues:Ljava/util/ArrayList;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getIsMobile()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mIsMobile:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setIsMobile(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mIsMobile:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/zxing/VCard;->mName:Ljava/lang/String;

    return-void
.end method
