.class public Lmiuix/module/Dependency$Level;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/module/Dependency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Level"
.end annotation


# instance fields
.field private maxLevel:I

.field private minLevel:I

.field private targetLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLevel()I
    .locals 1

    .line 69
    iget v0, p0, Lmiuix/module/Dependency$Level;->maxLevel:I

    return v0
.end method

.method public getMinLevel()I
    .locals 1

    .line 53
    iget v0, p0, Lmiuix/module/Dependency$Level;->minLevel:I

    return v0
.end method

.method public getTargetLevel()I
    .locals 1

    .line 61
    iget v0, p0, Lmiuix/module/Dependency$Level;->targetLevel:I

    return v0
.end method

.method public setMaxLevel(I)V
    .locals 0

    .line 73
    iput p1, p0, Lmiuix/module/Dependency$Level;->maxLevel:I

    return-void
.end method

.method public setMinLevel(I)V
    .locals 0

    .line 57
    iput p1, p0, Lmiuix/module/Dependency$Level;->minLevel:I

    return-void
.end method

.method public setTargetLevel(I)V
    .locals 0

    .line 65
    iput p1, p0, Lmiuix/module/Dependency$Level;->targetLevel:I

    return-void
.end method
