<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<section class="home-giaiphap" setBackground="/Data/Sites/1/media/giaiphapbig.png">
			<div class="giaiphap-title">
				<h1>
					<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
				</h1>
			</div>
			<div class="box-content">
				<div class="container">
					<div class="row wrapper">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="col-lg-4 col-sm-12" data-aos="fade-up">
			<div class="item">
				<figure>
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
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>

					<figcaption>
						<div class="title">
							<h5>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</h5>
						</div>
						<div class="icon">
							<xsl:if test="position() =1">
								<img>
									<xsl:attribute name="src">
										<xsl:text>/Data/Sites/1/media/giaiphap-icon1.png</xsl:text>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
									</xsl:attribute>
								</img>
							</xsl:if>
							<xsl:if test="position() =2">
								<img>
									<xsl:attribute name="src">
										<xsl:text>/Data/Sites/1/media/giaiphap-icon2.png</xsl:text>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
									</xsl:attribute>
								</img>
							</xsl:if>
							<xsl:if test="position() =3">
								<img>
									<xsl:attribute name="src">
										<xsl:text>/Data/Sites/1/media/giaiphap-icon3.png</xsl:text>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
									</xsl:attribute>
								</img>
							</xsl:if>

						</div>
						<p>
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</p>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:text>Xem thêm</xsl:text>
							<em class="lnr lnr-arrow-right"></em>
						</a>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>