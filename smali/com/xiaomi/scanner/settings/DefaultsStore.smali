.class Lcom/xiaomi/scanner/settings/DefaultsStore;
.super Ljava/lang/Object;
.source "DefaultsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;
    }
.end annotation


# static fields
.field private static mDefaultsInternalStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/scanner/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/xiaomi/scanner/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;->getDefaultValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/xiaomi/scanner/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;->getPossibleValues()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;

    invoke-direct {v0, p2, p3}, Lcom/xiaomi/scanner/settings/DefaultsStore$Defaults;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    sget-object p2, Lcom/xiaomi/scanner/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
