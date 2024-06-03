.class public Lcom/xiaomi/scanner/app/ScanActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "ScanActivity.java"

# interfaces
.implements Lcom/xiaomi/scanner/app/AppController;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraOpenCallback;
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/xiaomi/scanner/camera/OrientationManager$OrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;,
        Lcom/xiaomi/scanner/app/ScanActivity$onActivityRestart;,
        Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;,
        Lcom/xiaomi/scanner/app/ScanActivity$onCanChooseChangeListener;
    }
.end annotation


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final CAMERA_PERMISSIONS:[Ljava/lang/String;

.field private static final DEFAULT_TRY_FAIL_COUNT:I = 0x3

.field private static final MODULE_REQUEST_SHIFT:I = 0x10

.field private static final MSG_CLEAR_SCREEN_ON_FLAG:I = 0x2

.field private static final MSG_OPEN_CAMERA:I = 0x1

.field public static final NEW_STORAGE_PERMISSIONS:[Ljava/lang/String;

.field private static final ON_RESUME_DELAY_NON_SECURE_MILLIS:J = 0xfL

.field private static final ON_RESUME_DELAY_SECURE_MILLIS:J = 0x1eL

.field private static final OPEN_CAMERA_DELAY_MS:J = 0x64L

.field public static final REQUESTPERMISSION:I = 0x1a

.field public static final REQUEST_DECODE_IMAGE:I = 0x1

.field public static final REQUEST_DECODE_IMAGE_CROPPED:I = 0x2

.field public static final REQUEST_KOREA_PERMISSION:I = 0x64

.field public static final REQUEST_PERMISSION:I = 0x3

.field public static RESET_AUTO_FOCUS_DELAY_MILLIS:Ljava/lang/String; = null

.field private static final SCREEN_DELAY_MS:J = 0x7530L

.field public static final STORAGE_PERMISSIONS:[Ljava/lang/String;

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

.field private static final UPSATE_TIME:I = 0xb4

.field private static final VIBRATE_DURATION:J = 0xc8L

.field private static requestNewPermissions:[Ljava/lang/String;

.field public static scanWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaomi/scanner/app/ScanActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cloudControlFailed:I

.field private extraIntentImageUri:Landroid/net/Uri;

.field private firstOpenScan:I

.field private intenntAction:Ljava/lang/String;

.field private isPermissions:Z

.field private mAppContext:Landroid/content/Context;

.field private mAppUI:Lcom/xiaomi/scanner/app/AppUI;

.field private mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

.field private mCameraFatalError:Z

.field private mCameraIsAvailable:Z

.field private mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

.field private mClearTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

.field private mCurrentModuleIndex:I

.field private mExtraIntentBundle:Landroid/os/Bundle;

.field private mFailureRetryTimes:I

.field private mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImagePath:Ljava/lang/String;

.field private volatile mIsCreatingCameraController:Z

.field private mKeepScreenOn:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

.field private mOnCreateTask:Ljava/lang/Runnable;

.field private final mOnResumeTasks:Ljava/lang/Runnable;

.field private mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

.field private mPaused:Z

.field private mPendingIntent:Landroid/content/Intent;

.field private mPendingModuleIndex:I

.field private mPendingRequestCode:I

.field private mPendingResultCode:I

.field private mResetToPreviewOnResume:Z

.field private mResumeSyncLoadTasks:Ljava/lang/Runnable;

.field private mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

.field private mSkippedFirstOnResume:Z

.field private mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

.field private mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

.field private mStorageSpaceBytes:J

.field private final mStorageSpaceLock:Ljava/lang/Object;

.field private mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

.field private onActivityRestart:Lcom/xiaomi/scanner/app/ScanActivity$onActivityRestart;

.field private onCanChooseChangeListener:Lcom/xiaomi/scanner/app/ScanActivity$onCanChooseChangeListener;

.field private requestPermissions2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 112
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "ScanActivity"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "android.permission.CAMERA"

    .line 322
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 325
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 327
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->NEW_STORAGE_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "android.permission-group.CAMERA"

    .line 330
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->requestNewPermissions:[Ljava/lang/String;

    const-string v0, "reset_auto_focus_delay_millis"

    .line 453
    sput-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->RESET_AUTO_FOCUS_DELAY_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 108
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraFatalError:Z

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    .line 156
    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->cloudControlFailed:I

    .line 157
    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->firstOpenScan:I

    .line 158
    iput-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    .line 169
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceLock:Ljava/lang/Object;

    const-wide/32 v1, 0x2faf080

    .line 170
    iput-wide v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceBytes:J

    const-string v1, ""

    .line 173
    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->intenntAction:Ljava/lang/String;

    .line 174
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->isPermissions:Z

    .line 180
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mIsCreatingCameraController:Z

    const/4 v1, 0x3

    .line 182
    iput v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFailureRetryTimes:I

    const/4 v1, 0x0

    .line 205
    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 207
    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 215
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    .line 220
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$1;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    .line 232
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$2;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResumeSyncLoadTasks:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 311
    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    .line 318
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    .line 1746
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$10;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$10;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/scanner/app/ScanActivity;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    return p0
.end method

.method static synthetic access$002(Lcom/xiaomi/scanner/app/ScanActivity;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    return p1
.end method

.method static synthetic access$100()Lcom/xiaomi/scanner/debug/Log$Tag;
    .locals 1

    .line 108
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->initGestureDetector()V

    return-void
.end method

.method static synthetic access$1102(Lcom/xiaomi/scanner/app/ScanActivity;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mIsCreatingCameraController:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/FatalErrorHandler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CameraController;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/CameraController;)Lcom/xiaomi/scanner/camera/CameraController;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/app/AppUI;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/xiaomi/scanner/app/ScanActivity;)Ljava/lang/Object;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/xiaomi/scanner/app/ScanActivity;)J
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceBytes:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/xiaomi/scanner/app/ScanActivity;J)J
    .locals 0

    .line 108
    iput-wide p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceBytes:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/xiaomi/scanner/app/ScanActivity;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onResumeTasks()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/scanner/app/ScanActivity;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/SoundPlayer;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/SoundPlayer;)Lcom/xiaomi/scanner/camera/SoundPlayer;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/camera/OrientationManagerImpl;)Lcom/xiaomi/scanner/camera/OrientationManagerImpl;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/os/Handler;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/camera/CaptureModule;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaomi/scanner/app/ScanActivity;)Landroid/content/Context;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkIntentExtraData(Landroid/content/Intent;)V
    .locals 4

    .line 1005
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1006
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 1008
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 1011
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppUtil;->guessCallAppSource(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->intenntAction:Ljava/lang/String;

    .line 1013
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "isBackToThirdApp"

    .line 1014
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1013
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1015
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->intenntAction:Ljava/lang/String;

    const-string v2, "isBackToGallery"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "imagePath"

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.STREAM"

    .line 1018
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->extraIntentImageUri:Landroid/net/Uri;

    goto :goto_1

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    .line 1022
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1021
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private checkNewPermissions()Z
    .locals 2

    const-string v0, "pref_user_agree_permission"

    const/4 v1, 0x0

    .line 348
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocalBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private checkPermissions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 336
    :goto_0
    sget-object v2, Lcom/xiaomi/scanner/app/ScanActivity;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 337
    aget-object v3, v2, v1

    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->requestPermissions2:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private closeModule(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->clearModuleUI()V

    .line 1641
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onPause()V

    .line 1642
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onStop()V

    .line 1643
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onDestroy()V

    return-void
.end method

.method private createCameraController()V
    .locals 2

    .line 835
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "[createCameraController] called"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 836
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mIsCreatingCameraController:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 838
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mIsCreatingCameraController:Z

    .line 839
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$5;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    return-void
.end method

.method private doResumeOnGetAllPermission()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->resume()V

    const/4 v0, 0x3

    .line 572
    iput v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFailureRetryTimes:I

    .line 573
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onResume()V

    :cond_0
    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    .line 579
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->keepScreenOnForAWhile()V

    .line 580
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->isPermissions:Z

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResumeSyncLoadTasks:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->serialExecute(Ljava/lang/Runnable;)V

    .line 584
    :cond_1
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 585
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->handlePendingIntent()V

    .line 586
    iput v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    :cond_2
    return-void
.end method

.method private getClearTask(I)Ljava/lang/Runnable;
    .locals 5

    .line 1694
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1695
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1696
    sget-object v2, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClearTask: moduleId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " task="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1697
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1698
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getIsPadPosition()I
    .locals 4

    const-string v0, "save_module_tab"

    const/16 v1, -0x64

    .line 982
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    .line 984
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 985
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 986
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getModuleIndex(Landroid/content/Intent;)I
    .locals 7

    .line 929
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-nez p1, :cond_0

    .line 931
    sget-object p1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "getModuleIndex fail, null intent"

    invoke-static {p1, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 934
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 936
    sget-object v3, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getModuleIndex action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const-string v4, "miui.intent.action.scanner"

    .line 937
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "extra_intent_module_index"

    if-nez v5, :cond_a

    .line 938
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v4, "miui.intent.action.scanbarcode"

    .line 941
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "android.intent.action.SEND"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 942
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string p1, "miui.intent.action.scanbusinesscard"

    .line 945
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 946
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    :cond_3
    const-string p1, "miui.intent.action.scanclassesmodule"

    .line 947
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 948
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    :cond_4
    if-eqz v2, :cond_6

    .line 950
    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 951
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "moduleStr is empty"

    .line 952
    invoke-static {v3, p1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 956
    :cond_5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getRealIndex(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 958
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "parse moduleStr error"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_6
    const-string p1, "defaultFunctionSelect"

    .line 962
    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, -0x64

    if-ne p1, v1, :cond_7

    const-string p1, "lastUseModuleId"

    .line 965
    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_7
    const-string v2, "save_module_tab"

    .line 968
    invoke-static {v2, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 970
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v4}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 971
    invoke-static {v2, v1}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_8

    .line 972
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 974
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getRealIndex(II)I

    move-result p1

    return p1

    .line 943
    :cond_9
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->checkIntentExtraData(Landroid/content/Intent;)V

    .line 944
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getIsPadPosition()I

    move-result p1

    return p1

    .line 939
    :cond_a
    :goto_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->checkIntentExtraData(Landroid/content/Intent;)V

    .line 940
    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getRealIndex(II)I

    move-result p1

    return p1
.end method

.method private getRealIndex(II)I
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleManager;->getModuleAgent(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method private handlePendingIntent()V
    .locals 4

    .line 759
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    iget v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 760
    iget v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingRequestCode:I

    iget v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingResultCode:I

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingIntent:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/scanner/module/ModuleController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 762
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePendingIntent: current module_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " drops module_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'s request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initGestureDetector()V
    .locals 2

    .line 1732
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/xiaomi/scanner/app/ScanActivity$9;

    invoke-direct {v1, p0}, Lcom/xiaomi/scanner/app/ScanActivity$9;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 769
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/AndroidServices;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 772
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 779
    invoke-static {}, Lcom/xiaomi/scanner/util/AndroidServices;->instance()Lcom/xiaomi/scanner/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/AndroidServices;->provideKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 782
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isPull(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "barcode_rough_rule.json"

    const-string v1, "special_qr_rule.json"

    const-string v2, "cloud_control_config_all"

    const-string v3, "scan_payment_rule"

    :try_start_0
    const-string v4, "first_open_scanner"

    const/4 v5, 0x2

    .line 257
    invoke-static {v4, v5}, Lcom/xiaomi/scanner/util/SPUtils;->getLocal(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/xiaomi/scanner/app/ScanActivity;->firstOpenScan:I

    .line 258
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->firstOpenScan:I

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->pullCloud(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "inquireCloudConfig===\u662fwifi\u62c9\u53d6"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/xiaomi/scanner/config/ConfigModel;->instance:Lcom/xiaomi/scanner/config/ConfigModel;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/config/ConfigModel;->queryScanRuleConfig()V

    .line 263
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-static {v3, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 266
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string p2, "inquireCloudConfig===\u4e0d\u662fwifi\u8bb0\u5f55"

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "payment_rule"

    .line 267
    invoke-static {p1, v3}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->firstOpenScan:I

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->pullCloud(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {v2, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "config_all"

    .line 274
    invoke-static {p1, v2}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 277
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 278
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->firstOpenScan:I

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->pullCloud(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-static {v1, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string p1, "special_qr_rule"

    .line 282
    invoke-static {p1, v1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 286
    iget v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->firstOpenScan:I

    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->pullCloud(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 287
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string p1, "barcode_rough_rule"

    .line 290
    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    sget-object p2, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private keepScreenOnForAWhile()V
    .locals 4

    .line 1702
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    return-void

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1706
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1707
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private onCTAAndPermissionAgree()V
    .locals 2

    .line 907
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->doResumeOnGetAllPermission()V

    .line 908
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->checkAppStartRun()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->isPermissions:Z

    if-eqz v1, :cond_0

    .line 909
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onCTAAndPermissionAgree()V

    :cond_0
    return-void
.end method

.method private onCreateTasks(Landroid/os/Bundle;)V
    .locals 3

    .line 793
    sget-object p1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "onCreateTasks"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 794
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppUtil;->hideNavigationLayout(Landroid/app/Activity;)V

    const/4 v0, 0x3

    .line 795
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->setVolumeControlStream(I)V

    .line 796
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    .line 797
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity$MainHandler;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    .line 798
    new-instance v0, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/FatalErrorHandlerImpl;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    .line 799
    new-instance v0, Lcom/xiaomi/scanner/settings/SettingsManager;

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/settings/SettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    .line 801
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->createCameraController()V

    .line 803
    new-instance v0, Lcom/xiaomi/scanner/module/ModuleManagerImpl;

    invoke-direct {v0}, Lcom/xiaomi/scanner/module/ModuleManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

    .line 804
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v0, p0}, Lcom/xiaomi/scanner/module/ModulesInfo;->setupModules(Landroid/content/Context;Lcom/xiaomi/scanner/module/ModuleManager;Lcom/xiaomi/scanner/app/ScanActivity;)V

    const v0, 0x7f0d001f

    .line 806
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->setContentView(I)V

    .line 807
    new-instance v0, Lcom/xiaomi/scanner/app/AppUI;

    const v1, 0x7f0a0138

    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/scanner/app/AppUI;-><init>(Lcom/xiaomi/scanner/app/AppController;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    .line 808
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleIndex(Landroid/content/Intent;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->setModuleFromModeIndex(I)V

    .line 810
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->prepareModuleUI()V

    .line 812
    new-instance v0, Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/camera/CaptureModule;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 813
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    .line 814
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 815
    invoke-interface {v0, p0}, Lcom/xiaomi/scanner/module/ModuleController;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    goto :goto_0

    :cond_0
    const-string v0, "onCreateTasks, null CurrentModule"

    .line 817
    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 819
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->registerIntentReceiver()V

    .line 820
    new-instance p1, Lcom/xiaomi/scanner/app/ScanActivity$4;

    invoke-direct {p1, p0}, Lcom/xiaomi/scanner/app/ScanActivity$4;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnCreateTask:Ljava/lang/Runnable;

    .line 827
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 829
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isKoreaRegion()Z

    move-result p1

    if-nez p1, :cond_1

    .line 830
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->showConfirmDialog()V

    :cond_1
    return-void
.end method

.method private onPauseTasks()V
    .locals 2

    const/4 v0, 0x1

    .line 1092
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    .line 1093
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResumeSyncLoadTasks:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->removeSerialExecute(Ljava/lang/Runnable;)V

    .line 1094
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->pause()V

    .line 1096
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1097
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onPause()V

    goto :goto_0

    .line 1099
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPauseTasks,null CurrentModule"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1102
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    if-eqz v0, :cond_1

    .line 1103
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->pause()V

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_2

    const/high16 v1, 0x7f0f0000

    .line 1106
    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;->unloadSound(I)V

    .line 1107
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/camera/SoundPlayer;->unloadSound(I)V

    .line 1109
    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->resetScreenOn()V

    .line 1110
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->resetOpenCamera()V

    .line 1114
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraFatalError:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1115
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause when camera is in fatal state, call Activity.finish()"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    goto :goto_1

    .line 1119
    :cond_3
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause closing camera"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    if-eqz v0, :cond_4

    .line 1121
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraController;->closeCamera()V

    const/4 v0, 0x0

    .line 1122
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private onResumeTasks()V
    .locals 2

    const/4 v0, 0x0

    .line 1043
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    .line 1045
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->showPermissionRequestOrRun()V

    .line 1049
    :cond_0
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isKoreaRegion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isKoreaPermissionShowed()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/xiaomi/scanner/util/AppJumpUtils;->toShowKoreaPermission(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "toShowKoreaPermission success"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    .line 1054
    iget-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mIsCreatingCameraController:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 1055
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->createCameraController()V

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_3

    .line 1059
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->resume()V

    goto :goto_0

    .line 1061
    :cond_3
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "resume but mCaptureModule is null"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openModule(Lcom/xiaomi/scanner/module/ModuleController;)V
    .locals 1

    .line 1623
    invoke-interface {p1, p0}, Lcom/xiaomi/scanner/module/ModuleController;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 1624
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onStart()V

    .line 1625
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    if-nez v0, :cond_0

    .line 1626
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleController;->onResume()V

    :cond_0
    return-void
.end method

.method private printVersionInfo()V
    .locals 2

    .line 456
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "current version:13.2203.1,last commit:91eef7f,BUILD TIME:2023-07-12 11:07"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private pullCloud(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private registerIntentReceiver()V
    .locals 2

    .line 878
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 879
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "notifyFunctionSortRefresh"

    .line 880
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1, v0}, Lcom/xiaomi/scanner/util/IntentUtils;->registerSharedReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reportEnterFrom(Landroid/content/Intent;)V
    .locals 5

    .line 513
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleIndex(Landroid/content/Intent;)I

    move-result v0

    .line 514
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppUtil;->guessCallAppSource(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->intenntAction:Ljava/lang/String;

    const/4 v1, 0x0

    .line 515
    invoke-static {p0, v0, v1}, Lcom/xiaomi/scanner/util/AppUtil;->openScanApp(Landroid/app/Activity;IZ)V

    .line 516
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntentFrom from action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", category = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 518
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "android.intent.action.MAIN"

    .line 519
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "from_type"

    if-eqz v2, :cond_0

    const-string p1, "app"

    .line 520
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string v2, "miui.intent.action.scanner"

    .line 521
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "miui.intent.action.scanbarcode"

    .line 525
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "other"

    .line 528
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_0
    const-string p1, "browser"

    .line 526
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 522
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v2, "extra_intent_module_index"

    .line 523
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getRealIndex(II)I

    move-result p1

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "home_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private resetOpenCamera()V
    .locals 2

    .line 1717
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    const/4 v0, 0x0

    .line 1711
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeepScreenOn:Z

    .line 1712
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1713
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private setFullScreen()V
    .locals 4

    const v0, 0x7f0a00e3

    .line 500
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 501
    sget-boolean v1, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f0a00e4

    .line 502
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 503
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getStatusBarHeight()I

    move-result v1

    sget-boolean v3, Lcom/xiaomi/scanner/util/Util;->hasNativageBar:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->isFullScreenDevice()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/Utils;->getNavigationBarHeight()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v2, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private setModuleFromModeIndex(I)V
    .locals 1

    .line 1038
    iput p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    .line 1039
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mModuleManager:Lcom/xiaomi/scanner/module/ModuleManager;

    invoke-interface {v0, p1, p0}, Lcom/xiaomi/scanner/module/ModuleManager;->getModule(ILcom/xiaomi/scanner/app/ScanActivity;)Lcom/xiaomi/scanner/module/ModuleController;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    return-void
.end method

.method private showConfirmDialog()V
    .locals 4

    .line 885
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isRightVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$6;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$6;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    const/4 v1, 0x0

    const v2, 0x7f100127

    .line 891
    invoke-virtual {p0, v2}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100103

    invoke-virtual {p0, v3}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 887
    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaomi/scanner/util/DialogUtil;->createConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 894
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 897
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/scanner/util/CtaManager;->requestCtaDialog(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showPermissionRequestOrRun()V
    .locals 2

    .line 592
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->checkPermissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x3

    .line 595
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 597
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->isPermissions:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 599
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->isPermissions:Z

    .line 600
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCTAAndPermissionAgree()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addPreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->addPreviewAreaChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    return-void
.end method

.method public canUseShutterCallback()Z
    .locals 1

    .line 1084
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->isCanPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isHeadset()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkAppStartRun()Z
    .locals 2

    .line 1234
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->checkNewPermissions()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1235
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->isUserAgreeToRun()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->checkPermissions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public clearIntentData()V
    .locals 1

    .line 1725
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    const/4 v0, 0x0

    .line 1727
    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public doPrething()V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1228
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->doPrething()V

    :cond_0
    return-void
.end method

.method public enableKeepScreenOn(Z)V
    .locals 1

    .line 1413
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 1417
    :cond_0
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mKeepScreenOn:Z

    if-eqz p1, :cond_1

    .line 1419
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1420
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 1422
    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->keepScreenOnForAWhile()V

    :goto_0
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAppUI()Lcom/xiaomi/scanner/app/AppUI;
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    return-object v0
.end method

.method public getCameraApi()Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;
    .locals 2

    .line 1768
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isCamera1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "getCameraApi API_1"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1770
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_1:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    return-object v0

    .line 1772
    :cond_0
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "getCameraApi API_2"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1773
    sget-object v0, Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;->API_2:Lcom/android/ex/camera2/portability/CameraAgentFactory$CameraApi;

    return-object v0
.end method

.method public getCameraProvider()Lcom/xiaomi/scanner/camera/CameraProvider;
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    return-object v0
.end method

.method public getCameraScope()Ljava/lang/String;
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1329
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraController;->getCurrentCameraId()I

    move-result v0

    .line 1330
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1

    .line 1663
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_0

    .line 1664
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getCameraSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCaptureModule()Lcom/xiaomi/scanner/camera/CaptureModule;
    .locals 1

    .line 1659
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    return-object v0
.end method

.method public getCurrentModuleController()Lcom/xiaomi/scanner/module/ModuleController;
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    return-object v0
.end method

.method public getCurrentModuleIndex()I
    .locals 1

    .line 1306
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    return v0
.end method

.method public getExtraIntentImageUri()Landroid/net/Uri;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->extraIntentImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFatalErrorHandler()Lcom/xiaomi/scanner/camera/FatalErrorHandler;
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 1648
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mImagePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1649
    sget-object v0, Lmiuix/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1651
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mImagePath:Ljava/lang/String;

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentAction()Ljava/lang/String;
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->intenntAction:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentData()Landroid/os/Bundle;
    .locals 1

    .line 1721
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mExtraIntentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getModuleId(I)I
    .locals 1

    .line 1605
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1609
    :cond_0
    invoke-interface {p1}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getModuleId()I

    move-result p1

    return p1
.end method

.method public getModuleLayoutRoot()Landroid/view/View;
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->getModuleRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getModuleScope()Ljava/lang/String;
    .locals 2

    .line 1320
    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleBaseInfo(I)Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;

    move-result-object v0

    .line 1321
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleManager$ModuleBaseInfo;->getScopeNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;
    .locals 1

    .line 1433
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    return-object v0
.end method

.method public getPreviewTransform()Landroid/graphics/Matrix;
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_0

    .line 1671
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->getPreviewTransform()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServices()Lcom/xiaomi/scanner/camera/CameraServices;
    .locals 1

    .line 1614
    invoke-static {}, Lcom/xiaomi/scanner/camera/CameraServicesImpl;->instance()Lcom/xiaomi/scanner/camera/CameraServicesImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsManager()Lcom/xiaomi/scanner/settings/SettingsManager;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    return-object v0
.end method

.method public getStorageSpaceBytes()J
    .locals 3

    .line 1492
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1493
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageSpaceBytes:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 1494
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public grantUriPermission(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "com.miui.gallery"

    const/4 v1, 0x2

    .line 508
    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string v0, "com.miui.mediaeditor"

    .line 509
    invoke-virtual {p0, v0, p1, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCaptureNeeded()Z
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1398
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->isCaptureNeeded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFrameValid()Z
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-nez v0, :cond_0

    .line 696
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "isFrameValid error, null CaptureModule"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 699
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->isPreviewFrameValid()Z

    move-result v0

    return v0
.end method

.method public isHeadset()Z
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->isUseHeadset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1578
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    return v0
.end method

.method public isPickerNeeded()Z
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1406
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->isPickerNeeded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewReady(I)Z
    .locals 2

    .line 1677
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    if-nez v0, :cond_0

    .line 1678
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "camera is not available"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1680
    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getClearTask(I)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSdkReady()Z
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1220
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->isSdkReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isShutterEnabled()Z
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->isShutterButtonEnabled()Z

    move-result v0

    return v0
.end method

.method public launchActivityByIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1312
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    const/high16 v0, 0x80000

    .line 1313
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1315
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 704
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->t(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 706
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 708
    invoke-static {}, Lcom/xiaomi/scanner/util/AppUtil;->saveKoreaPermissionShowed()V

    .line 709
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCtaAgreeToRun()V

    return-void

    :cond_0
    const/16 v0, 0x1a

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    const-string p3, "pref_user_agree_permission"

    if-nez p2, :cond_1

    .line 716
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    const p2, 0x7f1000bc

    .line 717
    invoke-static {p2}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 718
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 720
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaomi/scanner/util/SPUtils;->saveToLocal(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCtaAgreeToRun()V

    .line 724
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->isPermissions:Z

    return-void

    :cond_3
    const/16 v0, 0x11

    if-ne p1, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 730
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCtaAgreeToRun()V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    .line 732
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    :cond_5
    :goto_1
    const/16 v0, 0x22

    if-ne p1, v0, :cond_7

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 738
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCtaAgreeToRun()V

    goto :goto_2

    :cond_6
    if-ne p2, v1, :cond_7

    .line 740
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    .line 744
    :cond_7
    :goto_2
    iput-object p3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingIntent:Landroid/content/Intent;

    shr-int/lit8 p3, p1, 0x10

    .line 745
    iput p3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingModuleIndex:I

    const p3, 0xffff

    and-int/2addr p1, p3

    .line 746
    iput p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingRequestCode:I

    .line 747
    iput p2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPendingResultCode:I

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1470
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1471
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->isCaptureNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1475
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onCameraClosed()V
    .locals 1

    .line 1762
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1763
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onCameraClosed()V

    :cond_0
    return-void
.end method

.method public onCameraDisabled(I)V
    .locals 3

    .line 1274
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera disabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1275
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onCameraDisabledFailure()V

    return-void
.end method

.method public onCameraOpened(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 3

    .line 1250
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onCameraOpened"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1251
    iget-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "received onCameraOpened but activity is paused, closing Camera"

    .line 1255
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1256
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/CameraController;->closeCamera()V

    .line 1257
    iput-boolean v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    return-void

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_1

    .line 1262
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    const/4 p1, 0x1

    .line 1263
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1265
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "Error connecting to camera"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1266
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onCameraOpenFailure()V

    .line 1267
    iput-boolean v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 462
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->printVersionInfo()V

    .line 463
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScreenUtils;->isPad(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 464
    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->setRequestedOrientation(I)V

    .line 469
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 472
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x700

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 479
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 480
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->scanWeakReference:Ljava/lang/ref/WeakReference;

    .line 481
    invoke-static {}, Lcom/xiaomi/scanner/app/ScannerApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/scanner/util/Util;->initialize(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 482
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100023

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->requestPermissions2:[Ljava/lang/String;

    .line 483
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->RESET_AUTO_FOCUS_DELAY_MILLIS:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/scanner/config/ConfigModel;->getDataFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "1000"

    if-eqz v1, :cond_2

    move-object v0, v2

    .line 488
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xiaomi/scanner/camera/FocusManager;->RESET_AUTO_FOCUS_DELAY_MILLIS:I

    .line 493
    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    .line 494
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->onCreateTasks(Landroid/os/Bundle;)V

    .line 495
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->reportEnterFrom(Landroid/content/Intent;)V

    .line 496
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->setFullScreen()V

    return-void
.end method

.method public onCtaAgreeToRun()V
    .locals 1

    const/4 v0, 0x1

    .line 902
    invoke-static {v0}, Lcom/xiaomi/scanner/util/AppUtil;->saveUserAgreeToRun(Z)V

    .line 903
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->showPermissionRequestOrRun()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 675
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onDestroyTasks()V

    .line 677
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDestroyTasks()V
    .locals 2

    const/4 v0, 0x1

    .line 1148
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    .line 1149
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1150
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnCreateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    if-eqz v0, :cond_1

    .line 1154
    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->onDestroy()V

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1157
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->destroy()V

    .line 1158
    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_3

    .line 1161
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onActivityDestroy()V

    .line 1162
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onDestroy()V

    .line 1163
    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    .line 1165
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    if-eqz v0, :cond_4

    .line 1166
    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->dismisssErrorDialog()V

    .line 1169
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mWarnDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0}, Lcom/xiaomi/scanner/util/DialogUtil;->dismissDialog(Landroid/app/Dialog;)V

    .line 1170
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/settings/SettingsManager;->removeAllListeners()V

    .line 1171
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    if-eqz v0, :cond_5

    .line 1172
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraController;->removeCallbackReceiver()V

    .line 1174
    :cond_5
    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSettingsManager:Lcom/xiaomi/scanner/settings/SettingsManager;

    .line 1176
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    if-eqz v0, :cond_6

    .line 1178
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/OrientationManagerImpl;->getmOrientationChangeListenerWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 1179
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1181
    :cond_6
    iput-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOrientationManager:Lcom/xiaomi/scanner/camera/OrientationManagerImpl;

    .line 1183
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1184
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_7

    .line 1187
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->release()V

    .line 1190
    :cond_7
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$7;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$7;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    .line 1204
    invoke-static {}, Lcom/xiaomi/scanner/module/ModulesInfo;->releaseActivity()V

    return-void

    :catchall_0
    move-exception v1

    .line 1185
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDeviceOpenFailure(ILjava/lang/String;)V
    .locals 2

    .line 1280
    sget-object p1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera open failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1281
    iget p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFailureRetryTimes:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFailureRetryTimes:I

    if-gez p1, :cond_0

    .line 1282
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onCameraOpenFailure()V

    goto :goto_0

    .line 1284
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public onDeviceOpenedAlready(ILjava/lang/String;)V
    .locals 3

    .line 1290
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera open already: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1291
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1438
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/scanner/module/ModuleController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 1442
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaomi/scanner/module/ModuleController;->shouldConsumeCameraKey()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x54

    if-ne p1, v1, :cond_2

    .line 1446
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "long press keycode search"

    .line 1447
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 1451
    :cond_2
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1458
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/scanner/module/ModuleController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->shouldConsumeCameraKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/camera/CaptureModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1465
    :cond_1
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onModuleSelected(I)V
    .locals 2

    .line 1584
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_1

    .line 1589
    invoke-direct {p0, v0}, Lcom/xiaomi/scanner/app/ScanActivity;->closeModule(Lcom/xiaomi/scanner/module/ModuleController;)V

    .line 1592
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->setModuleFromModeIndex(I)V

    .line 1594
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz p1, :cond_2

    .line 1595
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    .line 1596
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->openModule(Lcom/xiaomi/scanner/module/ModuleController;)V

    .line 1597
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-virtual {p1, v0}, Lcom/xiaomi/scanner/camera/CaptureModule;->requestUpdateZoom(Lcom/xiaomi/scanner/module/ModuleController;)V

    goto :goto_0

    .line 1599
    :cond_2
    sget-object p1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v0, "onModuleSelected, mCurrentModule is null"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 606
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 607
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->reportEnterFrom(Landroid/content/Intent;)V

    .line 608
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 610
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getModuleIndex(Landroid/content/Intent;)I

    move-result p1

    .line 611
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-nez v1, :cond_0

    const-string p1, "onNewIntent fail, null CurrentModule"

    .line 612
    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 615
    :cond_0
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    if-eq v0, p1, :cond_1

    .line 616
    invoke-direct {p0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->closeModule(Lcom/xiaomi/scanner/module/ModuleController;)V

    .line 617
    invoke-direct {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->setModuleFromModeIndex(I)V

    .line 618
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-virtual {p1, v0, v2}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    .line 619
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-static {}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getInstance()Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/util/ModuleBaseInfoManager;->getModuleListBySortId()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getCurrentModuleIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/scanner/app/AppUI;->addOrUpdateModuleList(Ljava/util/List;I)V

    .line 621
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    invoke-interface {p1, p0}, Lcom/xiaomi/scanner/module/ModuleController;->init(Lcom/xiaomi/scanner/app/ScanActivity;)V

    .line 623
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/AppUI;->createOrUpdateBottomUi()V

    .line 624
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {p1, v0, v2}, Lcom/xiaomi/scanner/app/AppUI;->addOrRemoveShutterListener(Lcom/xiaomi/scanner/ui/ShutterButton$OnShutterButtonListener;Z)V

    return-void
.end method

.method public onOrientationChange(I)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleController;->onOrientationChange(I)V

    :cond_0
    return-void
.end method

.method protected final onPause()V
    .locals 3

    .line 629
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    iget-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    if-nez v1, :cond_0

    const-string v1, "onPause --> onPauseTasks()"

    .line 636
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onPauseTasks()V

    .line 639
    :cond_0
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->onPreviewStarted()V

    return-void
.end method

.method public onReconnectionFailure(Lcom/android/ex/camera2/portability/CameraAgent;Ljava/lang/String;)V
    .locals 2

    .line 1296
    sget-object p1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera reconnection failure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1297
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mFatalErrorHandler:Lcom/xiaomi/scanner/camera/FatalErrorHandler;

    invoke-interface {p1}, Lcom/xiaomi/scanner/camera/FatalErrorHandler;->onCameraReconnectFailure()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 356
    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 357
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPermissionsResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 363
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/app/ScanActivity;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 366
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->NEW_STORAGE_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_1
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 370
    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_4

    .line 371
    aget v2, p3, v1

    if-eqz v2, :cond_2

    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const p1, 0x7f1000bc

    .line 372
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    .line 373
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->finish()V

    return-void

    .line 375
    :cond_2
    aget v2, p3, v1

    if-eqz v2, :cond_3

    aget-object v2, p2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const p1, 0x7f1000be

    .line 376
    invoke-static {p1}, Lcom/xiaomi/scanner/util/ToastUtils;->showCenterToast(I)V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 382
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f100024

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    .line 384
    invoke-static {p0}, Lcom/xiaomi/scanner/util/AppJumpUtils;->requestDecodeImage(Lcom/xiaomi/scanner/app/ScanActivity;)V

    return-void

    .line 387
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isPaused()Z

    move-result p1

    if-nez p1, :cond_6

    .line 388
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onCTAAndPermissionAgree()V

    :cond_6
    return-void
.end method

.method protected final onRestart()V
    .locals 2

    .line 664
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 665
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onRestart()V

    .line 667
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->onActivityRestart:Lcom/xiaomi/scanner/app/ScanActivity$onActivityRestart;

    if-eqz v0, :cond_0

    .line 668
    invoke-interface {v0}, Lcom/xiaomi/scanner/app/ScanActivity$onActivityRestart;->onRestart()V

    :cond_0
    return-void
.end method

.method protected final onResume()V
    .locals 5

    .line 550
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(): isKeyguardLocked() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 552
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 554
    iput-boolean v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    .line 555
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1e

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xf

    .line 557
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume() --> postDelayed(mOnResumeTasks,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mOnResumeTasks:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const-string v1, "onResume --> onResumeTasks()"

    .line 560
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSkippedFirstOnResume:Z

    .line 563
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onResumeTasks()V

    .line 565
    :goto_1
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 534
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onStartTasks()V

    .line 536
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method public onStartTasks()V
    .locals 1

    .line 1128
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/app/AppUI;->resume()V

    const/4 v0, 0x0

    .line 1130
    iput-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mResetToPreviewOnResume:Z

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_1

    .line 1134
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onStart()V

    :cond_1
    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 644
    sget-object v0, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "changing configurations"

    .line 646
    invoke-static {v0, v1}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->onStopTasks()V

    .line 649
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method protected onStopTasks()V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1140
    invoke-interface {v0}, Lcom/xiaomi/scanner/module/ModuleController;->onStop()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1485
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    if-eqz v0, :cond_1

    .line 1486
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->updateTouchEvent(Landroid/view/MotionEvent;)V

    .line 1488
    :cond_1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onUserInteraction()V
    .locals 1

    .line 752
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onUserInteraction()V

    .line 753
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->keepScreenOnForAWhile()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 995
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 996
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    if-eqz p1, :cond_0

    .line 997
    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/AppUI;->updateBottomCover()V

    :cond_0
    return-void
.end method

.method public playBeepAndVibrate()V
    .locals 3

    const/high16 v0, 0x7f0f0000

    const v1, 0x3dcccccd    # 0.1f

    .line 1066
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/scanner/app/ScanActivity;->playSound(IF)V

    .line 1067
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 1068
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public playSound(IF)V
    .locals 1

    .line 1078
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/SoundPlayer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mSoundPlayer:Lcom/xiaomi/scanner/camera/SoundPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/camera/SoundPlayer;->play(IF)V

    :cond_0
    return-void
.end method

.method public removePreviewAreaSizeChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V
    .locals 1

    .line 1352
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->removePreviewAreaChangedListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    return-void
.end method

.method public requestPreviewFrame()V
    .locals 1

    .line 682
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/scanner/app/ScanActivity$3;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setClearTask(ILjava/lang/Runnable;)V
    .locals 4

    .line 1684
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1685
    :try_start_0
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClearTask: moduleId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1686
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mClearTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1687
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 1689
    invoke-static {p2}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1687
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setInPictureTakenState(Z)V
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    if-eqz v0, :cond_0

    .line 1388
    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->setInPictureTakenState(Z)V

    .line 1389
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->onCanChooseChangeListener:Lcom/xiaomi/scanner/app/ScanActivity$onCanChooseChangeListener;

    if-eqz v0, :cond_0

    .line 1390
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/app/ScanActivity$onCanChooseChangeListener;->onChangeListener(Z)V

    :cond_0
    return-void
.end method

.method public setOnActivityRestart(Lcom/xiaomi/scanner/app/ScanActivity$onActivityRestart;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->onActivityRestart:Lcom/xiaomi/scanner/app/ScanActivity$onActivityRestart;

    return-void
.end method

.method public setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->setPreviewStatusListener(Lcom/xiaomi/scanner/ui/PreviewStatusListener;)V

    return-void
.end method

.method public setShutterEventsListener(Lcom/xiaomi/scanner/app/AppController$ShutterEventsListener;)V
    .locals 0

    return-void
.end method

.method public setmOrientation(II)V
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/scanner/app/AppUI;->configureTransform(II)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_0

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    .line 1634
    iget v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModuleIndex:I

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    .line 1636
    :cond_0
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->updatePreviewAspectRatio(F)V

    return-void
.end method

.method public updatePreviewTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {v0, p1}, Lcom/xiaomi/scanner/app/AppUI;->updatePreviewTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected updateStorageHint(J)V
    .locals 4

    .line 1540
    iget-boolean v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x2

    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    const p1, 0x7f100194

    .line 1548
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x3

    cmp-long v3, p1, v0

    if-nez v3, :cond_3

    const p1, 0x7f10001c

    .line 1550
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-wide/32 v0, 0x2faf080

    cmp-long v3, p1, v0

    if-gtz v3, :cond_4

    const p1, 0x7f1001c7

    .line 1552
    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_6

    .line 1556
    sget-object p2, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storage warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/scanner/debug/Log;->w(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 1557
    iget-object p2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    if-nez p2, :cond_5

    .line 1558
    invoke-static {p0, p1}, Lcom/xiaomi/scanner/ui/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/xiaomi/scanner/ui/OnScreenHint;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    goto :goto_2

    .line 1560
    :cond_5
    invoke-virtual {p2, p1}, Lcom/xiaomi/scanner/ui/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    :goto_2
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/ui/OnScreenHint;->show()V

    .line 1566
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/app/AppUI;->setDisableAllUserInteractions(Z)V

    goto :goto_3

    .line 1567
    :cond_6
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    if-eqz p1, :cond_7

    .line 1568
    invoke-virtual {p1}, Lcom/xiaomi/scanner/ui/OnScreenHint;->cancel()V

    .line 1569
    iput-object v2, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mStorageHint:Lcom/xiaomi/scanner/ui/OnScreenHint;

    .line 1572
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaomi/scanner/app/AppUI;->setDisableAllUserInteractions(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public updateStorageSpaceAndHint(Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V
    .locals 1

    .line 1516
    new-instance v0, Lcom/xiaomi/scanner/app/ScanActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/scanner/app/ScanActivity$8;-><init>(Lcom/xiaomi/scanner/app/ScanActivity;Lcom/xiaomi/scanner/app/ScanActivity$OnStorageUpdateDoneListener;)V

    invoke-static {v0}, Lcom/xiaomi/scanner/util/ScannerThreadPool;->poolExecute(Lcom/xiaomi/scanner/util/ScannerThreadPool$ScanThreadCallback;)V

    return-void
.end method

.method public updateWordTranslateUI(Z)V
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz v0, :cond_0

    .line 1244
    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/ModuleController;->updateWordTranslateUI(Z)V

    :cond_0
    return-void
.end method

.method public visibleChange(Z)V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraController:Lcom/xiaomi/scanner/camera/CameraController;

    .line 395
    sget-object v1, Lcom/xiaomi/scanner/app/ScanActivity;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visibleChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",cameraController="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 400
    invoke-virtual {v1}, Lcom/xiaomi/scanner/camera/CaptureModule;->pause()V

    .line 401
    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/CameraController;->closeCamera()V

    const/4 p1, 0x0

    .line 402
    iput-boolean p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCameraIsAvailable:Z

    goto :goto_0

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mAppUI:Lcom/xiaomi/scanner/app/AppUI;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/app/AppUI;->resetFlashState()V

    .line 405
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCaptureModule:Lcom/xiaomi/scanner/camera/CaptureModule;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/camera/CaptureModule;->resume()V

    .line 406
    iget-object p1, p0, Lcom/xiaomi/scanner/app/ScanActivity;->mCurrentModule:Lcom/xiaomi/scanner/module/ModuleController;

    if-eqz p1, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/xiaomi/scanner/app/ScanActivity;->getOrientationManager()Lcom/xiaomi/scanner/camera/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/scanner/camera/OrientationManager;->getDeviceOrientation()Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/camera/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaomi/scanner/module/ModuleController;->onOrientationChange(I)V

    :cond_2
    :goto_0
    return-void
.end method
