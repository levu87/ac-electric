<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="sanpham">
				<div class="container">
					<div class="sanpham-wrap">
						<div class="title">
							<h1>sản phẩm </h1>
						</div>
						<div class="box-sanpham"> 
							<div class="row"> 
                                <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Product">
        <div class="col-lg-3 col-sm-6">
            <div class="item">
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
                    <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                </a>
                
            </div>
            <div class="title">
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
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </a>
            </div>
        </div>

    </xsl:template>
</xsl:stylesheet>