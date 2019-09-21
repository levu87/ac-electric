<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<section class="sanpham" setBackground="/Data/Sites/1/media/duan-3.png">
			<div class="container">
				<div class="sanpham-wrap">
					<div class="title">
						<h1>
							<xsl:text disable-output-escaping="yes">sản phẩm</xsl:text>
						</h1>
					</div>

					<div class="box-sanpham">
						<div class="row">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">


		<div class="col-lg-3 col-sm-6">

			<div class="item">
				<a class="img">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>

					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>

					</img>
				</a>
			
			<div class="title">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>

				</a>
			</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>