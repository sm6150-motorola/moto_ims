.class final Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "ImsRadioHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsRadioHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImsRadioServiceNotification"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsRadioHidl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsRadioHidl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsRadioHidl;

    .line 157
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;->this$0:Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fqName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ims Radio interface service started "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " preexisting ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;->this$0:Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioHidl;->access$100(Lorg/codeaurora/ims/ImsRadioHidl;)V

    .line 169
    return-void
.end method
