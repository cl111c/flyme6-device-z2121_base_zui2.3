.class public Landroid/app/TimePickerDialogX;
.super Landroid/app/ActionDialog;
.source "TimePickerDialogX.java"

# interfaces
.implements Landroid/widget/NumberPickerX$OnValueChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/TimePickerDialogX$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mAmPm:Landroid/widget/NumberPickerX;

.field private final mAmPmDivider:Landroid/widget/ImageView;

.field private mAmPmStrings:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHour:Landroid/widget/NumberPickerX;

.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mLocale:Ljava/util/Locale;

.field private final mMinutes:Landroid/widget/NumberPickerX;

.field private final mTimeSetCallback:Landroid/app/TimePickerDialogX$OnTimeSetListener;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialogX$OnTimeSetListener;IIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Landroid/app/TimePickerDialogX$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    .line 110
    invoke-static {p1, p2}, Landroid/app/TimePickerDialogX;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, p1, v5}, Landroid/app/ActionDialog;-><init>(Landroid/content/Context;I)V

    .line 111
    iput-object p1, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    .line 112
    iput-object p3, p0, Landroid/app/TimePickerDialogX;->mTimeSetCallback:Landroid/app/TimePickerDialogX$OnTimeSetListener;

    .line 113
    iput p4, p0, Landroid/app/TimePickerDialogX;->mInitialHourOfDay:I

    .line 114
    iput p5, p0, Landroid/app/TimePickerDialogX;->mInitialMinute:I

    .line 115
    iput-boolean p6, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    .line 117
    invoke-virtual {p0}, Landroid/app/TimePickerDialogX;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 118
    .local v3, "themeContext":Landroid/content/Context;
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 119
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 120
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x116011f

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 122
    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 123
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/app/TimePickerDialogX;->setView(Landroid/view/View;)V

    .line 124
    const/4 v5, -0x1

    iget-object v6, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    const v7, 0x10405f4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p0}, Landroid/app/TimePickerDialogX;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    const/4 v5, -0x2

    iget-object v6, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    const v7, 0x10405f8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p0}, Landroid/app/TimePickerDialogX;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Landroid/app/TimePickerDialogX;->mLocale:Ljava/util/Locale;

    .line 129
    const v5, 0x102042b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerX;

    iput-object v5, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    .line 130
    iget-boolean v5, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    if-eqz v5, :cond_0

    .line 131
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    const/16 v6, 0x17

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 132
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 133
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-static {}, Landroid/widget/NumberPickerX;->getTwoDigitFormatter()Landroid/widget/NumberPickerX$Formatter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setFormatter(Landroid/widget/NumberPickerX$Formatter;)V

    .line 138
    :goto_0
    iget v5, p0, Landroid/app/TimePickerDialogX;->mInitialHourOfDay:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/app/TimePickerDialogX;->setCurrentHour(IZ)V

    .line 139
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 140
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerX;->setOnValueChangedListener(Landroid/widget/NumberPickerX$OnValueChangeListener;)V

    .line 142
    const v5, 0x102042c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerX;

    iput-object v5, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    .line 143
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 144
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 145
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-static {}, Landroid/widget/NumberPickerX;->getTwoDigitFormatter()Landroid/widget/NumberPickerX$Formatter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setFormatter(Landroid/widget/NumberPickerX$Formatter;)V

    .line 146
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    iget v6, p0, Landroid/app/TimePickerDialogX;->mInitialMinute:I

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 147
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 148
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerX;->setOnValueChangedListener(Landroid/widget/NumberPickerX$OnValueChangeListener;)V

    .line 150
    const v5, 0x102042e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPickerX;

    iput-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    .line 152
    invoke-direct {p0}, Landroid/app/TimePickerDialogX;->getAmPmStrings()V

    .line 153
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 154
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 156
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    iget-object v6, p0, Landroid/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 162
    iget v5, p0, Landroid/app/TimePickerDialogX;->mInitialHourOfDay:I

    const/16 v6, 0xc

    if-ge v5, v6, :cond_1

    .line 163
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 167
    :goto_1
    iget-boolean v5, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    if-eqz v5, :cond_2

    const/16 v0, 0x8

    .line 168
    .local v0, "amPmVisibility":I
    :goto_2
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    invoke-virtual {v5, v0}, Landroid/widget/NumberPickerX;->setVisibility(I)V

    .line 169
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    invoke-virtual {v5, p0}, Landroid/widget/NumberPickerX;->setOnValueChangedListener(Landroid/widget/NumberPickerX$OnValueChangeListener;)V

    .line 170
    const v5, 0x102042d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPmDivider:Landroid/widget/ImageView;

    .line 171
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPmDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    const v5, 0x102042a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/app/TimePickerDialogX;->mTitle:Landroid/widget/TextView;

    .line 174
    return-void

    .line 135
    .end local v0    # "amPmVisibility":I
    :cond_0
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 136
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    goto/16 :goto_0

    .line 165
    :cond_1
    iget-object v5, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/NumberPickerX;->setValue(I)V

    goto :goto_1

    .line 167
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialogX$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/TimePickerDialogX$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 87
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialogX;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialogX$OnTimeSetListener;IIZ)V

    .line 88
    return-void
.end method

.method private getAmPmStrings()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 352
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    .line 353
    iget-object v1, p0, Landroid/app/TimePickerDialogX;->mLocale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 354
    .local v0, "localeData":Llibcore/icu/LocaleData;
    if-eqz v0, :cond_2

    .line 355
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->narrowAm:Ljava/lang/String;

    :goto_0
    aput-object v1, v2, v4

    .line 356
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, v0, Llibcore/icu/LocaleData;->narrowPm:Ljava/lang/String;

    :goto_1
    aput-object v1, v2, v5

    .line 361
    :goto_2
    return-void

    .line 355
    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v1, v1, v4

    goto :goto_0

    .line 356
    :cond_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v1, v1, v5

    goto :goto_1

    .line 358
    :cond_2
    iget-object v1, p0, Landroid/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 359
    iget-object v1, p0, Landroid/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_2
.end method

.method private isAm()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    iget-boolean v2, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    if-eqz v2, :cond_2

    .line 309
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 309
    goto :goto_0

    .line 311
    :cond_2
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private needsFormatTitle()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mLocale:Ljava/util/Locale;

    if-nez v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v1

    .line 367
    :cond_1
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    const-string/jumbo v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 93
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1160117

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 94
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 96
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local p1    # "resid":I
    :cond_0
    return p1
.end method

.method private setCurrentHour(IZ)V
    .locals 2
    .param p1, "currentHour"    # I
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 316
    invoke-virtual {p0}, Landroid/app/TimePickerDialogX;->getCurrentHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Landroid/app/TimePickerDialogX;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    if-lt p1, v1, :cond_3

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/TimePickerDialogX;->mIsAm:Z

    .line 323
    if-le p1, v1, :cond_1

    .line 324
    add-int/lit8 p1, p1, -0xc

    .line 332
    :cond_1
    :goto_1
    invoke-direct {p0}, Landroid/app/TimePickerDialogX;->updateAmPmControl()V

    .line 334
    :cond_2
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerX;->setValue(I)V

    goto :goto_0

    .line 327
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/TimePickerDialogX;->mIsAm:Z

    .line 328
    if-nez p1, :cond_1

    .line 329
    const/16 p1, 0xc

    goto :goto_1
.end method

.method private updateAmPmControl()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-virtual {p0}, Landroid/app/TimePickerDialogX;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    iget-object v1, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerX;->setVisibility(I)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-boolean v2, p0, Landroid/app/TimePickerDialogX;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 344
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 346
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPickerX;->setVisibility(I)V

    goto :goto_0

    .line 343
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateTitle(IIZ)V
    .locals 11
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "isAm"    # Z

    .prologue
    const/16 v4, 0xc

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "ampm":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    if-eqz v3, :cond_0

    .line 275
    const-string v0, ""

    .line 299
    :goto_0
    iget-object v3, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10405f9

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    if-eqz v3, :cond_6

    const-string v3, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v6, v9

    const-string v3, "%02d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v10

    const/4 v3, 0x2

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/TimePickerDialogX;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    return-void

    .line 278
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Landroid/app/TimePickerDialogX;->needsFormatTitle()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 279
    iget-object v3, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 280
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz p3, :cond_2

    .line 281
    if-ne p1, v4, :cond_1

    .line 282
    iget-object v3, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_1
    iget-object v3, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_2
    if-ne p1, v4, :cond_3

    .line 288
    iget-object v3, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_3
    iget-object v3, p0, Landroid/app/TimePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 294
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_4
    if-eqz p3, :cond_5

    iget-object v3, p0, Landroid/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v9

    :goto_2
    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Landroid/app/TimePickerDialogX;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v10

    goto :goto_2

    .line 299
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public getAm()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/app/TimePickerDialogX;->mIsAm:Z

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v1}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    .line 179
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/app/TimePickerDialogX;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .line 181
    .restart local v0    # "currentHour":I
    :cond_0
    iget-boolean v1, p0, Landroid/app/TimePickerDialogX;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 182
    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 184
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    return v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 258
    packed-switch p2, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mTimeSetCallback:Landroid/app/TimePickerDialogX$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mTimeSetCallback:Landroid/app/TimePickerDialogX$OnTimeSetListener;

    iget-object v1, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v1}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    invoke-direct {p0}, Landroid/app/TimePickerDialogX;->isAm()Z

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/app/TimePickerDialogX$OnTimeSetListener;->onTimeSet(Landroid/app/TimePickerDialogX;IIZ)V

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/TimePickerDialogX;->cancel()V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/ActionDialog;->onCreate(Landroid/os/Bundle;)V

    .line 233
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-virtual {v1}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v1

    invoke-direct {p0}, Landroid/app/TimePickerDialogX;->isAm()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/TimePickerDialogX;->updateTitle(IIZ)V

    .line 234
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/ActionDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 223
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 224
    .local v0, "hour":I
    const-string/jumbo v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 225
    .local v1, "minute":I
    const-string/jumbo v2, "is24hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    .line 226
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 227
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 228
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/ActionDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string/jumbo v1, "minute"

    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const-string/jumbo v1, "is24hour"

    iget-boolean v2, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    return-object v0
.end method

.method public onValueChange(Landroid/widget/NumberPickerX;II)V
    .locals 5
    .param p1, "picker"    # Landroid/widget/NumberPickerX;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    if-ne p1, v2, :cond_5

    .line 240
    iget-boolean v2, p0, Landroid/app/TimePickerDialogX;->mIs24HourView:Z

    if-nez v2, :cond_2

    .line 241
    if-ne p2, v3, :cond_0

    if-eq p3, v4, :cond_1

    :cond_0
    if-ne p2, v4, :cond_2

    if-ne p3, v3, :cond_2

    .line 243
    :cond_1
    iget-boolean v2, p0, Landroid/app/TimePickerDialogX;->mIsAm:Z

    if-nez v2, :cond_4

    :goto_0
    iput-boolean v0, p0, Landroid/app/TimePickerDialogX;->mIsAm:Z

    .line 244
    invoke-direct {p0}, Landroid/app/TimePickerDialogX;->updateAmPmControl()V

    .line 247
    :cond_2
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    invoke-direct {p0}, Landroid/app/TimePickerDialogX;->isAm()Z

    move-result v1

    invoke-direct {p0, p3, v0, v1}, Landroid/app/TimePickerDialogX;->updateTitle(IIZ)V

    .line 254
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v1

    .line 243
    goto :goto_0

    .line 248
    :cond_5
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    if-ne p1, v2, :cond_6

    .line 249
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    invoke-direct {p0}, Landroid/app/TimePickerDialogX;->isAm()Z

    move-result v1

    invoke-direct {p0, v0, p3, v1}, Landroid/app/TimePickerDialogX;->updateTitle(IIZ)V

    goto :goto_1

    .line 250
    :cond_6
    iget-object v2, p0, Landroid/app/TimePickerDialogX;->mAmPm:Landroid/widget/NumberPickerX;

    if-ne p1, v2, :cond_3

    .line 251
    if-nez p3, :cond_7

    :goto_2
    iput-boolean v0, p0, Landroid/app/TimePickerDialogX;->mIsAm:Z

    .line 252
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-virtual {v1}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v1

    invoke-direct {p0}, Landroid/app/TimePickerDialogX;->isAm()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/TimePickerDialogX;->updateTitle(IIZ)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 251
    goto :goto_2
.end method

.method public updateTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    .prologue
    .line 207
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mHour:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 208
    iget-object v0, p0, Landroid/app/TimePickerDialogX;->mMinutes:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, p2}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 209
    return-void
.end method
