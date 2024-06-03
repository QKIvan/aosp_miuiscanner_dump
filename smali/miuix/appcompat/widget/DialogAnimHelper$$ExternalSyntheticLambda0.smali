.class public final synthetic Lmiuix/appcompat/widget/DialogAnimHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lmiuix/appcompat/widget/DialogAnimHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-boolean p3, p0, Lmiuix/appcompat/widget/DialogAnimHelper$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/widget/DialogAnimHelper$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-boolean v2, p0, Lmiuix/appcompat/widget/DialogAnimHelper$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->lambda$executeAnim$0(Landroid/view/View;Landroid/view/View;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
