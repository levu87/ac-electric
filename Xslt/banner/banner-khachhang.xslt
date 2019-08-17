<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
							
								<h4>KHÁCH HÀNG</h4>
								<div class="swiper-container">
									<div class="swiper-wrapper">
									<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>

									</div>
								</div>
								<!--/control-->
								<div class="swiper-btn-next"><em class="lnr lnr-arrow-right"></em></div>
								<div class="swiper-btn-prev"><em class="lnr lnr-arrow-left"></em></div>
						
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
            <div class="item">
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
    </xsl:template>
</xsl:stylesheet>