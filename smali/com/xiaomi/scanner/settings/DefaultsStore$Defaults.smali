.class Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;
.super Ljava/lang/Object;
.source "DefaultsStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/settings/DefaultsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Defaults"
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/String;

.field private mPossibleValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;->mDefaultValue:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;->mPossibleValues:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPossibleValues()[Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;->mPossibleValues:[Ljava/lang/String;

    return-object v0
.end method
