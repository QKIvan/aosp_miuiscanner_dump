.class Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexGroupDescriptor"
.end annotation


# instance fields
.field mMaxIndex:I

.field mMinIndex:I

.field mOffset:J


# direct methods
.method private constructor <init>(IIJ)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    .line 82
    iput p2, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    .line 83
    iput-wide p3, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    return-void
.end method

.method synthetic constructor <init>(IIJLmiuix/core/util/DirectIndexedFile$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-void
.end method

.method static synthetic access$3800(Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;Ljava/io/DataOutput;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->write(Ljava/io/DataOutput;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static read(Ljava/io/DataInput;)Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 88
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 89
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 90
    new-instance p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;-><init>(IIJ)V

    return-object p0
.end method

.method private write(Ljava/io/DataOutput;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 95
    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMinIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 96
    iget v0, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mMaxIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 97
    iget-wide v0, p0, Lmiuix/core/util/DirectIndexedFile$IndexGroupDescriptor;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    const/16 p1, 0x10

    return p1
.end method
