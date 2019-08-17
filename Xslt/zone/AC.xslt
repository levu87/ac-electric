<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">

		<section class="gioithieu">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-sm-12 box-left" data-aos="fade-up" data-aos-duration="3000">

						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						<a class="btn" href="">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:text>xem thêm</xsl:text>
							<em class="lnr lnr-arrow-right"></em>
						</a>

					</div>
					<div class="col-lg-7 col-sm-12 box-right" data-aos="fade-up" data-aos-duration="3000">
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