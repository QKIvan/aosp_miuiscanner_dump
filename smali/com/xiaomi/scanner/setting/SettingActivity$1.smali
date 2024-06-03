.class Lcom/xiaomi/scanner/setting/SettingActivity$1;
.super Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/setting/SettingActivity;->updateDefaultFunctionList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/setting/SettingActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-direct {p0}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Integer;
    .locals 2

    const-string v0, "defaultFunctionSelect"

    const/4 v1, -0x1

    .line 112
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/xiaomi/scanner/setting/SettingActivity$1;->onBackground()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onMainResult(Ljava/lang/Integer;)V
    .locals 11

    .line 117
    invoke-super {p0, p1}, Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;->onMainResult(Ljava/lang/Object;)V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleInfoListByWeight()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 120
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 125
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 126
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    .line 127
    invoke-interface {v7}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v8

    iget-object v9, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-virtual {v9}, Lcom/xiaomi/scanner/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0014

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-ne v8, v9, :cond_1

    move v6, v4

    .line 130
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result v9

    if-ne v8, v9, :cond_2

    move v5, v4

    .line 133
    :cond_2
    iget-object v8, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-virtual {v8}, Lcom/xiaomi/scanner/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-interface {v7}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getTitleResourceId()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_3
    iget-object v4, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1001ad

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    const v8, 0x7f0d00c2

    invoke-direct {v4, v7, v8, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v7, 0x1090009

    .line 138
    invoke-virtual {v4, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 139
    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v7}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v7

    const v8, 0x7f1001aa

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setPromptId(I)V

    .line 140
    iget-object v7, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {v7}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 141
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v4, -0x64

    if-ne p1, v4, :cond_4

    .line 142
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    goto :goto_1

    :cond_4
    if-ne v5, v2, :cond_5

    move v3, v6

    goto :goto_1

    .line 145
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v5, p1, :cond_6

    goto :goto_1

    :cond_6
    move v3, v5

    .line 148
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 149
    iget-object p1, p0, Lcom/xiaomi/scanner/setting/SettingActivity$1;->this$0:Lcom/xiaomi/scanner/setting/SettingActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/setting/SettingActivity;->access$000(Lcom/xiaomi/scanner/setting/SettingActivity;)Landroid/widget/Spinner;

    move-result-object p1

    new-instance v1, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/scanner/setting/SettingActivity$1$1;-><init>(Lcom/xiaomi/scanner/setting/SettingActivity$1;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public bridge synthetic onMainResult(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/setting/SettingActivity$1;->onMainResult(Ljava/lang/Integer;)V

    return-void
.end method
