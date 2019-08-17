<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        
    </xsl:template>
    <xsl:template match="Zone">
        <div class="row">
            <xsl:apply-templates select="News" mode="News1"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="News1">
        <xsl:if test="position()=1">
            <div class="col-md-6 box-left" setBackground="/Data/Sites/1/media/du-an1.png"> 
                <div class="box-text">
                    <h1><xsl:value-of select="Title"></xsl:value-of></h1>
                    <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>