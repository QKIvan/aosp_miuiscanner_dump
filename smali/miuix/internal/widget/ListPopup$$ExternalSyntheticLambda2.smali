.class public final synthetic Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;->f$0:Lmiuix/internal/widget/ListPopup;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$$ExternalSyntheticLambda2;->f$0:Lmiuix/internal/widget/ListPopup;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiuix/internal/widget/ListPopup;->lambda$prepareShow$2$miuix-internal-widget-ListPopup(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
