<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:if test="count(/ZoneList/Zone) > 0">
            <div class="danhmuc-top">
                <div class="title">
                    <h2>
                        <xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
                    </h2>
                </div>
                <div class="danhmuc">
                    <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="button">
            <xsl:if test="position() =1">
                <xsl:attribute name="class">
                    <xsl:text>button current</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>button current</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a class="link" id="current" href="javascript:void(0)">
                <xsl:attribute name="data-tab">
                    <xsl:text>tab-</xsl:text>
                    <xsl:value-of select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>