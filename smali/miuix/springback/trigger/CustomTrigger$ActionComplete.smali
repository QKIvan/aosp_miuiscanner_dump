.class Lmiuix/springback/trigger/CustomTrigger$ActionComplete;
.super Lmiuix/springback/trigger/TriggerState;
.source "CustomTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionComplete"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .locals 0

    .line 854
    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$ActionComplete;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Lmiuix/springback/trigger/TriggerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/CustomTrigger$1;)V
    .locals 0

    .line 854
    invoke-direct {p0, p1}, Lmiuix/springback/trigger/CustomTrigger$ActionComplete;-><init>(Lmiuix/springback/trigger/CustomTrigger;)V

    return-void
.end method


# virtual methods
.method handleScrollStateChange(II)V
    .locals 0

    .line 858
    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/TriggerState;->handleScrollStateChange(II)V

    if-nez p2, :cond_0

    .line 860
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$ActionComplete;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_0
    return-void
.end method
