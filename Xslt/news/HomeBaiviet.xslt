<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="gioithieu">
				<div class="container">
					<div class="row">
						<div class="col-lg-5 col-sm-12 box-left">
							<h1><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h1>
							<h4><xsl:text disable-output-escaping="yes">Niềm tin của mọi công trình</xsl:text></h4>
							<p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
                            <a class="btn" href="">xem thêm<em class="lnr lnr-arrow-right"></em></a>
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
    </xsl:template>
</xsl:stylesheet>