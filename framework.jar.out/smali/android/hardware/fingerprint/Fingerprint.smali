.class public final Landroid/hardware/fingerprint/Fingerprint;
.super Ljava/lang/Object;
.source "Fingerprint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBehavior:Ljava/lang/CharSequence;

.field private mDeviceId:J

.field private mFingerId:I

.field private mGroupId:I

.field private mName:Ljava/lang/CharSequence;

.field private mPkgName:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/Fingerprint$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/Fingerprint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mBehavior:Ljava/lang/CharSequence;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mPkgName:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mName:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mFingerId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mDeviceId:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mBehavior:Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mPkgName:Ljava/lang/CharSequence;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/fingerprint/Fingerprint$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/hardware/fingerprint/Fingerprint$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIJ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "groupId"    # I
    .param p3, "fingerId"    # I
    .param p4, "deviceId"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mBehavior:Ljava/lang/CharSequence;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mPkgName:Ljava/lang/CharSequence;

    .line 55
    iput-object p1, p0, Landroid/hardware/fingerprint/Fingerprint;->mName:Ljava/lang/CharSequence;

    .line 56
    iput p2, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    .line 57
    iput p3, p0, Landroid/hardware/fingerprint/Fingerprint;->mFingerId:I

    .line 58
    iput-wide p4, p0, Landroid/hardware/fingerprint/Fingerprint;->mDeviceId:J

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIJLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "groupId"    # I
    .param p3, "fingerId"    # I
    .param p4, "deviceId"    # J
    .param p6, "behavior"    # Ljava/lang/CharSequence;
    .param p7, "pkgName"    # Ljava/lang/CharSequence;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mBehavior:Ljava/lang/CharSequence;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mPkgName:Ljava/lang/CharSequence;

    .line 45
    iput-object p1, p0, Landroid/hardware/fingerprint/Fingerprint;->mName:Ljava/lang/CharSequence;

    .line 46
    iput p2, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    .line 47
    iput p3, p0, Landroid/hardware/fingerprint/Fingerprint;->mFingerId:I

    .line 48
    iput-wide p4, p0, Landroid/hardware/fingerprint/Fingerprint;->mDeviceId:J

    .line 49
    iput-object p6, p0, Landroid/hardware/fingerprint/Fingerprint;->mBehavior:Ljava/lang/CharSequence;

    .line 50
    iput-object p7, p0, Landroid/hardware/fingerprint/Fingerprint;->mPkgName:Ljava/lang/CharSequence;

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getBehavior()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mBehavior:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDeviceId()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mDeviceId:J

    return-wide v0
.end method

.method public getFingerId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mFingerId:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mPkgName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mFingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-wide v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mBehavior:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroid/hardware/fingerprint/Fingerprint;->mPkgName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void
.end method
