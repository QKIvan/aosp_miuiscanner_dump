.class public abstract Lmiuix/animation/controller/FolmeBase;
.super Ljava/lang/Object;
.source "FolmeBase.java"

# interfaces
.implements Lmiuix/animation/IStateContainer;


# instance fields
.field mState:Lmiuix/animation/controller/IFolmeStateStyle;


# direct methods
.method varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lmiuix/animation/controller/StateComposer;->composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;

    move-result-object p1

    iput-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    return-void
.end method


# virtual methods
.method public varargs addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->addConfig(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 34
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->cancel()V

    :cond_0
    return-void
.end method

.method public varargs cancel([Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->cancel([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :cond_0
    return-void
.end method

.method public clean()V
    .locals 1

    .line 20
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->clean()V

    :cond_0
    return-void
.end method

.method public enableDefaultAnim(Z)V
    .locals 1

    .line 55
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->enableDefaultAnim(Z)V

    :cond_0
    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1}, Lmiuix/animation/controller/IFolmeStateStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
