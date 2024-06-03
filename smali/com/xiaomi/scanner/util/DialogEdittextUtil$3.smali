.class Lcom/xiaomi/scanner/util/DialogEdittextUtil$3;
.super Ljava/lang/Object;
.source "DialogEdittextUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/DialogEdittextUtil;->showCTADialogWithCancel(Landroid/content/Context;Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 145
    sget-object p2, Lcom/xiaomi/scanner/util/DialogEdittextUtil;->ctaClick:Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;

    invoke-interface {p2}, Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;->onReject()V

    .line 146
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
