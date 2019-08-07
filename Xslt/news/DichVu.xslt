<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="giaiphap">
				<div class="giaiphap-title">
					<h1><xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of></h1>
				</div>
				<div class="box-content">
					<div class="container">
						<div class="row wrapper">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-lg-4 col-sm-12">
            <div class="item">
                <figure>
                    <img>
                        <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                    <figcaption>
                        <div class="title">
                            <h5><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h5>
                        </div>
                        <div class="icon">
                            <img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p>
                        <a>
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
                        <em class="lnr lnr-arrow-right"></em>
                        </a>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>