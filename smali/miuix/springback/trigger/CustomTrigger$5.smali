.class Lmiuix/springback/trigger/CustomTrigger$5;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 5

    .line 511
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 512
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 515
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result v0

    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v2, v2}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 521
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 522
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 525
    :cond_2
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$1200(Lmiuix/springback/trigger/CustomTrigger;)J

    move-result-wide v0

    const-wide/16 v3, 0x1388

    cmp-long p1, v0, v3

    if-lez p1, :cond_3

    .line 526
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 527
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$1300(Lmiuix/springback/trigger/CustomTrigger;)V

    .line 529
    :cond_3
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1, v2}, Lmiuix/springback/trigger/CustomTrigger;->access$1002(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    return-void
.end method

.method public onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 3

    .line 582
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1002(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 583
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 584
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {v0, v2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 587
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result v0

    if-nez v0, :cond_1

    .line 588
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 593
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    :cond_2
    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 3

    .line 534
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1002(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 535
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 536
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 539
    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    .line 540
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 542
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_2

    .line 543
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    .line 546
    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V
    .locals 3

    .line 492
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1002(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 493
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 494
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V

    .line 497
    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Lmiuix/springback/view/SpringBackLayout;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    .line 498
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 500
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_2

    .line 501
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    .line 504
    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 5

    .line 553
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$1002(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    .line 554
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 555
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/BaseTrigger$Action;

    if-ne v0, p1, :cond_1

    .line 557
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v2

    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v3, v3, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-ne v2, v3, :cond_1

    .line 558
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v3, v2, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    invoke-virtual {v2, v3}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    .line 559
    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v2

    .line 560
    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v3, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$602(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 561
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v3

    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v4, v4, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    invoke-static {v0, v3, v2, v4}, Lmiuix/springback/trigger/CustomTrigger;->access$1400(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    .line 562
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 566
    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    .line 567
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    neg-int v0, v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v1}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 569
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_1
    return-void
.end method

.method public onUpdateTriggerTextIndex(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;ILjava/lang/String;)V
    .locals 0

    .line 577
    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    aput-object p3, p1, p2

    return-void
.end method
