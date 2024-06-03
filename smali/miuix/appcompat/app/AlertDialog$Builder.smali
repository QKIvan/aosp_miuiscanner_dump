.class public Lmiuix/appcompat/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lmiuix/appcompat/app/AlertController$AlertParams;

.field private final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 314
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    new-instance v0, Lmiuix/appcompat/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 345
    invoke-static {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    .line 346
    iput p2, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->mTheme:I

    return-void
.end method


# virtual methods
.method public create()Lmiuix/appcompat/app/AlertDialog;
    .locals 3

    .line 937
    new-instance v0, Lmiuix/appcompat/app/AlertDialog;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->mTheme:I

    invoke-direct {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 938
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v2, v0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertController$AlertParams;->apply(Lmiuix/appcompat/app/AlertController;)V

    .line 939
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 940
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 941
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 943
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 944
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 945
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 946
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDialogShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setOnShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 947
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 948
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 359
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v0, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 657
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 658
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 566
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 434
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsChecked:Z

    .line 435
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 676
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 677
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 678
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 404
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setEnableDialogImmersive(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 887
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableDialogImmersive:Z

    return-object p0
.end method

.method public setHapticFeedbackEnabled(Z)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 373
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mHapticFeedbackEnabled:Z

    return-object p0
.end method

.method public setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 447
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 462
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 3

    .line 476
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 477
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 478
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 629
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 630
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 641
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 642
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 414
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 424
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 702
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 703
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 704
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 705
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 756
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 757
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p4, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 758
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 759
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 760
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 728
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 729
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 730
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 731
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 516
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 517
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 529
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 530
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 542
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 543
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 555
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 556
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 587
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDialogShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 876
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDialogShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 597
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 866
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 618
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 608
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 490
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 491
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 503
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 504
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 781
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 782
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 783
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 784
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 806
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 807
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p4, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 808
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 809
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 810
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 851
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 852
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 853
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 854
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 829
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 830
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p3, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 831
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 832
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 368
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 383
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 900
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 901
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 920
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Lmiuix/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 921
    iget-object p1, p0, Lmiuix/appcompat/app/AlertDialog$Builder;->P:Lmiuix/appcompat/app/AlertController$AlertParams;

    const/4 v0, 0x0

    iput v0, p1, Lmiuix/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    .line 964
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-object v0
.end method
