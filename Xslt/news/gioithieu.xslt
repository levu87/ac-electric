<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:apply-templates select="/Zonelist/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() =1">
            <section class="gioithieu">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-sm-12 box-left">
                            <h1><xsl:value-of disable-output-escaping="yes" select="/Zonelist/Title"></xsl:value-of></h1>
                            <h4><xsl:value-of disable-output-escaping="yes" select="Caption"></xsl:value-of></h4>
                            <p><xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of></p>
                        </div>
                        <div class="col-lg-7 col-sm-12 box-right">
                            <img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>