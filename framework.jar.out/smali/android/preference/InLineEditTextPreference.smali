.class public Landroid/preference/InLineEditTextPreference;
.super Landroid/preference/Preference;
.source "InLineEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EditTextInLinePreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/widget/EditText;

.field private mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHintText:Ljava/lang/CharSequence;

.field private mIcon:Landroid/widget/ImageView;

.field private mLayoutId:I

.field private mPwdIcon:Landroid/graphics/drawable/Drawable;

.field private mPwdMode:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextShown:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mVisiblePwdIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/InLineEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const v0, 0x1160122

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/InLineEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/InLineEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    iput-boolean v2, p0, Landroid/preference/InLineEditTextPreference;->mTextShown:Z

    .line 53
    new-instance v1, Landroid/preference/InLineEditTextPreference$1;

    invoke-direct {v1, p0}, Landroid/preference/InLineEditTextPreference$1;-><init>(Landroid/preference/InLineEditTextPreference;)V

    iput-object v1, p0, Landroid/preference/InLineEditTextPreference;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 65
    iput-object p1, p0, Landroid/preference/InLineEditTextPreference;->mContext:Landroid/content/Context;

    .line 66
    sget-object v1, Lcom/android/internal/R$styleable;->InLineEditTextPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/InLineEditTextPreference;->mLayoutId:I

    .line 69
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/InLineEditTextPreference;->mPwdIcon:Landroid/graphics/drawable/Drawable;

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    .line 71
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    .line 72
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/InLineEditTextPreference;->mVisiblePwdIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/preference/InLineEditTextPreference;->mPwdMode:Z

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void
.end method

.method static synthetic access$002(Landroid/preference/InLineEditTextPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Landroid/preference/InLineEditTextPreference;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    iput-object p1, p0, Landroid/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$100(Landroid/preference/InLineEditTextPreference;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/preference/InLineEditTextPreference;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method private onPasswordModeChange()V
    .locals 3

    .prologue
    .line 263
    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 264
    .local v0, "pos":I
    iget-boolean v1, p0, Landroid/preference/InLineEditTextPreference;->mTextShown:Z

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/preference/InLineEditTextPreference;->mVisiblePwdIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 271
    :goto_0
    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->postInvalidate()V

    .line 272
    if-ltz v0, :cond_0

    .line 273
    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 275
    :cond_0
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/preference/InLineEditTextPreference;->mPwdIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method


# virtual methods
.method public enablePasswordMode(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Landroid/preference/InLineEditTextPreference;->mPwdMode:Z

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/InLineEditTextPreference;->mTextShown:Z

    .line 192
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Landroid/preference/InLineEditTextPreference;->onPasswordModeChange()V

    .line 195
    :cond_0
    return-void
.end method

.method public getEditorHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEditorText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEditorView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method public isPasswordMode()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Landroid/preference/InLineEditTextPreference;->mPwdMode:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 228
    iget v0, p0, Landroid/preference/InLineEditTextPreference;->mLayoutId:I

    if-gez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const v0, 0x10203b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    .line 232
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-boolean v0, p0, Landroid/preference/InLineEditTextPreference;->mPwdMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/preference/InLineEditTextPreference;->mTextShown:Z

    if-nez v0, :cond_3

    .line 236
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 241
    :cond_2
    :goto_1
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    .line 242
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/preference/InLineEditTextPreference;->mPwdMode:Z

    if-eqz v0, :cond_5

    .line 243
    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Landroid/preference/InLineEditTextPreference;->mTextShown:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mVisiblePwdIcon:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1

    .line 243
    :cond_4
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mPwdIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 247
    :cond_5
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 255
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 256
    iget-boolean v0, p0, Landroid/preference/InLineEditTextPreference;->mTextShown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/preference/InLineEditTextPreference;->mTextShown:Z

    .line 257
    invoke-direct {p0}, Landroid/preference/InLineEditTextPreference;->onPasswordModeChange()V

    .line 259
    :cond_0
    return-void

    .line 256
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 208
    iget v2, p0, Landroid/preference/InLineEditTextPreference;->mLayoutId:I

    if-lez v2, :cond_1

    .line 209
    iget-object v2, p0, Landroid/preference/InLineEditTextPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 211
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Landroid/preference/InLineEditTextPreference;->mLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "layout":Landroid/view/View;
    const v2, 0x10203b3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    .line 213
    iget-object v2, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/preference/InLineEditTextPreference;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 215
    iget-object v2, p0, Landroid/preference/InLineEditTextPreference;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    iget-object v3, p0, Landroid/preference/InLineEditTextPreference;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 221
    .end local v0    # "layout":Landroid/view/View;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setEditorHint(I)V
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 160
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/InLineEditTextPreference;->setEditorHint(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public setEditorHint(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    :cond_1
    iput-object p1, p0, Landroid/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {p0}, Landroid/preference/InLineEditTextPreference;->notifyChanged()V

    .line 152
    :cond_2
    return-void
.end method

.method public setEditorText(I)V
    .locals 1
    .param p1, "textId"    # I

    .prologue
    .line 126
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/InLineEditTextPreference;->setEditorText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public setEditorText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    :cond_1
    iput-object p1, p0, Landroid/preference/InLineEditTextPreference;->mText:Ljava/lang/CharSequence;

    .line 113
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/preference/InLineEditTextPreference;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_2
    invoke-virtual {p0}, Landroid/preference/InLineEditTextPreference;->notifyChanged()V

    .line 118
    :cond_3
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mTextWatcher:Landroid/text/TextWatcher;

    if-ne v0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iput-object p1, p0, Landroid/preference/InLineEditTextPreference;->mTextWatcher:Landroid/text/TextWatcher;

    .line 99
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/preference/InLineEditTextPreference;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method
