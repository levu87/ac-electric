<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="duan-slider">
            <div class="container">
                <div class="title">
                    <h1><xsl:value-of disable-output-escaping="yes" select="/BannerList/ModuleTitle"></xsl:value-of></h1>
                </div>
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
                        <div class="box-content">
                        <p><xsl:text disable-output-escaping="yes">khu căn hộ cao cấp</xsl:text></p>
                        <h1><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
                    </div>
        </img></div>
                    </div>
                    <div class="swiper-btn-next"><em class="mdi mdi-chevron-right"></em></div>
                    <div class="swiper-btn-prev"><em class="mdi mdi-chevron-left"></em></div>
                    
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide"><img>
            <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute></img>
                
    </xsl:template>
</xsl:stylesheet>