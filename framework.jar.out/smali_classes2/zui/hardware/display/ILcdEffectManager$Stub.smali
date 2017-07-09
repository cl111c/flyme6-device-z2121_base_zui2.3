.class public abstract Lzui/hardware/display/ILcdEffectManager$Stub;
.super Landroid/os/Binder;
.source "ILcdEffectManager.java"

# interfaces
.implements Lzui/hardware/display/ILcdEffectManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/hardware/display/ILcdEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/hardware/display/ILcdEffectManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "zui.hardware.display.ILcdEffectManager"

.field static final TRANSACTION_getAutoSunlightStatus:I = 0xe

.field static final TRANSACTION_getCabcStatus:I = 0x8

.field static final TRANSACTION_getCabcStatusInternal:I = 0xa

.field static final TRANSACTION_getCareEyesStatus:I = 0x6

.field static final TRANSACTION_getDisplayPPMode:I = 0x13

.field static final TRANSACTION_getImageEnhanceStatus:I = 0x10

.field static final TRANSACTION_getSaturationMode:I = 0x2

.field static final TRANSACTION_getSunlightStatus:I = 0xc

.field static final TRANSACTION_getTemperatureMode:I = 0x4

.field static final TRANSACTION_queryPPModeNumber:I = 0x11

.field static final TRANSACTION_setAutoSunlightStatus:I = 0xd

.field static final TRANSACTION_setCabcStatus:I = 0x7

.field static final TRANSACTION_setCabcStatusInternal:I = 0x9

.field static final TRANSACTION_setCareEyesStatus:I = 0x5

.field static final TRANSACTION_setDisplayPPMode:I = 0x12

.field static final TRANSACTION_setImageEnhanceStatus:I = 0xf

.field static final TRANSACTION_setSaturationMode:I = 0x1

.field static final TRANSACTION_setSunlightStatus:I = 0xb

.field static final TRANSACTION_setTemperatureMode:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p0, p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lzui/hardware/display/ILcdEffectManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "zui.hardware.display.ILcdEffectManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lzui/hardware/display/ILcdEffectManager;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lzui/hardware/display/ILcdEffectManager;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lzui/hardware/display/ILcdEffectManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lzui/hardware/display/ILcdEffectManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 44
    :sswitch_0
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->setSaturationMode(I)I

    move-result v2

    .line 53
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_2
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;->getSaturationMode()I

    move-result v2

    .line 61
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v2    # "_result":I
    :sswitch_3
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->setTemperatureMode(I)I

    move-result v2

    .line 71
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_4
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;->getTemperatureMode()I

    move-result v2

    .line 79
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v2    # "_result":I
    :sswitch_5
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->setCareEyesStatus(I)I

    move-result v2

    .line 89
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 95
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_6
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;->getCareEyesStatus()I

    move-result v2

    .line 97
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v2    # "_result":I
    :sswitch_7
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->setCabcStatus(I)I

    move-result v2

    .line 107
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_8
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;->getCabcStatus()I

    move-result v2

    .line 115
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v2    # "_result":I
    :sswitch_9
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->setCabcStatusInternal(I)I

    move-result v2

    .line 125
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_a
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;->getCabcStatusInternal()I

    move-result v2

    .line 133
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 139
    .end local v2    # "_result":I
    :sswitch_b
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->setSunlightStatus(I)I

    move-result v2

    .line 143
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_c
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;->getSunlightStatus()I

    move-result v2

    .line 151
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 157
    .end local v2    # "_result":I
    :sswitch_d
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->setAutoSunlightStatus(I)I

    move-result v2

    .line 161
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_e
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;->getAutoSunlightStatus()I

    move-result v2

    .line 169
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    .end local v2    # "_result":I
    :sswitch_f
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 178
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->setImageEnhanceStatus(I)I

    move-result v2

    .line 179
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_10
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;->getImageEnhanceStatus()I

    move-result v2

    .line 187
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v2    # "_result":I
    :sswitch_11
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lzui/hardware/display/ILcdEffectManager$Stub;->queryPPModeNumber()I

    move-result v2

    .line 195
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v2    # "_result":I
    :sswitch_12
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lzui/hardware/display/ILcdEffectManager$Stub;->setDisplayPPMode(II)I

    move-result v2

    .line 207
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 213
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_13
    const-string v4, "zui.hardware.display.ILcdEffectManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lzui/hardware/display/ILcdEffectManager$Stub;->getDisplayPPMode(I)I

    move-result v2

    .line 217
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
