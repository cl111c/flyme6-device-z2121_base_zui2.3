.class final Lcom/android/server/pm/Settings$PackageState;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PackageState"
.end annotation


# instance fields
.field pkgName:Ljava/lang/String;

.field stopped:Z

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Settings;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/pm/Settings$PackageState;->this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
