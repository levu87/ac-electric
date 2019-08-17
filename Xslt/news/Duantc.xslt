<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="tab-content current" id="tab-1">
            <div class="row">
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-md-3">
            <div class="item">
                <figure>
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
                        <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                    <figcaption>
                        <p><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></p>
                    </figcaption>
                    </a>
                    
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>