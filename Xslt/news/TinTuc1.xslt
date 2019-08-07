<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <section class="tintuc">
            <div class="container">
                <div class="wrap">
                    <div class="title">
                        <h2>
                            <xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
                        </h2>
                    </div>
                    <div class="box-tintuc">
                        <div class="row">
                            <xsl:apply-templates select="/NewsList/News" mode='TopItem'></xsl:apply-templates>
                            <div class="col-md-6 small">
                                <div class="row">
                                    <xsl:apply-templates select="/NewsList/News" mode="PartItem"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-tintuc">
                        <div class="row">
                            <xsl:apply-templates select="/NewsList/News" mode="List"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News" mode='TopItem'>
        <xsl:if test="position() = 1">
            <div class="col-md-6">
                <div class="big">
                    <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                    <div class="text">
                        <date>
                            <xsl:value-of select="CreatedDate"></xsl:value-of>
                        </date>
                        <a>
                            <h2>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="target">
                                    <xsl:value-of select="Target"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Title"></xsl:value-of>
                            </h2>
                        </a>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode='PartItem'>
        <xsl:if test="position() = 2 or position() = 3">
            <div class="col-md-6">
                <div class="item">
                    <figure>
                        <div class="img">
                            <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </div>
                        <date>
                            <xsl:value-of select="CreatedDate"></xsl:value-of>
                        </date>
                    </figure>
                    <figcaption>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                        <p>
                            <xsl:value-of select="BriefContent"></xsl:value-of>
                        </p>
                    </figcaption>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode='List'>
        <xsl:if test="position() &gt; 3">
            <div class="col-md-3">
                <div class="item">
                    <figure>
                        <div class="img">
                            <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </div>
                        <date>
                            <xsl:value-of select="CreatedDate"></xsl:value-of>
                        </date>
                    </figure>
                    <figcaption>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                    </figcaption>
                </div>
            </div>
        </xsl:if>

    </xsl:template>
</xsl:stylesheet>