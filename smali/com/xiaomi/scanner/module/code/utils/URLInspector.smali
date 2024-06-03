.class public Lcom/xiaomi/scanner/module/code/utils/URLInspector;
.super Landroid/os/AsyncTask;
.source "URLInspector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final RISK_PHISH:I = 0x1

.field public static final RISK_SAFETY:I = 0x0

.field public static final RISK_UNKNOWN:I = -0x1

.field public static final RISK_UNSAFETY:I = 0x2

.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field protected mOnReceivedDataListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "URLInspector"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->mOnReceivedDataListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    return-void
.end method

.method public static getHTML(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 85
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 86
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 93
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v0, p1

    .line 98
    :goto_1
    :try_start_2
    sget-object v2, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v3, "Exception"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object p1

    .line 101
    :goto_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 105
    :cond_3
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private parserJson(Ljava/lang/String;)I
    .locals 4

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 119
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "success"

    .line 121
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 123
    sget-object p1, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res    ==     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xiaomi/scanner/debug/Log;->d(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "phish"

    .line 124
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 130
    sget-object v0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v2, "JSONException"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 44
    invoke-static {}, Lcom/xiaomi/scanner/util/DeviceUtil;->isInternationalBuild()Z

    const/4 p1, -0x1

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->mOnReceivedDataListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;->onInspected(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public setOnReceivedDataListener(Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/URLInspector;->mOnReceivedDataListener:Lcom/xiaomi/scanner/module/code/utils/URLInspector$OnInspectedListener;

    return-void
.end method
