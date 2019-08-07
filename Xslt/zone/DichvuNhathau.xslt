<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
        <div class="col-md-8 ct-thuongmai">
            <h3><xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle">
                </xsl:value-of></h3>
                <div class="row"><xsl:apply-templates select="/ZoneList/Zone" mode="Big"></xsl:apply-templates></div>
                
            </div>
	</xsl:template>
	<xsl:template match="Zone" mode="Big">
            <div class="col-6 circle">
			<div class="item">
				<div class="img">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
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
			</div>
			<p>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></x<?xml version="1.0" encoding="utf-8" ?>
                        <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                            xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
                            <xsl:output method="html" indent="yes" />
                        
                            <xsl:template match="/">
                        
                                <section class="congtrinh-dautu" setBackground="/Data/Sites/1/media/banner-dichvu.png">
                                    <!-- <xsl:attribute name="setBackground">
                                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                                    </xsl:attribute> -->
                                    <div class="container">
                                        <div class="wrap">
                                            <div class="title">
                                                <h2>
                                                    <xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle">
                                                    </xsl:value-of>
                                                </h2>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-8 ct-thuongmai">
                                                    <h3>
                                                        <xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle">
                                                        </xsl:value-of>
                                                    </h3>
                                                    <div class="row">
                                                        <xsl:apply-templates select="/ZoneList/Zone" mode="Big"></xsl:apply-templates>
                                                    </div>
                                                </div>
                                                <div class="col-md-4 ct-dandung">
                                                    <h3>công trình thương mại</h3>
                                                    <div class="row dd">
                                                        <xsl:apply-templates select="/ZoneList/Zone" mode="small"></xsl:apply-templates>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </xsl:template>
                            <xsl:template match="Zone" mode="Big">
                                <div class="col-6 circle">
                                    <div class="item">
                                        <div class="img">
                                            <a>
                                                <xsl:attribute name="href">
                                                    <xsl:value-of select="Url"></xsl:value-of>
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
                                    </div>
                                    <p>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="Url"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:attribute name="title">
                                                <xsl:value-of select="Title"></xsl:value-of>
                                            </xsl:attribute>
                                        </a>
                                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                    </p>
                                </div>
                            </xsl:template>
                            <xsl:template match="Zone" mode="small">
                                <div class="col-12 circle">
                                    <div class="item">
                                        <div class="img">
                                            <a>
                                                <xsl:attribute name="href">
                                                    <xsl:value-of select="Url"></xsl:value-of>
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
                                    </div>
                                    <p>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="Url"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:attribute name="title">
                                                <xsl:value-of select="Title"></xsl:value-of>
                                            </xsl:attribute>
                                        </a>
                                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                    </p>
                                </div>
                            </xsl:template>
                        </xsl:stylesheet>sl:value-of>
					</xsl:attribute>
				</a>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </p>
            </div>
	</xsl:template>
</xsl:stylesheet>