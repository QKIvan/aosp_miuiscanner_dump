.class public Lcom/xiaomi/scanner/module/code/codec/DecodeParams;
.super Ljava/lang/Object;
.source "DecodeParams.java"


# static fields
.field private static final TAG:Lcom/xiaomi/scanner/debug/Log$Tag;


# instance fields
.field private decodeRect:Landroid/graphics/Rect;

.field private mYuvImage:Landroid/graphics/YuvImage;

.field private previewData:[B

.field private previewFormat:I

.field private previewHeight:I

.field private previewOrientation:I

.field private previewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/xiaomi/scanner/debug/Log$Tag;

    const-string v1, "DecodeParams"

    invoke-direct {v0, v1}, Lcom/xiaomi/scanner/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>([BIIIILandroid/graphics/Rect;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    .line 23
    iput p2, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewFormat:I

    .line 24
    iput p3, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    .line 25
    iput p4, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    .line 26
    iput p5, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    .line 27
    iput-object p6, p0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->decodeRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getYuvImage()Landroid/graphics/YuvImage;
    .locals 21

    move-object/from16 v0, p0

    .line 31
    iget-object v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->mYuvImage:Landroid/graphics/YuvImage;

    if-nez v1, :cond_18

    .line 32
    iget v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewFormat:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_17

    .line 33
    iget v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int v1, v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 37
    :cond_0
    iget-object v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->decodeRect:Landroid/graphics/Rect;

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 39
    iget v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v5, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    iget v6, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    invoke-direct {v1, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 40
    :cond_2
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    iget v5, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    iget v6, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    invoke-direct {v1, v4, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    .line 46
    :cond_3
    iget v5, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    if-eq v5, v3, :cond_5

    if-ne v5, v2, :cond_4

    goto :goto_1

    .line 49
    :cond_4
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    .line 47
    :cond_5
    :goto_1
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    iget v7, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    :goto_2
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 57
    :goto_3
    iget v5, v1, Landroid/graphics/Rect;->left:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 58
    iget v5, v1, Landroid/graphics/Rect;->top:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 59
    iget v5, v1, Landroid/graphics/Rect;->right:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 60
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 61
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int v5, v9, v10

    mul-int/lit8 v6, v5, 0x3

    .line 63
    div-int/lit8 v6, v6, 0x2

    new-array v7, v6, [B

    .line 66
    iget v6, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewOrientation:I

    if-ne v6, v3, :cond_9

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v10, :cond_7

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v9, :cond_6

    .line 69
    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    .line 70
    iget v8, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    add-int/lit8 v8, v8, -0x1

    iget v11, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v3

    sub-int/2addr v8, v11

    mul-int v11, v2, v9

    add-int/2addr v11, v3

    .line 71
    iget-object v12, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    iget v13, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    mul-int v8, v8, v13

    add-int/2addr v8, v6

    aget-byte v6, v12, v8

    aput-byte v6, v7, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 74
    :cond_7
    div-int/lit8 v2, v10, 0x2

    .line 75
    div-int/lit8 v3, v9, 0x2

    add-int/lit8 v6, v5, 0x1

    .line 78
    iget v8, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    iget v11, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int v12, v8, v11

    add-int/lit8 v13, v12, 0x1

    .line 80
    div-int/lit8 v11, v11, 0x2

    .line 81
    div-int/lit8 v8, v8, 0x2

    .line 82
    iget v14, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v14, v14, 0x2

    .line 83
    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v1, 0x2

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v2, :cond_15

    :goto_7
    if-ge v4, v3, :cond_8

    add-int v16, v1, v15

    add-int/lit8 v17, v11, -0x1

    add-int v18, v14, v4

    sub-int v17, v17, v18

    mul-int v17, v17, v8

    add-int v17, v17, v16

    mul-int/lit8 v17, v17, 0x2

    mul-int v16, v15, v3

    add-int v16, v16, v4

    mul-int/lit8 v16, v16, 0x2

    add-int v18, v5, v16

    move/from16 v19, v1

    .line 90
    iget-object v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v20, v12, v17

    aget-byte v20, v1, v20

    aput-byte v20, v7, v18

    add-int v16, v6, v16

    add-int v17, v13, v17

    .line 91
    aget-byte v1, v1, v17

    aput-byte v1, v7, v16

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v19

    goto :goto_7

    :cond_8
    move/from16 v19, v1

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    if-ne v6, v2, :cond_d

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v10, :cond_b

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v9, :cond_a

    .line 97
    iget v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    sub-int/2addr v4, v6

    .line 98
    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    mul-int v8, v2, v9

    add-int/2addr v8, v3

    .line 99
    iget-object v11, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    iget v12, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    mul-int v6, v6, v12

    add-int/2addr v6, v4

    aget-byte v4, v11, v6

    aput-byte v4, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 102
    :cond_b
    div-int/lit8 v2, v10, 0x2

    .line 103
    div-int/lit8 v3, v9, 0x2

    add-int/lit8 v4, v5, 0x1

    .line 106
    iget v6, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    iget v8, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int v8, v8, v6

    add-int/lit8 v11, v8, 0x1

    .line 108
    div-int/lit8 v6, v6, 0x2

    .line 109
    iget v12, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v12, v12, 0x2

    .line 110
    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v1, 0x2

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v2, :cond_15

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v3, :cond_c

    add-int/lit8 v15, v6, -0x1

    add-int v16, v1, v13

    sub-int v15, v15, v16

    add-int v16, v12, v14

    mul-int v16, v16, v6

    add-int v16, v16, v15

    mul-int/lit8 v16, v16, 0x2

    mul-int v15, v13, v3

    add-int/2addr v15, v14

    mul-int/lit8 v15, v15, 0x2

    add-int v17, v5, v15

    move/from16 v18, v1

    .line 117
    iget-object v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v19, v8, v16

    aget-byte v19, v1, v19

    aput-byte v19, v7, v17

    add-int/2addr v15, v4

    add-int v16, v11, v16

    .line 118
    aget-byte v1, v1, v16

    aput-byte v1, v7, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v18

    goto :goto_b

    :cond_c
    move/from16 v18, v1

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_d
    const/16 v2, 0xb4

    if-ne v6, v2, :cond_11

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v10, :cond_f

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v9, :cond_e

    .line 124
    iget v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    sub-int/2addr v4, v6

    .line 125
    iget v6, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    add-int/lit8 v6, v6, -0x1

    iget v8, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    sub-int/2addr v6, v8

    mul-int v8, v2, v9

    add-int/2addr v8, v3

    .line 126
    iget-object v11, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    iget v12, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    mul-int v6, v6, v12

    add-int/2addr v6, v4

    aget-byte v4, v11, v6

    aput-byte v4, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 129
    :cond_f
    div-int/lit8 v2, v10, 0x2

    .line 130
    div-int/lit8 v3, v9, 0x2

    add-int/lit8 v4, v5, 0x1

    .line 133
    iget v6, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    iget v8, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int v11, v6, v8

    add-int/lit8 v12, v11, 0x1

    .line 135
    div-int/lit8 v8, v8, 0x2

    .line 136
    div-int/lit8 v6, v6, 0x2

    .line 137
    iget v13, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v13, v13, 0x2

    .line 138
    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v1, 0x2

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v2, :cond_15

    const/4 v15, 0x0

    :goto_f
    if-ge v15, v3, :cond_10

    add-int/lit8 v16, v6, -0x1

    add-int v17, v13, v15

    sub-int v16, v16, v17

    add-int/lit8 v17, v8, -0x1

    add-int v18, v1, v14

    sub-int v17, v17, v18

    mul-int v17, v17, v6

    add-int v17, v17, v16

    mul-int/lit8 v17, v17, 0x2

    mul-int v16, v14, v3

    add-int v16, v16, v15

    mul-int/lit8 v16, v16, 0x2

    add-int v18, v5, v16

    move/from16 v19, v1

    .line 145
    iget-object v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v20, v11, v17

    aget-byte v20, v1, v20

    aput-byte v20, v7, v18

    add-int v16, v4, v16

    add-int v17, v12, v17

    .line 146
    aget-byte v1, v1, v17

    aput-byte v1, v7, v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v19

    goto :goto_f

    :cond_10
    move/from16 v19, v1

    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_11
    if-nez v6, :cond_15

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v10, :cond_13

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v9, :cond_12

    .line 152
    iget v4, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    add-int/lit8 v4, v4, -0x1

    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    sub-int/2addr v4, v6

    .line 153
    iget v6, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    mul-int v8, v2, v9

    add-int/2addr v8, v3

    .line 154
    iget-object v11, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    iget v12, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    mul-int v6, v6, v12

    add-int/2addr v6, v4

    aget-byte v4, v11, v6

    aput-byte v4, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 157
    :cond_13
    div-int/lit8 v2, v10, 0x2

    .line 158
    div-int/lit8 v3, v9, 0x2

    add-int/lit8 v4, v5, 0x1

    .line 161
    iget v6, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewWidth:I

    iget v8, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewHeight:I

    mul-int v8, v8, v6

    add-int/lit8 v11, v8, 0x1

    .line 163
    div-int/lit8 v6, v6, 0x2

    .line 164
    iget v12, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v12, v12, 0x2

    .line 165
    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v1, 0x2

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v2, :cond_15

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v3, :cond_14

    add-int/lit8 v15, v6, -0x1

    add-int v16, v12, v14

    sub-int v15, v15, v16

    add-int v16, v1, v13

    mul-int v16, v16, v6

    add-int v16, v16, v15

    mul-int/lit8 v16, v16, 0x2

    mul-int v15, v13, v3

    add-int/2addr v15, v14

    mul-int/lit8 v15, v15, 0x2

    add-int v17, v5, v15

    move/from16 v18, v1

    .line 172
    iget-object v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewData:[B

    add-int v19, v8, v16

    aget-byte v19, v1, v19

    aput-byte v19, v7, v17

    add-int/2addr v15, v4

    add-int v16, v11, v16

    .line 173
    aget-byte v1, v1, v16

    aput-byte v1, v7, v15

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v18

    goto :goto_13

    :cond_14
    move/from16 v18, v1

    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 190
    :cond_15
    new-instance v1, Landroid/graphics/YuvImage;

    const/16 v8, 0x11

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    iput-object v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->mYuvImage:Landroid/graphics/YuvImage;

    goto :goto_14

    .line 52
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "rectangle is not inside the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_17
    sget-object v1, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->TAG:Lcom/xiaomi/scanner/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewFormat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->previewFormat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/scanner/debug/Log;->e(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    :cond_18
    :goto_14
    iget-object v1, v0, Lcom/xiaomi/scanner/module/code/codec/DecodeParams;->mYuvImage:Landroid/graphics/YuvImage;

    return-object v1
.end method
