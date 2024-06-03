.class Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V
    .locals 0

    .line 1343
    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1346
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    .line 1347
    invoke-static {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$700(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    iget v1, v1, Lmiuix/popupwidget/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1348
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->setInputMethodMode(I)V

    .line 1349
    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method
