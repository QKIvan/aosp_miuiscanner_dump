.class Lmiuix/appcompat/app/AppCompatActivity$Callback;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/ActivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity$Callback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 239
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/AppCompatActivity;->access$801(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$901(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$101(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 229
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->access$601(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 224
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$501(Lmiuix/appcompat/app/AppCompatActivity;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->access$401(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPostResume()V
    .locals 1

    .line 209
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/AppCompatActivity;->access$201(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 234
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->access$701(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$1101(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$1001(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 214
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/appcompat/app/AppCompatActivity;->access$301(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method
