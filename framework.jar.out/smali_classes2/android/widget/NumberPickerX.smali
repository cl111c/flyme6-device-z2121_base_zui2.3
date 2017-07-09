.class public Landroid/widget/NumberPickerX;
.super Landroid/widget/LinearLayout;
.source "NumberPickerX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPickerX$CustomEditText;,
        Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPickerX$SetSelectionCommand;,
        Landroid/widget/NumberPickerX$PressedStateHelper;,
        Landroid/widget/NumberPickerX$InputTextFilter;,
        Landroid/widget/NumberPickerX$Formatter;,
        Landroid/widget/NumberPickerX$OnScrollListener;,
        Landroid/widget/NumberPickerX$OnValueChangeListener;,
        Landroid/widget/NumberPickerX$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x10900ad

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x7d0

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPickerX$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPickerX$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMiddleSelectorTextColor:I

.field private final mMiddleSelectorTextSize:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPickerX$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPickerX$OnValueChangeListener;

.field private mPerformClickOnTap:Z

.field private final mPressedStateHelper:Landroid/widget/NumberPickerX$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPickerX$SetSelectionCommand;

.field private final mSolidColor:I

.field private final mTextColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Landroid/widget/NumberPickerX$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPickerX$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPickerX;->sTwoDigitFormatter:Landroid/widget/NumberPickerX$TwoDigitFormatter;

    .line 2024
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPickerX;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPickerX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 563
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 572
    const v0, 0x116011e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPickerX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 573
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/NumberPickerX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 586
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 602
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 302
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/NumberPickerX;->mLongPressUpdateInterval:J

    .line 307
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 312
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mSelectorIndices:[I

    .line 332
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    .line 433
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mScrollState:I

    .line 484
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mLastHandledDownDpadKeyCode:I

    .line 605
    sget-object v19, Lcom/android/internal/R$styleable;->NumberPickerX:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 607
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v19, 0x3

    const v20, 0x10900ad

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 610
    .local v15, "layoutResId":I
    const v19, 0x10900ad

    move/from16 v0, v19

    if-eq v15, v0, :cond_0

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    .line 612
    const/16 v19, 0xb

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPickerX;->mHideWheelUntilFocused:Z

    .line 615
    const/16 v19, 0x2

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mSolidColor:I

    .line 617
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 619
    const/16 v19, 0x1

    const/high16 v20, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    .line 622
    .local v9, "defSelectionDividerHeight":I
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I

    .line 625
    const/16 v19, 0x1

    const/high16 v20, 0x42400000    # 48.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v8, v0

    .line 628
    .local v8, "defSelectionDividerDistance":I
    const/16 v19, 0x6

    move/from16 v0, v19

    invoke-virtual {v6, v0, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mSelectionDividersDistance:I

    .line 631
    const/16 v19, 0x7

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mMinHeight:I

    .line 634
    const/16 v19, 0x8

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mMaxHeight:I

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mMinHeight:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mMaxHeight:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mMinHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mMaxHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 638
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "minHeight > maxHeight"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 610
    .end local v8    # "defSelectionDividerDistance":I
    .end local v9    # "defSelectionDividerHeight":I
    :cond_0
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 641
    .restart local v8    # "defSelectionDividerDistance":I
    .restart local v9    # "defSelectionDividerHeight":I
    :cond_1
    const/16 v19, 0x9

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mMinWidth:I

    .line 644
    const/16 v19, 0xa

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mMaxWidth:I

    .line 646
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mMinWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mMaxWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mMinWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mMaxWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 648
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "minWidth > maxWidth"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 651
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mMaxWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/NumberPickerX;->mComputeMaxWidth:Z

    .line 653
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1050195

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 656
    .local v12, "defaultMiddleSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x106016b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 657
    .local v11, "defaultMiddleColor":I
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v6, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mMiddleSelectorTextSize:I

    .line 659
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v6, v0, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mMiddleSelectorTextColor:I

    .line 661
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1050196

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 662
    .local v13, "defaultSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x106016a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 663
    .local v10, "defaultColor":I
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mTextSize:I

    .line 664
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mTextColor:I

    .line 665
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 667
    new-instance v19, Landroid/widget/NumberPickerX$PressedStateHelper;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPickerX$PressedStateHelper;-><init>(Landroid/widget/NumberPickerX;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mPressedStateHelper:Landroid/widget/NumberPickerX$PressedStateHelper;

    .line 674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setWillNotDraw(Z)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 678
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v14, v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 680
    new-instance v16, Landroid/widget/NumberPickerX$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPickerX$1;-><init>(Landroid/widget/NumberPickerX;)V

    .line 692
    .local v16, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v17, Landroid/widget/NumberPickerX$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/NumberPickerX$2;-><init>(Landroid/widget/NumberPickerX;)V

    .line 706
    .local v17, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 707
    const v19, 0x102039a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mIncrementButton:Landroid/widget/ImageButton;

    .line 715
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 716
    const v19, 0x102039c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mDecrementButton:Landroid/widget/ImageButton;

    .line 724
    :goto_4
    const v19, 0x102039b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 745
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 746
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mTouchSlop:I

    .line 747
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mMinimumFlingVelocity:I

    .line 748
    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v19

    div-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/NumberPickerX;->mMaximumFlingVelocity:I

    .line 753
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 754
    .local v18, "paint":Landroid/graphics/Paint;
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 755
    sget-object v19, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 756
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 760
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerX;->mTextColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 761
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 764
    new-instance v19, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-direct/range {v19 .. v22}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    .line 765
    new-instance v19, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getContext()Landroid/content/Context;

    move-result-object v20

    new-instance v21, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v22, 0x40200000    # 2.5f

    invoke-direct/range {v21 .. v22}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v19 .. v21}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    .line 767
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerX;->getImportantForAccessibility()I

    move-result v19

    if-nez v19, :cond_3

    .line 771
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerX;->setImportantForAccessibility(I)V

    .line 773
    :cond_3
    return-void

    .line 651
    .end local v7    # "configuration":Landroid/view/ViewConfiguration;
    .end local v10    # "defaultColor":I
    .end local v11    # "defaultMiddleColor":I
    .end local v12    # "defaultMiddleSize":I
    .end local v13    # "defaultSize":I
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v17    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v18    # "paint":Landroid/graphics/Paint;
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 674
    .restart local v10    # "defaultColor":I
    .restart local v11    # "defaultMiddleColor":I
    .restart local v12    # "defaultMiddleSize":I
    .restart local v13    # "defaultSize":I
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 711
    .restart local v14    # "inflater":Landroid/view/LayoutInflater;
    .restart local v16    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v17    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 720
    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/NumberPickerX;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method static synthetic access$000(Landroid/widget/NumberPickerX;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/NumberPickerX;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPickerX;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPickerX;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/NumberPickerX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/NumberPickerX;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1280(Landroid/widget/NumberPickerX;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPickerX;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottom:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPickerX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/widget/NumberPickerX;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1680(Landroid/widget/NumberPickerX;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPickerX;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPickerX;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerX;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottom:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottom:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/NumberPickerX;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-wide v0, p0, Landroid/widget/NumberPickerX;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$2600(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollX:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollX:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPickerX;ZJ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPickerX;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mLeft:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollY:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottom:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mTop:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollX:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollY:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollX:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mLeft:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollX:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollX:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mLeft:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollX:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollX:I

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mLeft:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollY:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottom:I

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mTop:I

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$5200(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottom:I

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottom:I

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$5600(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mRight:I

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/NumberPickerX;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/widget/NumberPickerX;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/widget/NumberPickerX;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/widget/NumberPickerX;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/NumberPickerX;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Landroid/widget/NumberPickerX;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/widget/NumberPickerX;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Landroid/widget/NumberPickerX;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Landroid/widget/NumberPickerX;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/widget/NumberPickerX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mValue:I

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/NumberPickerX;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$6700(Landroid/widget/NumberPickerX;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerX;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/NumberPickerX;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget v0, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/NumberPickerX;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerX;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()[C
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/widget/NumberPickerX;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/NumberPickerX;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/NumberPickerX;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerX;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerX;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1703
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1704
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1705
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPickerX;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1706
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPickerX;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1708
    :cond_0
    iput v1, p0, Landroid/widget/NumberPickerX;->mPreviousScrollerY:I

    .line 1709
    if-eqz p1, :cond_1

    .line 1710
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1714
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->invalidate()V

    .line 1722
    :goto_1
    return-void

    .line 1712
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1716
    :cond_2
    if-eqz p1, :cond_3

    .line 1717
    iget v0, p0, Landroid/widget/NumberPickerX;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPickerX;->setValueInternal(IZ)V

    goto :goto_1

    .line 1719
    :cond_3
    iget v0, p0, Landroid/widget/NumberPickerX;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPickerX;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1823
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1824
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1823
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1826
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1827
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1828
    iget v1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    .line 1830
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1831
    invoke-direct {p0, v1}, Landroid/widget/NumberPickerX;->ensureCachedScrollSelectorValue(I)V

    .line 1832
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1839
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1840
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1841
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1859
    :goto_0
    return-void

    .line 1844
    :cond_0
    iget v3, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1845
    :cond_1
    const-string v2, ""

    .line 1858
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1847
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1848
    iget v3, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    sub-int v1, p1, v3

    .line 1849
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1850
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    goto :goto_1

    .line 1852
    :cond_3
    const-string v2, ""

    goto :goto_1

    .line 1855
    .end local v1    # "displayedValueIndex":I
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerX;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2118
    iget v0, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2119
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 2120
    iput v1, p0, Landroid/widget/NumberPickerX;->mPreviousScrollerY:I

    .line 2121
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x3

    if-le v0, v2, :cond_0

    .line 2122
    if-lez v4, :cond_2

    iget v0, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2124
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x7d0

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2125
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->invalidate()V

    .line 2126
    const/4 v1, 0x1

    .line 2128
    :cond_1
    return v1

    .line 2122
    :cond_2
    iget v0, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1779
    iput v1, p0, Landroid/widget/NumberPickerX;->mPreviousScrollerY:I

    .line 1781
    if-lez p1, :cond_0

    .line 1782
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1787
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->invalidate()V

    .line 1788
    return-void

    .line 1784
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1862
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mFormatter:Landroid/widget/NumberPickerX$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPickerX;->mFormatter:Landroid/widget/NumberPickerX$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPickerX$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPickerX;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2712
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1977
    iget-object v1, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1979
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2003
    :goto_0
    return v1

    .line 1984
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1986
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1987
    iget-object v1, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1988
    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1984
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1997
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1980
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 2003
    :goto_2
    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    goto :goto_0

    .line 1998
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPickerX$Formatter;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Landroid/widget/NumberPickerX;->sTwoDigitFormatter:Landroid/widget/NumberPickerX$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1794
    iget v0, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1795
    iget v0, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1799
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1796
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1797
    iget v0, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1281
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1282
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1283
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1284
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1285
    iget-object v1, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1288
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1807
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1808
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1810
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1811
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1812
    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    .line 1814
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1815
    invoke-direct {p0, v1}, Landroid/widget/NumberPickerX;->ensureCachedScrollSelectorValue(I)V

    .line 1816
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1742
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->setVerticalFadingEdgeEnabled(Z)V

    .line 1743
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPickerX;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPickerX;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->setFadingEdgeLength(I)V

    .line 1744
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1725
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1726
    iget-object v1, p0, Landroid/widget/NumberPickerX;->mSelectorIndices:[I

    .line 1727
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Landroid/widget/NumberPickerX;->mTextSize:I

    mul-int v4, v5, v6

    .line 1728
    .local v4, "totalTextHeight":I
    iget v5, p0, Landroid/widget/NumberPickerX;->mBottom:I

    iget v6, p0, Landroid/widget/NumberPickerX;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1729
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1730
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/NumberPickerX;->mSelectorTextGapHeight:I

    .line 1731
    iget v5, p0, Landroid/widget/NumberPickerX;->mTextSize:I

    iget v6, p0, Landroid/widget/NumberPickerX;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    .line 1734
    iget-object v5, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1735
    .local v0, "editTextTextPosition":I
    iget v5, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iput v5, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    .line 1737
    iget v5, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    .line 1738
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    .line 1739
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1655
    iget-object v4, p0, Landroid/widget/NumberPickerX;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1656
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mSelectorIndices:[I

    .line 1657
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v0

    .line 1658
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPickerX;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1659
    add-int/lit8 v4, v1, -0x2

    add-int v2, v0, v4

    .line 1660
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1661
    invoke-direct {p0, v2}, Landroid/widget/NumberPickerX;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1663
    :cond_0
    aput v2, v3, v1

    .line 1664
    aget v4, v3, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPickerX;->ensureCachedScrollSelectorValue(I)V

    .line 1658
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1666
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1613
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1624
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1616
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1617
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1618
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1626
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1622
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1624
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1618
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 831
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 832
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 833
    .local v0, "amountToScroll":I
    iget v5, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 834
    .local v1, "futureScrollOffset":I
    iget v5, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 835
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 836
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 837
    if-lez v2, :cond_1

    .line 838
    iget v5, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 843
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 844
    invoke-virtual {p0, v4, v0}, Landroid/widget/NumberPickerX;->scrollBy(II)V

    .line 847
    :goto_1
    return v3

    .line 840
    :cond_1
    iget v5, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 847
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1906
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mOnValueChangeListener:Landroid/widget/NumberPickerX$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mOnValueChangeListener:Landroid/widget/NumberPickerX$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPickerX;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPickerX$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPickerX;II)V

    .line 1909
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1766
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1773
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    iput p1, p0, Landroid/widget/NumberPickerX;->mScrollState:I

    .line 1770
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mOnScrollListener:Landroid/widget/NumberPickerX$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mOnScrollListener:Landroid/widget/NumberPickerX$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPickerX$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPickerX;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1750
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1751
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1752
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    .line 1754
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPickerX;->onScrollStateChange(I)V

    .line 1760
    :cond_1
    :goto_0
    return-void

    .line 1756
    :cond_2
    iget v0, p0, Landroid/widget/NumberPickerX;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1757
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 1940
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1941
    new-instance v0, Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPickerX;)V

    iput-object v0, p0, Landroid/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    .line 1945
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1946
    return-void

    .line 1943
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1917
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1918
    new-instance v0, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPickerX;)V

    iput-object v0, p0, Landroid/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    .line 1922
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;->access$400(Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1923
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPickerX;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1924
    return-void

    .line 1920
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2011
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mSetSelectionCommand:Landroid/widget/NumberPickerX$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2012
    new-instance v0, Landroid/widget/NumberPickerX$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPickerX$SetSelectionCommand;-><init>(Landroid/widget/NumberPickerX;)V

    iput-object v0, p0, Landroid/widget/NumberPickerX;->mSetSelectionCommand:Landroid/widget/NumberPickerX$SetSelectionCommand;

    .line 2016
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mSetSelectionCommand:Landroid/widget/NumberPickerX$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPickerX$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPickerX$SetSelectionCommand;->access$502(Landroid/widget/NumberPickerX$SetSelectionCommand;I)I

    .line 2017
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mSetSelectionCommand:Landroid/widget/NumberPickerX$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPickerX$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPickerX$SetSelectionCommand;->access$602(Landroid/widget/NumberPickerX$SetSelectionCommand;I)I

    .line 2018
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mSetSelectionCommand:Landroid/widget/NumberPickerX$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->post(Ljava/lang/Runnable;)Z

    .line 2019
    return-void

    .line 2014
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mSetSelectionCommand:Landroid/widget/NumberPickerX$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1961
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1964
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mSetSelectionCommand:Landroid/widget/NumberPickerX$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1965
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mSetSelectionCommand:Landroid/widget/NumberPickerX$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1967
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1968
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1970
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mPressedStateHelper:Landroid/widget/NumberPickerX$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPickerX$PressedStateHelper;->cancel()V

    .line 1971
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1952
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerX$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1955
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1931
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerX$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1933
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1642
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1643
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1644
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPickerX;->resolveSizeAndState(III)I

    move-result p2

    .line 1646
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1675
    iget v1, p0, Landroid/widget/NumberPickerX;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1693
    :goto_0
    return-void

    .line 1679
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1680
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerX;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1685
    :goto_1
    iget v0, p0, Landroid/widget/NumberPickerX;->mValue:I

    .line 1686
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPickerX;->mValue:I

    .line 1687
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    .line 1688
    if-eqz p2, :cond_1

    .line 1689
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPickerX;->notifyChange(II)V

    .line 1691
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1692
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->invalidate()V

    goto :goto_0

    .line 1682
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1683
    iget v1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1294
    iget-boolean v8, p0, Landroid/widget/NumberPickerX;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1331
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    const/4 v4, 0x0

    .line 1298
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1299
    const/4 v3, 0x0

    .line 1300
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1301
    iget-object v8, p0, Landroid/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPickerX;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1302
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1303
    move v3, v1

    .line 1300
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1306
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1307
    .local v5, "numberOfDigits":I
    iget v0, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    .line 1308
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1309
    add-int/lit8 v5, v5, 0x1

    .line 1310
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1312
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1322
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1323
    iget v8, p0, Landroid/widget/NumberPickerX;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1324
    iget v8, p0, Landroid/widget/NumberPickerX;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1325
    iput v4, p0, Landroid/widget/NumberPickerX;->mMaxWidth:I

    .line 1329
    :goto_3
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->invalidate()V

    goto :goto_0

    .line 1314
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1315
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1316
    iget-object v8, p0, Landroid/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1317
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1318
    float-to-int v4, v6

    .line 1315
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1327
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPickerX;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPickerX;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 1

    .prologue
    .line 1898
    const/4 v0, 0x0

    return v0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1866
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1867
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1869
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    .line 1875
    :goto_0
    return-void

    .line 1872
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPickerX;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1873
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPickerX;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1087
    iget-object v1, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    .line 1088
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1089
    iget-object v1, p0, Landroid/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1090
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1094
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1095
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1096
    .local v0, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPickerX;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1097
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPickerX;->mPreviousScrollerY:I

    .line 1099
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPickerX;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPickerX;->scrollBy(II)V

    .line 1100
    iput v0, p0, Landroid/widget/NumberPickerX;->mPreviousScrollerY:I

    .line 1101
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1102
    invoke-direct {p0, v1}, Landroid/widget/NumberPickerX;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1104
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->invalidate()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1164
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1159
    iget v0, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1038
    iget-boolean v4, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1039
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1082
    :goto_0
    return v4

    .line 1041
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPickerX;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1044
    .local v1, "eventY":I
    iget v4, p0, Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1045
    const/4 v2, 0x3

    .line 1051
    .local v2, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1052
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    .line 1054
    .local v3, "provider":Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1082
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1046
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1047
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1049
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1056
    .restart local v0    # "action":I
    .restart local v3    # "provider":Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1058
    iput v2, p0, Landroid/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    .line 1059
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1063
    :pswitch_2
    iget v4, p0, Landroid/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Landroid/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1065
    iget v4, p0, Landroid/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1068
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1070
    iput v2, p0, Landroid/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    .line 1071
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1076
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1078
    iput v5, p0, Landroid/widget/NumberPickerX;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 1054
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 989
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 990
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1021
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 993
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->removeAllCallbacks()V

    goto :goto_0

    .line 997
    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1000
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1002
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1004
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->requestFocus()Z

    .line 1005
    iput v0, p0, Landroid/widget/NumberPickerX;->mLastHandledDownDpadKeyCode:I

    .line 1006
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->removeAllCallbacks()V

    .line 1007
    iget-object v1, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Landroid/widget/NumberPickerX;->changeValueByOne(Z)V

    goto :goto_1

    .line 1002
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 1008
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 1014
    :pswitch_1
    iget v1, p0, Landroid/widget/NumberPickerX;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 1015
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPickerX;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 990
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1000
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 977
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 978
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 984
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 981
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->removeAllCallbacks()V

    goto :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1026
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1027
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1033
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1030
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->removeAllCallbacks()V

    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1596
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1597
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1602
    :goto_0
    return-object v0

    .line 1599
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mAccessibilityNodeProvider:Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1600
    new-instance v0, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPickerX;)V

    iput-object v0, p0, Landroid/widget/NumberPickerX;->mAccessibilityNodeProvider:Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    .line 1602
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mAccessibilityNodeProvider:Landroid/widget/NumberPickerX$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1510
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1436
    iget v0, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1398
    iget v0, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1169
    iget v0, p0, Landroid/widget/NumberPickerX;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1505
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1389
    iget v0, p0, Landroid/widget/NumberPickerX;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1342
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1515
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1516
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->removeAllCallbacks()V

    .line 1517
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    .line 1521
    iget-boolean v11, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v11, :cond_1

    .line 1522
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1525
    :cond_1
    iget-boolean v11, p0, Landroid/widget/NumberPickerX;->mHideWheelUntilFocused:Z

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->hasFocus()Z

    move-result v6

    .line 1526
    .local v6, "showSelectorWheel":Z
    :goto_1
    iget v11, p0, Landroid/widget/NumberPickerX;->mRight:I

    iget v12, p0, Landroid/widget/NumberPickerX;->mLeft:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v9, v11

    .line 1527
    .local v9, "x":F
    iget v11, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    int-to-float v10, v11

    .line 1546
    .local v10, "y":F
    iget-object v5, p0, Landroid/widget/NumberPickerX;->mSelectorIndices:[I

    .line 1547
    .local v5, "selectorIndices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v5

    if-ge v2, v11, :cond_5

    .line 1548
    aget v4, v5, v2

    .line 1549
    .local v4, "selectorIndex":I
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1555
    .local v3, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 1556
    iget v11, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    mul-int/lit8 v11, v11, 0x2

    iget v12, p0, Landroid/widget/NumberPickerX;->mTextSize:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v11, v10, v11

    if-lez v11, :cond_4

    iget v11, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    mul-int/lit8 v11, v11, 0x3

    iget v12, p0, Landroid/widget/NumberPickerX;->mSelectorTextGapHeight:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    cmpg-float v11, v10, v11

    if-gez v11, :cond_4

    .line 1558
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, p0, Landroid/widget/NumberPickerX;->mMiddleSelectorTextSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1559
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, p0, Landroid/widget/NumberPickerX;->mMiddleSelectorTextColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1564
    :goto_3
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1566
    :cond_2
    iget v11, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1547
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1525
    .end local v2    # "i":I
    .end local v3    # "scrollSelectorValue":Ljava/lang/String;
    .end local v4    # "selectorIndex":I
    .end local v5    # "selectorIndices":[I
    .end local v6    # "showSelectorWheel":Z
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    .line 1561
    .restart local v2    # "i":I
    .restart local v3    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v4    # "selectorIndex":I
    .restart local v5    # "selectorIndices":[I
    .restart local v6    # "showSelectorWheel":Z
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :cond_4
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, p0, Landroid/widget/NumberPickerX;->mTextSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1562
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v12, p0, Landroid/widget/NumberPickerX;->mTextColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 1570
    .end local v3    # "scrollSelectorValue":Ljava/lang/String;
    .end local v4    # "selectorIndex":I
    :cond_5
    if-eqz v6, :cond_0

    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 1572
    iget v8, p0, Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I

    .line 1573
    .local v8, "topOfTopDivider":I
    iget v11, p0, Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I

    add-int v1, v8, v11

    .line 1574
    .local v1, "bottomOfTopDivider":I
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v12, p0, Landroid/widget/NumberPickerX;->mRight:I

    invoke-virtual {v11, v13, v8, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1575
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1578
    iget v0, p0, Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    .line 1579
    .local v0, "bottomOfBottomDivider":I
    iget v11, p0, Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I

    sub-int v7, v0, v11

    .line 1580
    .local v7, "topOfBottomDivider":I
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    iget v12, p0, Landroid/widget/NumberPickerX;->mRight:I

    invoke-virtual {v11, v13, v7, v12, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1581
    iget-object v11, p0, Landroid/widget/NumberPickerX;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1587
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1588
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1589
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1590
    iget v0, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPickerX;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1591
    iget v0, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1592
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 852
    iget-boolean v3, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 900
    :goto_0
    return v1

    .line 855
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 856
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 900
    goto :goto_0

    .line 858
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->removeAllCallbacks()V

    .line 859
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 860
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/NumberPickerX;->mLastDownEventY:F

    iput v3, p0, Landroid/widget/NumberPickerX;->mLastDownOrMoveEventY:F

    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/NumberPickerX;->mLastDownEventTime:J

    .line 862
    iput-boolean v2, p0, Landroid/widget/NumberPickerX;->mIgnoreMoveEvents:Z

    .line 863
    iput-boolean v2, p0, Landroid/widget/NumberPickerX;->mPerformClickOnTap:Z

    .line 865
    iget v3, p0, Landroid/widget/NumberPickerX;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 866
    iget v3, p0, Landroid/widget/NumberPickerX;->mScrollState:I

    if-nez v3, :cond_2

    .line 867
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mPressedStateHelper:Landroid/widget/NumberPickerX$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/NumberPickerX$PressedStateHelper;->buttonPressDelayed(I)V

    .line 877
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 878
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 879
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 880
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 881
    invoke-direct {p0, v2}, Landroid/widget/NumberPickerX;->onScrollStateChange(I)V

    goto :goto_0

    .line 870
    :cond_3
    iget v3, p0, Landroid/widget/NumberPickerX;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 871
    iget v3, p0, Landroid/widget/NumberPickerX;->mScrollState:I

    if-nez v3, :cond_2

    .line 872
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mPressedStateHelper:Landroid/widget/NumberPickerX$PressedStateHelper;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPickerX$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 882
    :cond_4
    iget-object v3, p0, Landroid/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 883
    iget-object v2, p0, Landroid/widget/NumberPickerX;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 884
    iget-object v2, p0, Landroid/widget/NumberPickerX;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 885
    :cond_5
    iget v3, p0, Landroid/widget/NumberPickerX;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 886
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->hideSoftInput()V

    .line 887
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5}, Landroid/widget/NumberPickerX;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 889
    :cond_6
    iget v2, p0, Landroid/widget/NumberPickerX;->mLastDownEventY:F

    iget v3, p0, Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 890
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->hideSoftInput()V

    .line 891
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/NumberPickerX;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 894
    :cond_7
    iput-boolean v1, p0, Landroid/widget/NumberPickerX;->mPerformClickOnTap:Z

    .line 895
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 856
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 777
    iget-boolean v8, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 778
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getMeasuredWidth()I

    move-result v7

    .line 782
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getMeasuredHeight()I

    move-result v6

    .line 785
    .local v6, "msrdHght":I
    iget-object v8, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 786
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 787
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 788
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 789
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 790
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 791
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Landroid/widget/NumberPickerX;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 793
    if-eqz p1, :cond_0

    .line 795
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->initializeSelectorWheel()V

    .line 796
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->initializeFadingEdges()V

    .line 797
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/NumberPickerX;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I

    .line 799
    iget v8, p0, Landroid/widget/NumberPickerX;->mTopSelectionDividerTop:I

    iget v9, p0, Landroid/widget/NumberPickerX;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/NumberPickerX;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPickerX;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 806
    iget-boolean v4, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 807
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 820
    :goto_0
    return-void

    .line 811
    :cond_0
    iget v4, p0, Landroid/widget/NumberPickerX;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPickerX;->makeMeasureSpec(II)I

    move-result v2

    .line 812
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/NumberPickerX;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPickerX;->makeMeasureSpec(II)I

    move-result v1

    .line 813
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 815
    iget v4, p0, Landroid/widget/NumberPickerX;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPickerX;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 817
    .local v3, "widthSize":I
    iget v4, p0, Landroid/widget/NumberPickerX;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPickerX;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 819
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPickerX;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 905
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v10, :cond_1

    .line 906
    :cond_0
    const/4 v10, 0x0

    .line 972
    :goto_0
    return v10

    .line 908
    :cond_1
    iget-object v10, p0, Landroid/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 909
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 911
    :cond_2
    iget-object v10, p0, Landroid/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 913
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 972
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 915
    :pswitch_0
    iget-boolean v10, p0, Landroid/widget/NumberPickerX;->mIgnoreMoveEvents:Z

    if-nez v10, :cond_3

    .line 918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 919
    .local v1, "currentMoveY":F
    iget v10, p0, Landroid/widget/NumberPickerX;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 920
    iget v10, p0, Landroid/widget/NumberPickerX;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 921
    .local v2, "deltaDownY":I
    iget v10, p0, Landroid/widget/NumberPickerX;->mTouchSlop:I

    if-le v2, v10, :cond_4

    .line 922
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->removeAllCallbacks()V

    .line 923
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerX;->onScrollStateChange(I)V

    .line 930
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v1, p0, Landroid/widget/NumberPickerX;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 926
    :cond_5
    iget v10, p0, Landroid/widget/NumberPickerX;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 927
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Landroid/widget/NumberPickerX;->scrollBy(II)V

    .line 928
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->invalidate()V

    goto :goto_2

    .line 933
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->removeBeginSoftInputCommand()V

    .line 934
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->removeChangeCurrentByOneFromLongPress()V

    .line 935
    iget-object v10, p0, Landroid/widget/NumberPickerX;->mPressedStateHelper:Landroid/widget/NumberPickerX$PressedStateHelper;

    invoke-virtual {v10}, Landroid/widget/NumberPickerX$PressedStateHelper;->cancel()V

    .line 936
    iget-object v9, p0, Landroid/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 937
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/NumberPickerX;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 938
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 939
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/widget/NumberPickerX;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 940
    invoke-direct {p0, v7}, Landroid/widget/NumberPickerX;->fling(I)V

    .line 941
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerX;->onScrollStateChange(I)V

    .line 968
    :goto_3
    iget-object v10, p0, Landroid/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 969
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/NumberPickerX;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 943
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 944
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Landroid/widget/NumberPickerX;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 945
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/NumberPickerX;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 946
    .local v4, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPickerX;->mTouchSlop:I

    if-gt v3, v10, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_a

    .line 947
    iget-boolean v10, p0, Landroid/widget/NumberPickerX;->mPerformClickOnTap:Z

    if-eqz v10, :cond_8

    .line 948
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/NumberPickerX;->mPerformClickOnTap:Z

    .line 949
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->performClick()Z

    .line 966
    :cond_7
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerX;->onScrollStateChange(I)V

    goto :goto_3

    .line 951
    :cond_8
    iget v10, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x2

    .line 953
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_9

    .line 954
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerX;->changeValueByOne(Z)V

    .line 955
    iget-object v10, p0, Landroid/widget/NumberPickerX;->mPressedStateHelper:Landroid/widget/NumberPickerX$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/NumberPickerX$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 957
    :cond_9
    if-gez v8, :cond_7

    .line 958
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerX;->changeValueByOne(Z)V

    .line 959
    iget-object v10, p0, Landroid/widget/NumberPickerX;->mPressedStateHelper:Landroid/widget/NumberPickerX$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/NumberPickerX$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 964
    .end local v8    # "selectorIndexOffset":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 1244
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1245
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1249
    :goto_0
    return v0

    .line 1246
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1247
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->showSoftInput()V

    .line 1249
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1254
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v1, :cond_1

    .line 1255
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    .line 1260
    :cond_0
    :goto_0
    return v0

    .line 1256
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1257
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->showSoftInput()V

    .line 1258
    iput-boolean v0, p0, Landroid/widget/NumberPickerX;->mIgnoreMoveEvents:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1122
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mSelectorIndices:[I

    .line 1123
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 1125
    iget v1, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 1130
    iget v1, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1133
    :cond_2
    iget v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    .line 1134
    :cond_3
    :goto_1
    iget v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPickerX;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1135
    iget v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    .line 1136
    invoke-direct {p0, v0}, Landroid/widget/NumberPickerX;->decrementSelectorIndices([I)V

    .line 1137
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Landroid/widget/NumberPickerX;->setValueInternal(IZ)V

    .line 1138
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1139
    iget v1, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1142
    :cond_4
    :goto_2
    iget v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPickerX;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1143
    iget v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    .line 1144
    invoke-direct {p0, v0}, Landroid/widget/NumberPickerX;->incrementSelectorIndices([I)V

    .line 1145
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Landroid/widget/NumberPickerX;->setValueInternal(IZ)V

    .line 1146
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1147
    iget v1, p0, Landroid/widget/NumberPickerX;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPickerX;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1487
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1501
    :goto_0
    return-void

    .line 1490
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPickerX;->mDisplayedValues:[Ljava/lang/String;

    .line 1498
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    .line 1499
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1500
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->tryComputeMaxWidth()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1110
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1111
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1112
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1114
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPickerX;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1115
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1118
    :cond_1
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPickerX$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Landroid/widget/NumberPickerX$Formatter;

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/widget/NumberPickerX;->mFormatter:Landroid/widget/NumberPickerX$Formatter;

    if-ne p1, v0, :cond_0

    .line 1208
    :goto_0
    return-void

    .line 1205
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPickerX;->mFormatter:Landroid/widget/NumberPickerX$Formatter;

    .line 1206
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1207
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1450
    iget v1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1466
    :goto_0
    return-void

    .line 1453
    :cond_0
    if-gez p1, :cond_1

    .line 1454
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1456
    :cond_1
    iput p1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    .line 1457
    iget v1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1458
    iget v1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iput v1, p0, Landroid/widget/NumberPickerX;->mValue:I

    .line 1460
    :cond_2
    iget v1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPickerX;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1461
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 1462
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1463
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    .line 1464
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->tryComputeMaxWidth()V

    .line 1465
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->invalidate()V

    goto :goto_0

    .line 1460
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1412
    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1428
    :goto_0
    return-void

    .line 1415
    :cond_0
    if-gez p1, :cond_1

    .line 1416
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1418
    :cond_1
    iput p1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    .line 1419
    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mValue:I

    if-le v1, v2, :cond_2

    .line 1420
    iget v1, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    iput v1, p0, Landroid/widget/NumberPickerX;->mValue:I

    .line 1422
    :cond_2
    iget v1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPickerX;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1423
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    .line 1424
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->initializeSelectorWheelIndices()V

    .line 1425
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->updateInputTextView()Z

    .line 1426
    invoke-direct {p0}, Landroid/widget/NumberPickerX;->tryComputeMaxWidth()V

    .line 1427
    invoke-virtual {p0}, Landroid/widget/NumberPickerX;->invalidate()V

    goto :goto_0

    .line 1422
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1380
    iput-wide p1, p0, Landroid/widget/NumberPickerX;->mLongPressUpdateInterval:J

    .line 1381
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPickerX$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/NumberPickerX$OnScrollListener;

    .prologue
    .line 1187
    iput-object p1, p0, Landroid/widget/NumberPickerX;->mOnScrollListener:Landroid/widget/NumberPickerX$OnScrollListener;

    .line 1188
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPickerX$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPickerX$OnValueChangeListener;

    .prologue
    .line 1178
    iput-object p1, p0, Landroid/widget/NumberPickerX;->mOnValueChangeListener:Landroid/widget/NumberPickerX$OnValueChangeListener;

    .line 1179
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPickerX;->setValueInternal(IZ)V

    .line 1240
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1363
    iget v1, p0, Landroid/widget/NumberPickerX;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPickerX;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPickerX;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1364
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1365
    iput-boolean p1, p0, Landroid/widget/NumberPickerX;->mWrapSelectorWheel:Z

    .line 1367
    :cond_1
    return-void

    .line 1363
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
