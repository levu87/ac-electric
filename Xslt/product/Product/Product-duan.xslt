<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="duan">
            <div class="tab-content current" id="tab-1">
                <div class="row">
                    <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Product">
        <xsl:if test="count(Zone) > 0">
            <div class="col-md-4">
                <div class="item">
                    <figure>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </a>
                        <figcaption>
                            <p>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </p>
                            <h3>
                                <xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
                            </h3>
                        </figcaption>
                    </figure>
                </div>
            </div>
        </xsl:if>

    </xsl:template>
</xsl:stylesheet>