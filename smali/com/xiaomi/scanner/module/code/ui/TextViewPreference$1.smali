.class Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;
.super Ljava/lang/Object;
.source "TextViewPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->access$000(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$1;->this$0:Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;->access$000(Lcom/xiaomi/scanner/module/code/ui/TextViewPreference;)Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/scanner/module/code/ui/TextViewPreference$OnSmsClickListener;->onSmsClick()V

    :cond_0
    return-void
.end method
