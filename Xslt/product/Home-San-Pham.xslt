<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="duan-slider">
				<div class="container">
					<div class="title">
						<h1><xsl:value-of disable-output-escaping="yes" select="/ProductList/ModuleTitle"></xsl:value-of></h1>
					</div>
					<div class="swiper-container">
						<div class="swiper-wrapper">					
							<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
						</div>
						<div class="swiper-btn-next"><em class="mdi mdi-chevron-right"></em></div>
						<div class="swiper-btn-prev"><em class="mdi mdi-chevron-left"></em></div>
						
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Product">
        <div class="swiper-slide">
            <div class="img">
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="box-content">
                <p><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></p>
                <a>
                    <xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
                <h1><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>