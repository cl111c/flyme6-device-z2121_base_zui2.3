.class public Landroid/app/DatePickerDialogX;
.super Landroid/app/ActionDialog;
.source "DatePickerDialogX.java"

# interfaces
.implements Landroid/widget/NumberPickerX$OnValueChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DatePickerDialogX$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final MONTH_MAX_LENGTH_IN_TITLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DatePickerDialogX"

.field private static final YEAR:Ljava/lang/String; = "year"

.field private static mMonthValues:[Ljava/lang/String;

.field private static mWeekValues:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private final mDateSetListener:Landroid/app/DatePickerDialogX$OnDateSetListener;

.field private final mDay:Landroid/widget/NumberPickerX;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonth:Landroid/widget/NumberPickerX;

.field private mNumberOfMonths:I

.field private mTempDate:Ljava/util/Calendar;

.field private final mTitle:Landroid/widget/TextView;

.field private final mYear:Landroid/widget/NumberPickerX;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DatePickerDialogX$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "listener"    # Landroid/app/DatePickerDialogX$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v6, 0x1

    .line 106
    invoke-static {p1, p2}, Landroid/app/DatePickerDialogX;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/app/ActionDialog;-><init>(Landroid/content/Context;I)V

    .line 107
    iput-object p1, p0, Landroid/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    .line 108
    iput-object p3, p0, Landroid/app/DatePickerDialogX;->mDateSetListener:Landroid/app/DatePickerDialogX$OnDateSetListener;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/app/DatePickerDialogX;->mWeekValues:[Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 113
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 114
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1160120

    invoke-virtual {v3, v4, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 116
    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/DatePickerDialogX;->setView(Landroid/view/View;)V

    .line 118
    const/4 v3, -0x1

    iget-object v4, p0, Landroid/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    const v5, 0x10405f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/DatePickerDialogX;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    const/4 v3, -0x2

    iget-object v4, p0, Landroid/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    const v5, 0x10405f8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/DatePickerDialogX;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/app/DatePickerDialogX;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    .line 122
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/app/DatePickerDialogX;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    .line 123
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/app/DatePickerDialogX;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    .line 124
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/app/DatePickerDialogX;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    .line 125
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/app/DatePickerDialogX;->mNumberOfMonths:I

    .line 127
    const v3, 0x102032a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPickerX;

    iput-object v3, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    .line 128
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    invoke-virtual {v3, p0}, Landroid/widget/NumberPickerX;->setOnValueChangedListener(Landroid/widget/NumberPickerX$OnValueChangeListener;)V

    .line 130
    const v3, 0x1020328

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPickerX;

    iput-object v3, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    .line 131
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v3, v6}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 132
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    iget v4, p0, Landroid/app/DatePickerDialogX;->mNumberOfMonths:I

    invoke-virtual {v3, v4}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 133
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    sget-object v4, Landroid/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v3, p0}, Landroid/widget/NumberPickerX;->setOnValueChangedListener(Landroid/widget/NumberPickerX$OnValueChangeListener;)V

    .line 136
    const v3, 0x1020329

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPickerX;

    iput-object v3, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    .line 137
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    invoke-virtual {v3, p0}, Landroid/widget/NumberPickerX;->setOnValueChangedListener(Landroid/widget/NumberPickerX$OnValueChangeListener;)V

    .line 139
    const v3, 0x1020325

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/DatePickerDialogX;->mTitle:Landroid/widget/TextView;

    .line 141
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 142
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/16 v4, 0x7b2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 143
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/app/DatePickerDialogX;->setMinDate(J)V

    .line 144
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 145
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/16 v4, 0x7f5

    const/16 v5, 0xb

    const/16 v6, 0x1f

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 146
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Landroid/app/DatePickerDialogX;->setMaxDate(J)V

    .line 147
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    invoke-direct {p0, p4, p5, p6}, Landroid/app/DatePickerDialogX;->setDate(III)V

    .line 150
    invoke-direct {p0}, Landroid/app/DatePickerDialogX;->updateSpinners()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialogX$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/DatePickerDialogX$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 83
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/DatePickerDialogX;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialogX$OnDateSetListener;III)V

    .line 84
    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 342
    :goto_0
    return-object v2

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 340
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 341
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1160117

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 90
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 92
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local p1    # "resid":I
    :cond_0
    return p1
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 287
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 288
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 297
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 299
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 300
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 301
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    sget-object v1, Landroid/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 303
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 304
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 324
    :goto_0
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 325
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 326
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 329
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 330
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 331
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setValue(I)V

    .line 332
    invoke-direct {p0}, Landroid/app/DatePickerDialogX;->updateTitle()V

    .line 333
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 307
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 308
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 309
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    sget-object v1, Landroid/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 311
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 312
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 315
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 316
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 317
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    sget-object v1, Landroid/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPickerX;->setMinValue(I)V

    .line 319
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setMaxValue(I)V

    .line 320
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method

.method private updateTitle()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 274
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 276
    .local v0, "dayOfWeek":I
    sget-object v3, Landroid/app/DatePickerDialogX;->mMonthValues:[Ljava/lang/String;

    iget-object v4, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v4}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v3, v4

    .line 277
    .local v1, "monthStr":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405fe

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    invoke-virtual {v6}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    invoke-virtual {v7}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    sget-object v6, Landroid/app/DatePickerDialogX;->mWeekValues:[Ljava/lang/String;

    add-int/lit8 v7, v0, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method


# virtual methods
.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    packed-switch p2, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDateSetListener:Landroid/app/DatePickerDialogX$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDateSetListener:Landroid/app/DatePickerDialogX$OnDateSetListener;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    invoke-virtual {v1}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    iget-object v3, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    invoke-virtual {v3}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/app/DatePickerDialogX$OnDateSetListener;->onDateSet(Landroid/app/DatePickerDialogX;III)V

    goto :goto_0

    .line 267
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/DatePickerDialogX;->cancel()V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/app/ActionDialog;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-direct {p0}, Landroid/app/DatePickerDialogX;->updateTitle()V

    .line 255
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/ActionDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 217
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 218
    .local v2, "year":I
    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "day":I
    invoke-direct {p0, v2, v1, v0}, Landroid/app/DatePickerDialogX;->setDate(III)V

    .line 221
    invoke-direct {p0}, Landroid/app/DatePickerDialogX;->updateSpinners()V

    .line 222
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/ActionDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 208
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string/jumbo v1, "month"

    iget-object v2, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v1, "day"

    iget-object v2, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    invoke-virtual {v2}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    return-object v0
.end method

.method public onValueChange(Landroid/widget/NumberPickerX;II)V
    .locals 8
    .param p1, "picker"    # Landroid/widget/NumberPickerX;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 227
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 229
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mDay:Landroid/widget/NumberPickerX;

    if-ne p1, v0, :cond_0

    .line 230
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    sub-int v1, p3, p2

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 245
    :goto_0
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DatePickerDialogX;->setDate(III)V

    .line 247
    invoke-direct {p0}, Landroid/app/DatePickerDialogX;->updateSpinners()V

    .line 248
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMonth:Landroid/widget/NumberPickerX;

    if-ne p1, v0, :cond_3

    .line 232
    if-ne p2, v7, :cond_1

    if-nez p3, :cond_1

    .line 233
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 234
    :cond_1
    if-nez p2, :cond_2

    if-ne p3, v7, :cond_2

    .line 235
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    sub-int v1, p3, p2

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mYear:Landroid/widget/NumberPickerX;

    if-ne p1, v0, :cond_4

    .line 240
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 242
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 196
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 197
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 202
    invoke-direct {p0}, Landroid/app/DatePickerDialogX;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 182
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 183
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Landroid/app/DatePickerDialogX;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 188
    invoke-direct {p0}, Landroid/app/DatePickerDialogX;->updateSpinners()V

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/DatePickerDialogX;->updateDate(III)V

    .line 175
    return-void
.end method
