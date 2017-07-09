.class Landroid/preference/InLineEditTextPreference$1;
.super Ljava/lang/Object;
.source "InLineEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/InLineEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/InLineEditTextPreference;


# direct methods
.method constructor <init>(Landroid/preference/InLineEditTextPreference;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/preference/InLineEditTextPreference$1;->this$0:Landroid/preference/InLineEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference$1;->this$0:Landroid/preference/InLineEditTextPreference;

    iget-object v1, p0, Landroid/preference/InLineEditTextPreference$1;->this$0:Landroid/preference/InLineEditTextPreference;

    # getter for: Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/preference/InLineEditTextPreference;->access$100(Landroid/preference/InLineEditTextPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Landroid/preference/InLineEditTextPreference;->access$002(Landroid/preference/InLineEditTextPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 60
    :cond_0
    return-void
.end method
