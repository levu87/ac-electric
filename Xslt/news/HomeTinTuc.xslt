<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">

        <div class="title">
            <h1>
                <xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle">
                </xsl:value-of>
            </h1>
            <div class="viewall">
                <a>
                <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target"></xsl:value-of>
                            </xsl:attribute>
                <p>Xem tất cả <em class="lnr lnr-arrow-right"></em></p>
                </a>
            </div>
        </div>
        <div class="box-wrap">
                <div class="box">
                <xsl:apply-templates select="/NewsList/News" mode="big"></xsl:apply-templates>
            </div>
            <div class="box">
                <div class="box2">
                    <xsl:apply-templates select="/NewsList/News" mode="small"></xsl:apply-templates>
                </div>
            </div>
        </div>
        
    


    </xsl:template>
    <xsl:template match="News" mode="big">
        <xsl:if test="position() = 1">
            <div class="box1">
                <figure> <a class="img">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </a>
                    <figcaption><a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target"></xsl:value-of>
                            </xsl:attribute>
                            <h4>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h4>
                        </a>
                        <time><em class="far fa-clock"></em><span>
                                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                            </span></time>
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </p>
                    </figcaption>
                </figure>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="small">
        <xsl:if test="position()&gt;1 and position()&lt;6">
            <div class="item">
                <a class="img">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </a>
                <div class="text"><a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <h5>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h5>
                    </a>
                    <time> <em class="far fa-clock"></em><span>
                            <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                        </span></time>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>