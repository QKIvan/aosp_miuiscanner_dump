.class Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;
.super Ljava/lang/Object;
.source "QRResultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 955
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 958
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object p1

    if-nez p1, :cond_0

    .line 959
    invoke-static {}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$300()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object p1

    const-string v0, "QRCodeType is null"

    invoke-static {p1, v0}, Lcom/xiaomi/scanner/debug/Log;->i(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 962
    :cond_0
    sget-object p1, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$15;->$SwitchMap$com$xiaomi$scanner$module$code$codec$QRCodeType:[I

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Lcom/xiaomi/scanner/module/code/codec/QRCodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/codec/QRCodeType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1011
    :pswitch_0
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto/16 :goto_0

    .line 1007
    :pswitch_1
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2100(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto/16 :goto_0

    .line 1003
    :pswitch_2
    new-instance p1, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;

    invoke-direct {p1}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;-><init>()V

    .line 1004
    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1900(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$2000(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;->PAYTM:Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/scanner/payment/PaymentQRCodeScanning;->scanningCompleted(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/scanner/payment/UpiFactory$UpiConstant;)Z

    goto/16 :goto_0

    .line 992
    :pswitch_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    .line 993
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    return-void

    .line 997
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1600(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 998
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 1000
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1800(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 989
    :pswitch_4
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 986
    :pswitch_5
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$700(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 983
    :pswitch_6
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 976
    :pswitch_7
    invoke-static {}, Lcom/xiaomi/scanner/util/PermissionsUtils;->getInstance()Lcom/xiaomi/scanner/util/PermissionsUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/scanner/util/PermissionsUtils;->hasPermission(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 977
    invoke-static {}, Lcom/xiaomi/scanner/util/PermissionsUtils;->getInstance()Lcom/xiaomi/scanner/util/PermissionsUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {v0}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {v1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1400(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    iget-object v2, v2, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->locationPermissionsResult:Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;

    sget v3, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->FINE_LOCATION_CODE:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xiaomi/scanner/util/PermissionsUtils;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/xiaomi/scanner/util/PermissionsUtils$IPermissionsResult;I)V

    return-void

    .line 980
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1500(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 972
    :pswitch_8
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1300(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    goto :goto_0

    .line 967
    :pswitch_9
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-virtual {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->launchMIUIMarket()V

    goto :goto_0

    .line 964
    :pswitch_a
    iget-object p1, p0, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment$10;->this$0:Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;

    invoke-static {p1}, Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;->access$1200(Lcom/xiaomi/scanner/module/code/ui/QRResultFragment;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
