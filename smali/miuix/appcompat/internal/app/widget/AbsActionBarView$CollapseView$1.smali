.class Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 372
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView$1;->this$0:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->access$000(Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 373
    invoke-static {v1}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
