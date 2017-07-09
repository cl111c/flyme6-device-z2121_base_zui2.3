.class public Landroid/graphics/FontListHelper;
.super Ljava/lang/Object;
.source "FontListHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontListHelper$PresetFont;,
        Landroid/graphics/FontListHelper$Alias;,
        Landroid/graphics/FontListHelper$Font;,
        Landroid/graphics/FontListHelper$FontItem;,
        Landroid/graphics/FontListHelper$FontList;
    }
.end annotation


# static fields
.field private static final ALIAS_TAG:Ljava/lang/String; = "alias"

.field private static CHANGE_LINE_CHAR:Ljava/lang/String; = null

.field private static final FAMILY_TAG:Ljava/lang/String; = "family"

.field private static final FONT_FILE_TAG:Ljava/lang/String; = "familyset"

.field private static final FONT_TAG:Ljava/lang/String; = "font"

.field private static final LANG_TAG:Ljava/lang/String; = "lang"

.field private static final NAME_TAG:Ljava/lang/String; = "name"

.field private static final PRESETFONT_FILE_TAG:Ljava/lang/String; = "fontlist"

.field private static final PRESETFONT_FONT_TAG:Ljava/lang/String; = "file"

.field private static final PRESETFONT_PATH_TAG:Ljava/lang/String; = "path"

.field private static final STYLE_TAG:Ljava/lang/String; = "style"

.field private static final TO_NAME_TAG:Ljava/lang/String; = "to"

.field private static final VARIANT_TAG:Ljava/lang/String; = "variant"

.field private static final VERSION_TAG:Ljava/lang/String; = "version"

.field private static final WEIGHT_TAG:Ljava/lang/String; = "weight"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/File;)Landroid/graphics/FontListHelper$FontList;
    .locals 2
    .param p0, "sourceFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "in":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0    # "in":Ljava/io/FileInputStream;
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 118
    .restart local v0    # "in":Ljava/io/FileInputStream;
    invoke-static {v0}, Landroid/graphics/FontListHelper;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListHelper$FontList;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/io/InputStream;)Landroid/graphics/FontListHelper$FontList;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 124
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "UTF-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 125
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 126
    invoke-static {v0}, Landroid/graphics/FontListHelper;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListHelper$FontList;

    move-result-object v1

    return-object v1
.end method

.method public static parsePresetFonts(Ljava/io/File;)Ljava/util/List;
    .locals 2
    .param p0, "sourceFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$PresetFont;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "in":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/FileInputStream;

    .end local v0    # "in":Ljava/io/FileInputStream;
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .restart local v0    # "in":Ljava/io/FileInputStream;
    invoke-static {v0}, Landroid/graphics/FontListHelper;->parsePresetFonts(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static parsePresetFonts(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$PresetFont;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 160
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "UTF-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 161
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 162
    invoke-static {v0}, Landroid/graphics/FontListHelper;->readPresetFonts(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static put2PresetFontXml(Ljava/io/File;Ljava/util/List;)Z
    .locals 3
    .param p0, "destSource"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$PresetFont;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "fontList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$PresetFont;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, "success":Z
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 171
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {v0, p1}, Landroid/graphics/FontListHelper;->put2PresetFontXml(Ljava/io/OutputStream;Ljava/util/List;)Z

    move-result v1

    .line 172
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 176
    return v1

    .line 174
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method public static put2PresetFontXml(Ljava/io/OutputStream;Ljava/util/List;)Z
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$PresetFont;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "fontList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$PresetFont;>;"
    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    .line 183
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 184
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "UTF-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 185
    invoke-static {v0, p1}, Landroid/graphics/FontListHelper;->writePresetFonts(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public static put2Xml(Ljava/io/File;Landroid/graphics/FontListHelper$FontList;)Z
    .locals 3
    .param p0, "destSource"    # Ljava/io/File;
    .param p1, "fontList"    # Landroid/graphics/FontListHelper$FontList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "success":Z
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 134
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {v0, p1}, Landroid/graphics/FontListHelper;->put2Xml(Ljava/io/OutputStream;Landroid/graphics/FontListHelper$FontList;)Z

    move-result v1

    .line 135
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 139
    return v1

    .line 137
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method public static put2Xml(Ljava/io/OutputStream;Landroid/graphics/FontListHelper$FontList;)Z
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "fontList"    # Landroid/graphics/FontListHelper$FontList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    .line 145
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 146
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "UTF-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 147
    invoke-static {v0, p1}, Landroid/graphics/FontListHelper;->writeFamilies(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$FontList;)Z

    move-result v1

    return v1
.end method

.method private static readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListHelper$FontItem;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 230
    new-instance v0, Landroid/graphics/FontListHelper$Alias;

    const-string/jumbo v1, "to"

    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "weight"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/FontListHelper$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v0, "alias":Landroid/graphics/FontListHelper$Alias;
    invoke-static {p0}, Landroid/graphics/FontListHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 234
    new-instance v1, Landroid/graphics/FontListHelper$FontItem;

    const-string/jumbo v2, "name"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/FontListHelper$FontItem;-><init>(Ljava/lang/String;Landroid/graphics/FontListHelper$Alias;)V

    return-object v1
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListHelper$FontList;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 191
    new-instance v0, Landroid/graphics/FontListHelper$FontList;

    invoke-direct {v0}, Landroid/graphics/FontListHelper$FontList;-><init>()V

    .line 192
    .local v0, "list":Landroid/graphics/FontListHelper$FontList;
    const-string v1, "familyset"

    invoke-interface {p0, v3, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "version"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/FontListHelper$FontList;->version:Ljava/lang/String;

    .line 194
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 195
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 196
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "family"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, v0, Landroid/graphics/FontListHelper$FontList;->items:Ljava/util/List;

    invoke-static {p0}, Landroid/graphics/FontListHelper;->readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListHelper$FontItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alias"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, v0, Landroid/graphics/FontListHelper$FontList;->items:Ljava/util/List;

    invoke-static {p0}, Landroid/graphics/FontListHelper;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListHelper$FontItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 204
    :cond_3
    return-object v0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListHelper$FontItem;
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 209
    const-string/jumbo v6, "name"

    invoke-interface {p0, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "lang"

    invoke-interface {p0, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "lang":Ljava/lang/String;
    const-string/jumbo v6, "variant"

    invoke-interface {p0, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "variant":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$Font;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 214
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 215
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "tag":Ljava/lang/String;
    const-string v6, "font"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    new-instance v0, Landroid/graphics/FontListHelper$Font;

    const-string/jumbo v6, "weight"

    invoke-interface {p0, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "style"

    invoke-interface {p0, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v6, v7, v8}, Landroid/graphics/FontListHelper$Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .local v0, "font":Landroid/graphics/FontListHelper$Font;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v0    # "font":Landroid/graphics/FontListHelper$Font;
    :cond_1
    invoke-static {p0}, Landroid/graphics/FontListHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 225
    .end local v4    # "tag":Ljava/lang/String;
    :cond_2
    new-instance v6, Landroid/graphics/FontListHelper$FontItem;

    invoke-direct {v6, v3, v2, v5, v1}, Landroid/graphics/FontListHelper$FontItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v6
.end method

.method private static readPath(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 391
    const-string v0, ""

    .line 392
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 393
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 396
    :cond_0
    const-string v1, "@"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static readPresetFont(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListHelper$PresetFont;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 358
    new-instance v0, Landroid/graphics/FontListHelper$PresetFont;

    invoke-direct {v0}, Landroid/graphics/FontListHelper$PresetFont;-><init>()V

    .line 359
    .local v0, "font":Landroid/graphics/FontListHelper$PresetFont;
    const/4 v2, 0x0

    const-string v3, "font"

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 362
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 365
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    invoke-static {p0}, Landroid/graphics/FontListHelper;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListHelper$PresetFont;->fontDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 368
    :cond_1
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    invoke-static {p0}, Landroid/graphics/FontListHelper;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListHelper$PresetFont;->fontName:Ljava/lang/String;

    goto :goto_0

    .line 370
    :cond_2
    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 371
    invoke-static {p0}, Landroid/graphics/FontListHelper;->readPath(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    goto :goto_0

    .line 373
    :cond_3
    invoke-static {p0}, Landroid/graphics/FontListHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 376
    .end local v1    # "name":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method private static readPresetFonts(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$PresetFont;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$PresetFont;>;"
    const/4 v3, 0x0

    const-string v4, "fontlist"

    invoke-interface {p0, v5, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 343
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 346
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "name":Ljava/lang/String;
    const-string v3, "font"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    invoke-static {p0}, Landroid/graphics/FontListHelper;->readPresetFont(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListHelper$PresetFont;

    move-result-object v0

    .line 349
    .local v0, "font":Landroid/graphics/FontListHelper$PresetFont;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/graphics/FontListHelper$PresetFont;->fontName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    .line 350
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    .end local v0    # "font":Landroid/graphics/FontListHelper$PresetFont;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 381
    const-string v0, ""

    .line 382
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 383
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 386
    :cond_0
    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x1

    .line 243
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 244
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 246
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 247
    goto :goto_0

    .line 249
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void

    .line 244
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeAlias(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$FontItem;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "alias"    # Landroid/graphics/FontListHelper$FontItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 322
    const-string v0, "alias"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    iget-object v0, p1, Landroid/graphics/FontListHelper$FontItem;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 324
    const-string/jumbo v0, "name"

    iget-object v1, p1, Landroid/graphics/FontListHelper$FontItem;->name:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 326
    :cond_0
    iget-object v0, p1, Landroid/graphics/FontListHelper$FontItem;->alias:Landroid/graphics/FontListHelper$Alias;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p1, Landroid/graphics/FontListHelper$FontItem;->alias:Landroid/graphics/FontListHelper$Alias;

    iget-object v0, v0, Landroid/graphics/FontListHelper$Alias;->toName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 328
    const-string/jumbo v0, "to"

    iget-object v1, p1, Landroid/graphics/FontListHelper$FontItem;->alias:Landroid/graphics/FontListHelper$Alias;

    iget-object v1, v1, Landroid/graphics/FontListHelper$Alias;->toName:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    :cond_1
    iget-object v0, p1, Landroid/graphics/FontListHelper$FontItem;->alias:Landroid/graphics/FontListHelper$Alias;

    iget-object v0, v0, Landroid/graphics/FontListHelper$Alias;->weight:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 331
    const-string/jumbo v0, "weight"

    iget-object v1, p1, Landroid/graphics/FontListHelper$FontItem;->alias:Landroid/graphics/FontListHelper$Alias;

    iget-object v1, v1, Landroid/graphics/FontListHelper$Alias;->weight:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    :cond_2
    const-string v0, "alias"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    sget-object v0, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    return-void
.end method

.method private static writeFamilies(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$FontList;)Z
    .locals 6
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "fontList"    # Landroid/graphics/FontListHelper$FontList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, "success":Z
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 259
    sget-object v3, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "familyset"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    iget-object v3, p1, Landroid/graphics/FontListHelper$FontList;->version:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 263
    const/4 v3, 0x0

    const-string/jumbo v4, "version"

    iget-object v5, p1, Landroid/graphics/FontListHelper$FontList;->version:Ljava/lang/String;

    invoke-interface {p0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    :cond_0
    sget-object v3, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    iget-object v3, p1, Landroid/graphics/FontListHelper$FontList;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/FontListHelper$FontItem;

    .line 267
    .local v1, "item":Landroid/graphics/FontListHelper$FontItem;
    iget-boolean v3, v1, Landroid/graphics/FontListHelper$FontItem;->isFamily:Z

    if-eqz v3, :cond_1

    .line 268
    invoke-static {p0, v1}, Landroid/graphics/FontListHelper;->writeFamily(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$FontItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 277
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Landroid/graphics/FontListHelper$FontItem;
    :catchall_0
    move-exception v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    throw v3

    .line 270
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "item":Landroid/graphics/FontListHelper$FontItem;
    :cond_1
    :try_start_1
    invoke-static {p0, v1}, Landroid/graphics/FontListHelper;->writeAlias(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$FontItem;)V

    goto :goto_0

    .line 273
    .end local v1    # "item":Landroid/graphics/FontListHelper$FontItem;
    :cond_2
    sget-object v3, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    const/4 v3, 0x0

    const-string v4, "familyset"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    const/4 v2, 0x1

    .line 277
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 279
    return v2
.end method

.method private static writeFamily(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$FontItem;)V
    .locals 5
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "family"    # Landroid/graphics/FontListHelper$FontItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 284
    const-string v2, "family"

    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    iget-object v2, p1, Landroid/graphics/FontListHelper$FontItem;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 286
    const-string/jumbo v2, "name"

    iget-object v3, p1, Landroid/graphics/FontListHelper$FontItem;->name:Ljava/lang/String;

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    :cond_0
    iget-object v2, p1, Landroid/graphics/FontListHelper$FontItem;->lang:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 289
    const-string/jumbo v2, "lang"

    iget-object v3, p1, Landroid/graphics/FontListHelper$FontItem;->lang:Ljava/lang/String;

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    :cond_1
    iget-object v2, p1, Landroid/graphics/FontListHelper$FontItem;->variant:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 292
    const-string/jumbo v2, "variant"

    iget-object v3, p1, Landroid/graphics/FontListHelper$FontItem;->variant:Ljava/lang/String;

    invoke-interface {p0, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    :cond_2
    sget-object v2, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    iget-object v2, p1, Landroid/graphics/FontListHelper$FontItem;->fonts:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 296
    iget-object v2, p1, Landroid/graphics/FontListHelper$FontItem;->fonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListHelper$Font;

    .line 297
    .local v0, "font":Landroid/graphics/FontListHelper$Font;
    invoke-static {p0, v0}, Landroid/graphics/FontListHelper;->writeFont(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$Font;)V

    goto :goto_0

    .line 300
    .end local v0    # "font":Landroid/graphics/FontListHelper$Font;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v2, "family"

    invoke-interface {p0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    sget-object v2, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    return-void
.end method

.method private static writeFont(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$Font;)V
    .locals 3
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "font"    # Landroid/graphics/FontListHelper$Font;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 306
    const-string v0, "font"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    iget-object v0, p1, Landroid/graphics/FontListHelper$Font;->weight:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 308
    const-string/jumbo v0, "weight"

    iget-object v1, p1, Landroid/graphics/FontListHelper$Font;->weight:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    :cond_0
    iget-object v0, p1, Landroid/graphics/FontListHelper$Font;->style:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 311
    const-string/jumbo v0, "style"

    iget-object v1, p1, Landroid/graphics/FontListHelper$Font;->style:Ljava/lang/String;

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    :cond_1
    iget-object v0, p1, Landroid/graphics/FontListHelper$Font;->fontName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p1, Landroid/graphics/FontListHelper$Font;->fontName:Ljava/lang/String;

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    :cond_2
    const-string v0, "font"

    invoke-interface {p0, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    sget-object v0, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 318
    return-void
.end method

.method private static writePresetFont(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$PresetFont;)V
    .locals 6
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "font"    # Landroid/graphics/FontListHelper$PresetFont;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 422
    const-string v1, "font"

    invoke-interface {p0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    sget-object v1, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    iget-object v1, p1, Landroid/graphics/FontListHelper$PresetFont;->fontDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 425
    const-string/jumbo v1, "name"

    invoke-interface {p0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    iget-object v1, p1, Landroid/graphics/FontListHelper$PresetFont;->fontDisplayName:Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const-string/jumbo v1, "name"

    invoke-interface {p0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 428
    sget-object v1, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    :cond_0
    iget-object v1, p1, Landroid/graphics/FontListHelper$PresetFont;->fontName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 431
    const-string v1, "file"

    invoke-interface {p0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    iget-object v1, p1, Landroid/graphics/FontListHelper$PresetFont;->fontName:Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string v1, "file"

    invoke-interface {p0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    sget-object v1, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    :cond_1
    iget-object v1, p1, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 437
    iget-object v1, p1, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/graphics/FontListHelper$PresetFont;->fullPath:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v1, "path"

    invoke-interface {p0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const-string v1, "/"

    const-string v2, "@"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string/jumbo v1, "path"

    invoke-interface {p0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    sget-object v1, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    const-string v1, "font"

    invoke-interface {p0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    sget-object v1, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    return-void
.end method

.method private static writePresetFonts(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)Z
    .locals 5
    .param p0, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/FontListHelper$PresetFont;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "fontList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListHelper$PresetFont;>;"
    const/4 v2, 0x0

    .line 403
    .local v2, "success":Z
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 404
    sget-object v3, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "fontlist"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    sget-object v3, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListHelper$PresetFont;

    .line 409
    .local v0, "font":Landroid/graphics/FontListHelper$PresetFont;
    invoke-static {p0, v0}, Landroid/graphics/FontListHelper;->writePresetFont(Lorg/xmlpull/v1/XmlSerializer;Landroid/graphics/FontListHelper$PresetFont;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 415
    .end local v0    # "font":Landroid/graphics/FontListHelper$PresetFont;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    throw v3

    .line 411
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v3, Landroid/graphics/FontListHelper;->CHANGE_LINE_CHAR:Ljava/lang/String;

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 412
    const/4 v3, 0x0

    const-string v4, "fontlist"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    const/4 v2, 0x1

    .line 415
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 417
    return v2
.end method
