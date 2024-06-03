.class Lcom/xiaomi/scanner/setting/SettingActivity$1$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/setting/SettingActivity$1;->onMainResult(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/scanner/setting/SettingActivity$1;

.field final synthetic val$moduleInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/setting/SettingActivity$1;Ljava/util/List;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;->this$1:Lcom/xiaomi/scanner/setting/SettingActivity$1;

    iput-object p2, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;->val$moduleInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 152
    iget-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;->val$moduleInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;->val$moduleInfoList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, -0x64

    .line 153
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "defaultFunctionSelect"

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
