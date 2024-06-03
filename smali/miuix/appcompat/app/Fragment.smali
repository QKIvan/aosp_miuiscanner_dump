.class public Lmiuix/appcompat/app/Fragment;
.super Landroidx/fragment/app/Fragment;
.source "Fragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;


# instance fields
.field private mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

.field private mHasMenu:Z

.field private mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 24
    iput-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .locals 1

    .line 341
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 1

    .line 80
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .locals 1

    .line 84
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 93
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .line 108
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 65
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 147
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 149
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 30
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 201
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 346
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 348
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    .line 292
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 293
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 296
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    if-nez p1, :cond_0

    .line 223
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p0, p3}, Lmiuix/appcompat/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 42
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->onPostResume()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 36
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->onStop()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->requestWindowFeature(I)Z

    move-result p1

    return p1
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 114
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 115
    iput-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 1

    .line 317
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setImmersionMenuEnabled(Z)V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 125
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 126
    iput-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    .line 127
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V

    return-void
.end method

.method public setThemeRes(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method

.method public showImmersionMenu()V
    .locals 1

    .line 325
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->showImmersionMenu()V

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1, p2}, Lmiuix/appcompat/app/FragmentDelegate;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 98
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public updateOptionsMenuContent()V
    .locals 1

    .line 160
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 161
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->isImmersionMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
