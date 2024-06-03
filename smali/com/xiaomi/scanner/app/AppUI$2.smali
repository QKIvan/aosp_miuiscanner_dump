.class Lcom/xiaomi/scanner/app/AppUI$2;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "AppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/app/AppUI;->initView(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/app/AppUI;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/app/AppUI;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI$2;->this$0:Lcom/xiaomi/scanner/app/AppUI;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Object;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI$2;->this$0:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->checkFlashLightAvailable()V

    const/4 v0, 0x0

    return-object v0
.end method
