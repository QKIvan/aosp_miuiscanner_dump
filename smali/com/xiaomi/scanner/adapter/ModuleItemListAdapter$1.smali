.class Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$1;
.super Ljava/lang/Object;
.source "ModuleItemListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->onBindViewHolder(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$ItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$1;->this$0:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    iput p2, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$1;->this$0:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    invoke-static {v0}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->access$000(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;)Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$1;->this$0:Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;

    invoke-static {v0}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;->access$000(Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter;)Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$1;->val$i:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/scanner/adapter/ModuleItemListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
