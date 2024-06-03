.class Lcom/xiaomi/scanner/module/code/utils/MiHomeListener$1;
.super Ljava/lang/Object;
.source "MiHomeListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->showInstallDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener$1;->this$0:Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 170
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener$1;->this$0:Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->access$000(Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/util/Util;->doStartApplicationWithPackageName(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    invoke-static {}, Lcom/xiaomi/scanner/module/code/utils/MiHomeListener;->access$200()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showInstallDialog Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
