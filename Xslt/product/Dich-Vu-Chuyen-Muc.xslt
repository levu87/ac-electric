<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="congtrinh-dautu" setBackground="/Data/Sites/1/media/congtrinh-bg.png">
			<div class="container">
				<div class="wrap">
					<div class="title">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
						</h2>
					</div>
					<div class="row">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">

		<xsl:if test="position() =1">


			<div class="col-md-8 ct-thuongmai">
				<h3>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h3>
				<div class="row">
					<xsl:apply-templates select="Product" mode="Col6"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position()=2">


			<div class="col-md-4 ct-dandung">
				<h3>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h3>
				<div class="row">
					<xsl:apply-templates select="Product" mode="Col12"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Product" mode="Col6">
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
								<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
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
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a>
			</p>
		</div>
	</xsl:template>
	<xsl:template match="Product" mode="Col12">
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
								<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
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
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a>
			</p>
		</div>
	</xsl:template>
</xsl:stylesheet>