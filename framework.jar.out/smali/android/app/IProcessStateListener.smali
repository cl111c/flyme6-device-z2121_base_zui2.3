.class public interface abstract Landroid/app/IProcessStateListener;
.super Ljava/lang/Object;
.source "IProcessStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IProcessStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onProcessStarted(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
