.class public Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;
.super Ljava/lang/Object;
.source "EmailSendObject.java"


# instance fields
.field private cc:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private recipient:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCc()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->cc:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->content:Ljava/lang/String;

    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->recipient:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/zxing/EmailSendObject;->subject:Ljava/lang/String;

    return-void
.end method
