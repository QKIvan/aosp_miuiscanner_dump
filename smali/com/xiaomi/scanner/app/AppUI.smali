.class public Lcom/xiaomi/scanner/app/AppUI;
.super Ljava/lang/Object;
.source "AppUI.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;
.implements Lcom/xiaomi/scanner/ui/MessageDispatcher;
.implements Lcom/xiaomi/scanner/ui/FunctionUI;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;


# static fields
.field private static REAR_AMERA:Ljava/lang/String; = null

.field public static final REQUEST_PERMISSION:I = 0x3

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private final MIN_CLICK_DELAY_TIME:I

.field private canScrollByTakePic:Z

.field private captureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

.field private isXiaoaiEnabled:Z

.field private lastClickTime:J

.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/app/ScanActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppRootView:Landroid/widget/FrameLayout;

.field private mBottomCover:Landroid/view/View;

.field private mBottomModuleRecyclerview:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;

.field private mContext:Landroid/content/Context;

.field private mControlFlashlight:Landroid/widget/CheckBox;

.field private final mController:Lcom/xiaomi/scanner/app/AppController;

.field private mDisableAllUserInteractions:Z

.field private mDownX:F

.field private mDownY:F

.field private mFlashAvailable:Z

.field private mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

.field private mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

.field private mHeight:I

.field private mModuleUI:Landroid/widget/FrameLayout;

.field private mPickerButton:Landroid/widget/ImageView;

.field private final mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

.field private mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field private mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Landroid/view/TextureView;

.field private mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

.field private mTitleView:Landroid/widget/TextView;

.field private mTranslateWordLock:Landroid/widget/TextView;

.field private mWidth:I

.field private matrixPreview:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "AppUI"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "0"

    .line 115
    sput-object v0, Lcom/xiaomi/scanner/app/AppUI;->REAR_AMERA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/scanner/app/AppController;Landroid/widget/FrameLayout;)V
    .locals 3

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->canScrollByTakePic:Z

    .line 153
    new-instance v1, Lcom/xiaomi/scanner/app/AppUI$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/app/AppUI$1;-><init>(Lcom/xiaomi/scanner/app/AppUI;)V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/16 v1, 0x3e8

    .line 168
    iput v1, p0, Lcom/xiaomi/scanner/app/AppUI;->MIN_CLICK_DELAY_TIME:I

    const-wide/16 v1, 0x0

    .line 169
    iput-wide v1, p0, Lcom/xiaomi/scanner/app/AppUI;->lastClickTime:J

    .line 170
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    .line 424
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    .line 425
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p1

    check-cast v1, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mActivity:Ljava/lang/ref/WeakReference;

    .line 426
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    .line 427
    iput-object p2, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    .line 428
    invoke-direct {p0, p2}, Lcom/xiaomi/scanner/app/AppUI;->initView(Landroid/widget/FrameLayout;)V

    .line 429
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->updateBottomCover()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/app/AppUI;)Lcom/xiaomi/scanner/ui/PreviewStatusListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    return-object p0
.end method

.method private checkStoragePermissions()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 124
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->NEW_STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 128
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 130
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 131
    iget-object v4, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    aget-object v5, v0, v3

    invoke-static {v4, v5}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 136
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private getCloudControlConfigData()V
    .locals 15

    .line 852
    invoke-static {}, Lcom/xiaomi/scanner/util/BuildHelper;->getMode()Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-static {}, Lcom/xiaomi/scanner/util/BuildHelper;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-static {}, Lcom/xiaomi/scanner/util/BuildHelper;->getMiuiVersionCode()Ljava/lang/String;

    move-result-object v2

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/scanner/util/BuildHelper;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 857
    sget-object v4, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/config/ConfigModel;->initCacheCloudControlConfigData()V

    .line 858
    sget-object v4, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v4}, Lcom/xiaomi/scanner/config/ConfigModel;->getCloudControlConfigResult()Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 861
    sget-object v5, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cloudControlConfigResult != null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 863
    invoke-virtual {v4}, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->getOtherSet()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 865
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 867
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_1

    .line 868
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;

    .line 870
    invoke-virtual {v8}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getPhone_model()Ljava/lang/String;

    move-result-object v10

    .line 871
    invoke-virtual {v8}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getSystemAndroidVersionCode()Ljava/lang/String;

    move-result-object v11

    .line 872
    invoke-virtual {v8}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getSystemMiuiVersionCode()Ljava/lang/String;

    move-result-object v12

    .line 873
    invoke-virtual {v8}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getAppVersion()Ljava/lang/String;

    move-result-object v13

    .line 875
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 876
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 877
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 878
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 879
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 880
    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 881
    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 883
    invoke-direct {p0, v8}, Lcom/xiaomi/scanner/app/AppUI;->setOtherDataOnFunctionPoint(Lcom/xiaomi/scanner/config/bean/OtherSetEntity;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v7, "isMatchesOtherSetData\uff1a"

    if-eqz v3, :cond_2

    .line 891
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 894
    :cond_2
    sget-object v8, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 896
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 897
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;

    .line 899
    invoke-virtual {v8}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getPhone_model()Ljava/lang/String;

    move-result-object v10

    .line 900
    invoke-virtual {v8}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getSystemAndroidVersionCode()Ljava/lang/String;

    move-result-object v11

    .line 901
    invoke-virtual {v8}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getSystemMiuiVersionCode()Ljava/lang/String;

    move-result-object v12

    .line 902
    invoke-virtual {v8}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getAppVersion()Ljava/lang/String;

    move-result-object v13

    .line 904
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 905
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 906
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 907
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 908
    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 909
    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 912
    invoke-direct {p0, v8}, Lcom/xiaomi/scanner/app/AppUI;->setOtherDataOnFunctionPoint(Lcom/xiaomi/scanner/config/bean/OtherSetEntity;)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    return-void

    .line 923
    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_7

    .line 924
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;

    .line 926
    invoke-virtual {v1}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getPhone_model()Ljava/lang/String;

    move-result-object v2

    .line 927
    invoke-virtual {v1}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getSystemAndroidVersionCode()Ljava/lang/String;

    move-result-object v7

    .line 928
    invoke-virtual {v1}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getSystemMiuiVersionCode()Ljava/lang/String;

    move-result-object v8

    .line 929
    invoke-virtual {v1}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getAppVersion()Ljava/lang/String;

    move-result-object v10

    .line 931
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 932
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 933
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 934
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 936
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/app/AppUI;->setOtherDataOnFunctionPoint(Lcom/xiaomi/scanner/config/bean/OtherSetEntity;)V

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    move v9, v3

    :goto_5
    if-nez v9, :cond_c

    .line 944
    invoke-virtual {v4}, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->getDefaultSet()Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 945
    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/app/AppUI;->setDefaultDataOnFunctionPoint(Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;)V

    goto :goto_6

    .line 947
    :cond_8
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isXiaoaiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    goto :goto_6

    .line 952
    :cond_9
    invoke-virtual {v4}, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->getDefaultSet()Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 953
    invoke-direct {p0, v4}, Lcom/xiaomi/scanner/app/AppUI;->setDefaultDataOnFunctionPoint(Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;)V

    goto :goto_6

    .line 955
    :cond_a
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isXiaoaiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    goto :goto_6

    .line 961
    :cond_b
    invoke-static {}, Lcom/xiaomi/scanner/settings/FeatureManager;->isXiaoaiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    :cond_c
    :goto_6
    return-void
.end method

.method private initView(Landroid/widget/FrameLayout;)V
    .locals 2

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    const v0, 0x7f0a0166

    .line 314
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/ShutterButton;

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    const v0, 0x7f0a0058

    .line 315
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomCover:Landroid/view/View;

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 317
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v0, 0x7f0a01c1

    .line 319
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    .line 320
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a6

    .line 321
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 322
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00fe

    .line 323
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleRecyclerview:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;

    .line 324
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->setmModuleSelectListener(Lcom/xiaomi/scanner/ui/BottomModuleRecycleView$ModuleSelectListener;)V

    const v0, 0x7f0a01a8

    .line 325
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a01a5

    .line 326
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/scanner/ui/FlashButton;

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    .line 327
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/ui/FlashButton;->setOnTurnFlashListener(Lcom/xiaomi/scanner/ui/FlashButton$OnTurnFlashListener;)V

    const v0, 0x7f0a006b

    .line 328
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    .line 330
    new-instance v0, Lcom/xiaomi/scanner/app/AppUI$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/AppUI$2;-><init>(Lcom/xiaomi/scanner/app/AppUI;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    const v0, 0x7f0a01a7

    .line 338
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPickerButton:Landroid/widget/ImageView;

    .line 339
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0100

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mModuleUI:Landroid/widget/FrameLayout;

    .line 342
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    .line 343
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->setVisibleChangeListener(Lcom/xiaomi/scanner/ui/FullScreenPanelRoot$VisibleChangeListener;)V

    .line 344
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0128

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureView:Landroid/view/TextureView;

    .line 346
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/AppUI;->getCloudControlConfigData()V

    .line 347
    sget-object p1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, " xiaoai btn_AI   \u521d\u59cb\u5316\u5b8c\u6210"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 349
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    new-instance v0, Lcom/xiaomi/scanner/app/AppUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/AppUI$$ExternalSyntheticLambda0;-><init>(Lcom/xiaomi/scanner/app/AppUI;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isPadSavePosition(I)V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "save_module_tab"

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onPreviewListenerChanged()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    .line 554
    invoke-interface {v1}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->shouldAutoAdjustTransformMatrixOnLayout()Z

    move-result v1

    .line 553
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setAutoAdjustTransform(Z)V

    return-void
.end method

.method private recycleHandler()V
    .locals 0

    return-void
.end method

.method private setDefaultDataOnFunctionPoint(Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;)V
    .locals 2

    .line 1001
    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/CloudControlConfigResult;->getDefaultSet()Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;

    move-result-object p1

    .line 1002
    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointCloudControlBaseBean;->getXiaoaiBean()Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1005
    new-instance p1, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;

    invoke-direct {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;-><init>()V

    .line 1006
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->setAlpha_enable(Z)V

    .line 1007
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->setDev_enable(Z)V

    .line 1008
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->setStable_enable(Z)V

    .line 1011
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_1

    .line 1012
    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->isAlpha_enable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1013
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    goto :goto_0

    .line 1015
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v1, :cond_2

    .line 1016
    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->isDev_enable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1017
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    goto :goto_0

    .line 1019
    :cond_2
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->isStable_enable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1020
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    goto :goto_0

    .line 1022
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->isStable_enable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    :cond_4
    :goto_0
    return-void
.end method

.method private setOtherDataOnFunctionPoint(Lcom/xiaomi/scanner/config/bean/OtherSetEntity;)V
    .locals 2

    .line 971
    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/OtherSetEntity;->getXiaoaiBean()Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 974
    new-instance p1, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;

    invoke-direct {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;-><init>()V

    .line 975
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->setAlpha_enable(Z)V

    .line 976
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->setDev_enable(Z)V

    .line 977
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->setStable_enable(Z)V

    .line 980
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v1, :cond_1

    .line 981
    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->isAlpha_enable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 982
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    goto :goto_0

    .line 984
    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v1, :cond_2

    .line 985
    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->isDev_enable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 986
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    goto :goto_0

    .line 988
    :cond_2
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->isStable_enable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 989
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    goto :goto_0

    .line 991
    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/scanner/config/bean/FunctionPointControlBean;->isStable_enable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/AppUI;->isXiaoaiEnabled:Z

    :cond_4
    :goto_0
    return-void
.end method

.method private showPermissionRequestOrRun()V
    .locals 3

    .line 144
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/AppUI;->checkStoragePermissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private turnFlash(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->turnTorchOn()Z

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->turnTorchOff()Z

    .line 288
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/ui/FlashButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 736
    iget-object p2, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/ui/ShutterButton;->removeOnShutterButtonListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;)V

    goto :goto_0

    .line 738
    :cond_0
    iget-object p2, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/ui/ShutterButton;->addOnShutterButtonListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;)V

    :goto_0
    return-void
.end method

.method public addOrUpdateModuleList(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;",
            ">;I)V"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleRecyclerview:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->addModuleItemList(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public addPreviewAreaChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    return-void
.end method

.method public checkFlashLightAvailable()V
    .locals 7

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 454
    :try_start_0
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 456
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 457
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 458
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 460
    sget-object v6, Lcom/xiaomi/scanner/app/AppUI;->REAR_AMERA:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    new-instance v1, Lcom/xiaomi/scanner/app/AppUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/app/AppUI$$ExternalSyntheticLambda1;-><init>(Lcom/xiaomi/scanner/app/AppUI;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/FlashButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearModuleUI()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mModuleUI:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->removeAllViews()V

    .line 618
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFullScreenUI:Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/FullScreenPanelRoot;->setVisibility(I)V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/AppUI;->setInPictureTakenState(Z)V

    .line 623
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/AppUI;->setTitle(I)V

    return-void
.end method

.method public configureTransform(II)V
    .locals 10

    .line 365
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 366
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 369
    :cond_0
    iput p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mWidth:I

    .line 370
    iput p2, p0, Lcom/xiaomi/scanner/app/AppUI;->mHeight:I

    .line 371
    sget v1, Lcom/xiaomi/scanner/util/Util;->screenHeight:I

    .line 372
    sget v2, Lcom/xiaomi/scanner/util/Util;->screenWidth:I

    .line 373
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 374
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/scanner/app/AppUI;->matrixPreview:Landroid/graphics/Matrix;

    .line 375
    new-instance v3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 376
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-direct {v5, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 377
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    .line 378
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v8, v0, :cond_3

    const/4 v8, 0x3

    if-ne v8, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne v9, v0, :cond_2

    .line 388
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 389
    iget-object p2, p0, Lcom/xiaomi/scanner/app/AppUI;->matrixPreview:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v3, p1, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 390
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->matrixPreview:Landroid/graphics/Matrix;

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 392
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 393
    iget-object p2, p0, Lcom/xiaomi/scanner/app/AppUI;->matrixPreview:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v3, p1, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 394
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->matrixPreview:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 380
    :cond_3
    :goto_0
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v4, v6, v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, v7, v8

    invoke-virtual {v5, v4, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 381
    iget-object v4, p0, Lcom/xiaomi/scanner/app/AppUI;->matrixPreview:Landroid/graphics/Matrix;

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v4, v3, v5, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    div-float/2addr p2, v1

    div-float/2addr p1, v2

    .line 382
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 385
    iget-object p2, p0, Lcom/xiaomi/scanner/app/AppUI;->matrixPreview:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p1, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 386
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->matrixPreview:Landroid/graphics/Matrix;

    sub-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x5a

    int-to-float p2, v0

    invoke-virtual {p1, p2, v6, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 396
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureView:Landroid/view/TextureView;

    iget-object p2, p0, Lcom/xiaomi/scanner/app/AppUI;->matrixPreview:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public createOrUpdateBottomUi()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleRecyclerview:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->setVisibility(I)V

    .line 595
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->updateOverlayUI()V

    .line 596
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    return-void
.end method

.method public declared-synchronized dismissProgress()V
    .locals 1

    monitor-enter p0

    .line 783
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Lmiuix/appcompat/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 785
    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 189
    sget-object p1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected receiver "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/xiaomi/scanner/app/AppUI;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 179
    :cond_1
    iget-object p3, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {p3}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 181
    invoke-interface {p3, p1, p2, p4, p5}, Lcom/xiaomi/scanner/module/ModuleController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 176
    :cond_3
    iget-object p3, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {p3, p1, p2, p4, p5}, Lcom/xiaomi/scanner/app/AppController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getModuleRootView()Landroid/view/View;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewHeight()I

    move-result v0

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->getPreviewWidth()I

    move-result v0

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized isProgressShowing()Z
    .locals 1

    monitor-enter p0

    .line 790
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/ProgressDialog;->isShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShutterButtonEnabled()Z
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/ShutterButton;->isEnabled()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$checkFlashLightAvailable$1$com-xiaomi-scanner-app-AppUI()V
    .locals 2

    .line 470
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashAvailable:Z

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/FlashButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initView$0$com-xiaomi-scanner-app-AppUI(Landroid/view/View;)V
    .locals 3

    .line 350
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/AppUI;->turnFlash(Z)V

    .line 359
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/FlashButton;->setFlashViewWhetherToCheck(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 255
    :sswitch_0
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    const v0, 0x7f100205

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v1, 0x7f100204

    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f100204

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 265
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/app/AppController;->updateWordTranslateUI(Z)V

    goto :goto_0

    .line 218
    :sswitch_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/AppUI;->checkStoragePermissions()Ljava/util/ArrayList;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    if-nez v0, :cond_1

    .line 220
    sget-object p1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "top_panel_picker click control null"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/xiaomi/scanner/app/ScanActivity;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 227
    sget-object p1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "storage permission request"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->isSdkReady()Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f1001a2

    .line 232
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    return-void

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {p1}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object p1

    if-nez p1, :cond_4

    .line 237
    sget-object p1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "top_panel_picker click module null"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 241
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 242
    iget-wide v2, p0, Lcom/xiaomi/scanner/app/AppUI;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gtz v6, :cond_5

    return-void

    .line 246
    :cond_5
    iput-wide v0, p0, Lcom/xiaomi/scanner/app/AppUI;->lastClickTime:J

    .line 247
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->doPrething()V

    .line 248
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->selectPhotoClick()V

    .line 249
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-static {p1}, Lcom/xiaomi/scanner/util/AppJumpUtils;->requestDecodeImage(Lcom/xiaomi/scanner/app/ScanActivity;)V

    goto :goto_0

    .line 252
    :sswitch_2
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/scanner/setting/SettingXActivity;->showSetting(Landroid/content/Context;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a01a6 -> :sswitch_2
        0x7f0a01a7 -> :sswitch_1
        0x7f0a01c1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 518
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->isProgressShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->dismissProgress()V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 524
    :cond_1
    iput-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureView:Landroid/view/TextureView;

    .line 525
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/AppUI;->recycleHandler()V

    return-void
.end method

.method public onModuleSelect(I)V
    .locals 3

    .line 803
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    if-nez v0, :cond_0

    .line 804
    sget-object p1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "switch to onModuleSelect control null "

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 808
    :cond_0
    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 809
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch to module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/AppUI;->updateLockText(Z)V

    .line 811
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1, p1}, Lcom/xiaomi/scanner/app/AppController;->onModuleSelected(I)V

    .line 812
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->updateOverlayUI()V

    .line 813
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/AppUI;->isPadSavePosition(I)V

    const-string v1, "defaultFunctionSelect"

    .line 814
    invoke-static {v1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    .line 816
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lastUseModuleId"

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPreviewStarted()V
    .locals 2

    .line 630
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSettingChanged(Lcom/xiaomi/scanner/settings/SettingsManager;Ljava/lang/String;)V
    .locals 2

    .line 744
    sget-object p1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSettingChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5

    .line 651
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "onSurfaceTextureAvailable: %d x %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 652
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 653
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz v1, :cond_0

    .line 654
    invoke-interface {v1, p1, p2, p3}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :cond_0
    const-string p1, "onSurfaceTextureAvailable: no listener!"

    .line 656
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 671
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 674
    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz v0, :cond_1

    .line 677
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 662
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onSurfaceTextureSizeChanged: %d x %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 663
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 664
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 665
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 684
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 685
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz v0, :cond_0

    .line 686
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/ui/PreviewStatusListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public onTurnFlash(Z)V
    .locals 2

    .line 832
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/AppUI;->turnFlash(Z)V

    .line 833
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 835
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 837
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public prepareModuleUI()V
    .locals 3

    .line 574
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleListBySortId()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->addOrUpdateModuleList(Ljava/util/List;I)V

    .line 576
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/settings/SettingsManager;->addListener(Lcom/xiaomi/scanner/settings/SettingsManager$OnSettingChangedListener;)V

    .line 577
    new-instance v0, Lcom/xiaomi/scanner/camera/TextureViewHelper;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v2}, Lcom/xiaomi/scanner/app/AppController;->getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/scanner/camera/TextureViewHelper;-><init>(Landroid/view/TextureView;Lcom/xiaomi/scanner/camera/CameraProvider;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    .line 578
    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 579
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 581
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->createOrUpdateBottomUi()V

    return-void
.end method

.method public refreshFunctionSort()V
    .locals 2

    .line 586
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleListBySortId()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->addOrUpdateModuleList(Ljava/util/List;I)V

    .line 587
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p0}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 588
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 589
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->createOrUpdateBottomUi()V

    return-void
.end method

.method public removePreviewAreaChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->removePreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    return-void
.end method

.method public resetFlashState()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/xiaomi/scanner/ui/FlashButton;->resetFlashView()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 509
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->updateOverlayUI()V

    .line 511
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/AppUI;->resetFlashState()V

    return-void
.end method

.method public setDisableAllUserInteractions(Z)V
    .locals 3

    .line 635
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisableAllUserInteractions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 636
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mDisableAllUserInteractions:Z

    xor-int/lit8 p1, p1, 0x1

    .line 637
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/AppUI;->setShutterButtonEnabled(Z)V

    return-void
.end method

.method public setInPictureTakenState(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    .line 701
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->canScrollByTakePic:Z

    .line 702
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleRecyclerview:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p1, 0x1

    .line 703
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->setCanScrollByTakePic(Z)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashButton:Lcom/xiaomi/scanner/ui/FlashButton;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    .line 706
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/FlashButton;->setEnabled(Z)V

    .line 707
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPickerButton:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setIvFlashlightShowStatus(Ljava/lang/Boolean;)V
    .locals 4

    .line 482
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 483
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashAvailable:Z

    if-eqz p1, :cond_3

    .line 484
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->captureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-nez p1, :cond_1

    .line 488
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/xiaomi/scanner/app/ScanActivity;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->captureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 490
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->captureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->getFlashlightStatus()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object p1

    .line 492
    sget-object v1, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flashlightStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-eq p1, v1, :cond_2

    .line 494
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    .line 495
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 497
    :cond_2
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mFlashAvailable:Z

    if-eqz p1, :cond_3

    .line 499
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 203
    iget-object v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mAppRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 204
    instance-of v3, v2, Lcom/xiaomi/scanner/ui/FunctionUI;

    if-eqz v3, :cond_0

    .line 205
    check-cast v2, Lcom/xiaomi/scanner/ui/FunctionUI;

    invoke-interface {v2, p1}, Lcom/xiaomi/scanner/ui/FunctionUI;->setMessageDispatcher(Lcom/xiaomi/scanner/ui/MessageDispatcher;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mPreviewStatusListener:Lcom/xiaomi/scanner/ui/PreviewStatusListener;

    if-eqz p1, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/AppUI;->onPreviewListenerChanged()V

    :cond_0
    return-void
.end method

.method public setShutterButtonEnabled(Z)V
    .locals 3

    .line 693
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterButtonEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " disableAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/scanner/app/AppUI;->mDisableAllUserInteractions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 695
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mDisableAllUserInteractions:Z

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/ui/ShutterButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    .line 728
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTitleView:Landroid/widget/TextView;

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public showPopWindow()V
    .locals 2

    .line 273
    sget-object v0, Lcom/xiaomi/scanner/app/AppUI;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "xiaoai showPopWindow xiaoai dialog"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public showProgressView(II)V
    .locals 1

    const/4 v0, 0x0

    .line 748
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(IILandroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public showProgressView(IILandroid/content/DialogInterface$OnKeyListener;)V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 758
    :cond_1
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 759
    :goto_1
    invoke-virtual {p0, p1, v1, p3}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public showProgressView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 752
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/scanner/app/AppUI;->showProgressView(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public declared-synchronized showProgressView(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 2

    monitor-enter p0

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Lmiuix/appcompat/app/ProgressDialog;->cancel()V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 768
    :cond_1
    monitor-exit p0

    return-void

    .line 770
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, p1, v1, v1}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 p2, 0x0

    .line 771
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    if-eqz p3, :cond_3

    .line 773
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1, p3}, Lmiuix/appcompat/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateBottomCover()V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomCover:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 441
    sget-boolean v1, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateCameraProvider(Lcom/xiaomi/scanner/camera/CameraProvider;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->setCameraProviderIfEmpty(Lcom/xiaomi/scanner/camera/CameraProvider;)V

    :cond_0
    return-void
.end method

.method public updateLockText(Z)V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mTranslateWordLock:Landroid/widget/TextView;

    const v0, 0x7f100204

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public updateOverlayUI()V
    .locals 4

    .line 716
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mShutterButton:Lcom/xiaomi/scanner/ui/ShutterButton;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1}, Lcom/xiaomi/scanner/app/AppController;->isCaptureNeeded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/ui/ShutterButton;->setEnabled(Z)V

    .line 717
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mPickerButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v1}, Lcom/xiaomi/scanner/app/AppController;->isPickerNeeded()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mController:Lcom/xiaomi/scanner/app/AppController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 720
    iget-object v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0024

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mControlFlashlight:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateAspectRatio(F)V

    return-void
.end method

.method public updatePreviewTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mTextureViewHelper:Lcom/xiaomi/scanner/camera/TextureViewHelper;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/TextureViewHelper;->updateTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public updateTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 400
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/AppUI;->canScrollByTakePic:Z

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 404
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    iget p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mDownX:F

    sub-float/2addr v0, p1

    .line 412
    iget p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mDownY:F

    sub-float/2addr v1, p1

    .line 414
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/scanner/app/AppUI;->mBottomModuleRecyclerview:Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;

    if-eqz p1, :cond_3

    .line 415
    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/ui/BottomModuleRecycleView;->scrollLeftOrRight(F)V

    goto :goto_0

    .line 406
    :cond_2
    iput v0, p0, Lcom/xiaomi/scanner/app/AppUI;->mDownX:F

    .line 407
    iput v1, p0, Lcom/xiaomi/scanner/app/AppUI;->mDownY:F

    :cond_3
    :goto_0
    return-void
.end method
