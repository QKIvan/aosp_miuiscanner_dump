.class Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;
.super Ljava/lang/Object;
.source "ActionBarViewPagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentInfo"
.end annotation


# instance fields
.field args:Landroid/os/Bundle;

.field clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field fragment:Landroidx/fragment/app/Fragment;

.field hasActionMenu:Z

.field tab:Landroidx/appcompat/app/ActionBar$Tab;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/appcompat/app/ActionBar$Tab;",
            "Z)V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->this$0:Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p2, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->tag:Ljava/lang/String;

    .line 327
    iput-object p3, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->clazz:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 328
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->fragment:Landroidx/fragment/app/Fragment;

    .line 329
    iput-object p4, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->args:Landroid/os/Bundle;

    .line 330
    iput-object p5, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->tab:Landroidx/appcompat/app/ActionBar$Tab;

    .line 331
    iput-boolean p6, p0, Lmiuix/appcompat/internal/app/widget/DynamicFragmentPagerAdapter$FragmentInfo;->hasActionMenu:Z

    return-void
.end method
