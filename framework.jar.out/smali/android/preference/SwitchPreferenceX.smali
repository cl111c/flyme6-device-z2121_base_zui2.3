.class public Landroid/preference/SwitchPreferenceX;
.super Landroid/preference/SwitchPreference;
.source "SwitchPreferenceX.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClientListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Landroid/preference/SwitchPreferenceX;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/preference/SwitchPreferenceX;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 89
    const v2, 0x10203bc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 91
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 92
    check-cast v1, Landroid/widget/Switch;

    .line 93
    .local v1, "switchView":Landroid/widget/Switch;
    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 59
    iget-boolean v1, p0, Landroid/preference/SwitchPreferenceX;->mSwitchChecked:Z

    if-eq v1, p2, :cond_2

    const/4 v0, 0x1

    .line 60
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 61
    iput-boolean p2, p0, Landroid/preference/SwitchPreferenceX;->mSwitchChecked:Z

    .line 62
    invoke-virtual {p0, p2}, Landroid/preference/SwitchPreferenceX;->persistBoolean(Z)Z

    .line 64
    :cond_0
    iget-object v1, p0, Landroid/preference/SwitchPreferenceX;->mClientListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Landroid/preference/SwitchPreferenceX;->mClientListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 67
    :cond_1
    return-void

    .line 59
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Landroid/preference/SwitchPreferenceX;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    const v2, 0x10203bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 78
    .local v0, "v":Landroid/widget/Switch;
    if-eqz v0, :cond_0

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    .line 80
    iget-boolean v2, p0, Landroid/preference/SwitchPreferenceX;->mChecked:Z

    iput-boolean v2, p0, Landroid/preference/SwitchPreferenceX;->mSwitchChecked:Z

    .line 81
    iget-boolean v2, p0, Landroid/preference/SwitchPreferenceX;->mSwitchChecked:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 83
    :cond_0
    return-object v1
.end method

.method public setSwitchListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/preference/SwitchPreferenceX;->mClientListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 55
    return-void
.end method
