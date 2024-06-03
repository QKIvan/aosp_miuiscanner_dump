.class Lcom/xiaomi/scanner/util/DialogUtil$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/util/DialogUtil;->CameraErrorDialog(Landroid/app/Activity;IZ)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finishActivity:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/xiaomi/scanner/util/DialogUtil$1;->val$finishActivity:Z

    iput-object p2, p0, Lcom/xiaomi/scanner/util/DialogUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 118
    iget-boolean p1, p0, Lcom/xiaomi/scanner/util/DialogUtil$1;->val$finishActivity:Z

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/xiaomi/scanner/util/DialogUtil$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
