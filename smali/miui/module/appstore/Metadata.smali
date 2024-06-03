.class Lmiui/module/appstore/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# static fields
.field private static final KEY_FILE_HASH:Ljava/lang/String; = "fileHash"

.field private static final KEY_HOST:Ljava/lang/String; = "host"

.field private static final KEY_RESOURCE_ID:Ljava/lang/String; = "resourceId"

.field private static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field public mFileHash:Ljava/lang/String;

.field public mHost:Ljava/lang/String;

.field public mResourceId:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lorg/json/JSONObject;)Lmiui/module/appstore/Metadata;
    .locals 2

    .line 23
    new-instance v0, Lmiui/module/appstore/Metadata;

    invoke-direct {v0}, Lmiui/module/appstore/Metadata;-><init>()V

    :try_start_0
    const-string v1, "resourceId"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/module/appstore/Metadata;->mResourceId:Ljava/lang/String;

    const-string v1, "host"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/module/appstore/Metadata;->mHost:Ljava/lang/String;

    const-string v1, "url"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/module/appstore/Metadata;->mUrl:Ljava/lang/String;

    const-string v1, "fileHash"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lmiui/module/appstore/Metadata;->mFileHash:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
