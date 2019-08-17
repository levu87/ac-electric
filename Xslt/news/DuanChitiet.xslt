<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="duan-gioithieu">
            <div class="container">
                <div class="row"> 
                    <div class="col-md-6 box-text">
                        <div class="title"> 
                            <h2><xsl:value-of disable-output-escaping="yes" select="/NewsList/Title"></xsl:value-of></h2>
                        </div>
                        <div class="content"> 
                            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-md-6 img"><xsl:apply-templates select="/NewsList/News"></xsl:apply-templates></div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position() = 1">
            <img>
                <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>