.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->createSearchActionModeView()Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .locals 0

    .line 1046
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1049
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_0

    .line 1050
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    iget-object p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
