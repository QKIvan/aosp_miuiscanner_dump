.class Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;
.super Landroid/content/ContextWrapper;
.source "CrossUserPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/CrossUserPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CrossUserContextWrapper"
.end annotation


# instance fields
.field mBase:Landroid/content/Context;

.field mCrossUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lmiuix/appcompat/app/CrossUserPickerActivity;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/CrossUserPickerActivity;Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;->this$0:Lmiuix/appcompat/app/CrossUserPickerActivity;

    .line 136
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 137
    iput-object p2, p0, Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;->mBase:Landroid/content/Context;

    .line 138
    iput-object p3, p0, Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;->mCrossUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .line 143
    iget-object v0, p0, Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;->mBase:Landroid/content/Context;

    iget-object v1, p0, Lmiuix/appcompat/app/CrossUserPickerActivity$CrossUserContextWrapper;->mCrossUser:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lmiuix/core/compat/ContextCompat;->getContentResolverForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method
