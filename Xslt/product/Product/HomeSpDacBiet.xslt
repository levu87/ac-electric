<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
                <div class="list-sanpham">
                    <xsl:apply-templates select="ProductList/Product"></xsl:apply-templates>
                    <div class="viewmore">
                    <a>
                    <xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
                    Xem thêm
                    <em class="lnr lnr-arrow-right"></em>
                    </a>
                    </div>

                </div>
    </xsl:template>
    <xsl:template match="Product">
        <xsl:if test="position() = 1 or position() = 10">
                <div class="item viral-img">
                    <a class="img">
                        <xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
                    <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                    </a>
                    
                </div>
            </xsl:if>
        <xsl:if test="position()&gt;1 and position()&lt;10">
            <div class="item"> 
            <figure>
                <a>
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
                </a>
                <figcaption>
                    <span><xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of></span>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4>
                        </a>
                        <a>
                                <xsl:attribute name="href">
                                        <xsl:value-of select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                            Liên hệ</a>
                        </figcaption>
            </figure>
        </div>
        </xsl:if>
        
    </xsl:template>
</xsl:stylesheet>