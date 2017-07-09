.class Landroid/widget/BottomToolBar$ViewHolder;
.super Ljava/lang/Object;
.source "BottomToolBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BottomToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/BottomToolBar;


# direct methods
.method private constructor <init>(Landroid/widget/BottomToolBar;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Landroid/widget/BottomToolBar$ViewHolder;->this$0:Landroid/widget/BottomToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BottomToolBar;Landroid/widget/BottomToolBar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/BottomToolBar;
    .param p2, "x1"    # Landroid/widget/BottomToolBar$1;

    .prologue
    .line 397
    invoke-direct {p0, p1}, Landroid/widget/BottomToolBar$ViewHolder;-><init>(Landroid/widget/BottomToolBar;)V

    return-void
.end method
