.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V
    .locals 0

    .line 1083
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 1086
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_mecard_web_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1902(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1088
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto/16 :goto_0

    .line 1089
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_mecard_phone_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1091
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Landroid/content/Intent;)Z

    goto :goto_0

    .line 1092
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pref_mecard_email_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1093
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1095
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Landroid/content/Intent;)Z

    goto :goto_0

    .line 1096
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_text_content_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    .line 1097
    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->WIFI:Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    if-ne p1, v0, :cond_3

    .line 1098
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2602(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;Z)Z

    .line 1099
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v2}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1900(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$12;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v3}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->showQRResult(Lcom/xiaomi/scanner/module/code/codec/QRCodeType;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return v1
.end method
