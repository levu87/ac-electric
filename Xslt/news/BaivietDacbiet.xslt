<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="tailieuhotro">
				<div class="container"> 
					<div class="title"> 
						<h2><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h2>
					</div>
					<div class="content"> 
						<div class="row dd">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</div>
                        <div class="button"> 
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:text>/lien-he</xsl:text>
                                </xsl:attribute>
                                <xsl:text>Liên hệ</xsl:text>
                            </a>
                        </div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-md-3">
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
                    <xsl:value-of select="Title"></xsl:value-of>
                </a>
                <div class="bottom"> 
                    <p> 
                            <time> <em class="date far fa-clock"></em><span><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></span></time>
                        </p><em class="fas fa-cloud-download-alt"></em>
                </div>
            </div>
        </div> 
    </xsl:template>
</xsl:stylesheet>