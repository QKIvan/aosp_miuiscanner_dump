.class Lcom/xiaomi/scanner/util/DialogEdittextUtil$2;
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


# instance fields
.field final synthetic val$et_feedback:Landroid/widget/EditText;

.field final synthetic val$et_phone:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaomi/scanner/util/DialogEdittextUtil$2;->val$et_feedback:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/xiaomi/scanner/util/DialogEdittextUtil$2;->val$et_phone:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 136
    iget-object p2, p0, Lcom/xiaomi/scanner/util/DialogEdittextUtil$2;->val$et_feedback:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    iget-object v0, p0, Lcom/xiaomi/scanner/util/DialogEdittextUtil$2;->val$et_phone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/xiaomi/scanner/util/DialogEdittextUtil;->ctaClick:Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;

    invoke-interface {v1, p2, v0}, Lcom/xiaomi/scanner/util/DialogEdittextUtil$CTAClick;->onAccept(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
