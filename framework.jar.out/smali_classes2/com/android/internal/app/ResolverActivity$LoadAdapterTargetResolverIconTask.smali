.class Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadAdapterTargetResolverIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 2232
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2232
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v8, 0x0

    .line 2241
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2264
    :cond_0
    return-object v8

    .line 2245
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 2246
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v4

    .line 2247
    .local v4, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->hasDisplayIcon()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2248
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-interface {v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2249
    .local v2, "displayIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 2250
    invoke-interface {v4, v2}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2252
    invoke-interface {v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayCheckedStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2253
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->getCheckedItemIMAGE(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    invoke-static {v5, v2}, Lcom/android/internal/app/ResolverActivity;->access$1200(Lcom/android/internal/app/ResolverActivity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2254
    .local v0, "checkedBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 2255
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2256
    .local v1, "checkedIcon":Landroid/graphics/drawable/Drawable;
    invoke-interface {v4, v1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->setDisplayCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2261
    .end local v0    # "checkedBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "checkedIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "displayIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->publishProgress([Ljava/lang/Object;)V

    .line 2245
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2232
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2275
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2276
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDisplayResolveIcons()V

    .line 2277
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 2236
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2237
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 2269
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2270
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/internal/app/ResolverActivity;->mLoadDisplayResolveIconSize:I
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$2202(I)I

    .line 2271
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2232
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadAdapterTargetResolverIconTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
