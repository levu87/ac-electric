<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="biquyet">
				<div class="container">
					<div class="wrap">
						<div class="title">
							<h2><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h2>
						</div>
						<div class="box-biquyet">
							<div class="row">
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							</div>
							<div class="button-view"><a href="">XEM THÊM <em class="lnr lnr-arrow-right"></em></a></div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-md-3">
            <div class="item">
                <figure>
                    <div class="img">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                        
                        <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        </img></a>
                    </div>
                    <date><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></date>
                </figure>
                <figcaption>
                    <a>
                    <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                    <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4>
                    </a>
                    
                </figcaption>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>