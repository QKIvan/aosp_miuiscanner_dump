.class Lcom/xiaomi/scanner/app/AppUI$1;
.super Ljava/lang/Object;
.source "AppUI.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/app/AppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/AppUI;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/AppUI;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI$1;->this$0:Lcom/xiaomi/scanner/app/AppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    move-object v0, p0

    .line 158
    iget-object v1, v0, Lcom/xiaomi/scanner/app/AppUI$1;->this$0:Lcom/xiaomi/scanner/app/AppUI;

    invoke-static {v1}, Lcom/xiaomi/scanner/app/AppUI;->access$000(Lcom/xiaomi/scanner/app/AppUI;)Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, v0, Lcom/xiaomi/scanner/app/AppUI$1;->this$0:Lcom/xiaomi/scanner/app/AppUI;

    invoke-static {v1}, Lcom/xiaomi/scanner/app/AppUI;->access$000(Lcom/xiaomi/scanner/app/AppUI;)Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V

    :cond_0
    return-void
.end method
