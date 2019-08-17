<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<section class="duan-tb">
			<div class="container">
				<div class="title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of>
					</h2>
					<p>
						<xsl:text disable-output-escaping="yes">Dự án tiêu biểu</xsl:text>
					</p>
				</div>
				<div class="row">
					<div class="col-md-6">
						<xsl:apply-templates select="/ProductList/Product" mode="Itemleft"></xsl:apply-templates>
					</div>
					<div class="col-md-6 box-right">

						<xsl:apply-templates select="ProductList/Product" mode="Itemright"></xsl:apply-templates>

					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Product" mode="Itemleft">
		<xsl:if test="position() = 1">
			<div class="box-left">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
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

				<div class="box-text">
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
						<h1>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h1>
					</a>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Product" mode="Itemright">
		<xsl:if test="position() > 1 and position() &lt; 5">
			<div class="item">
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

				<div class="img">
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
						</img>
					</a>
				</div>
				<div class="text-box">
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
						<h4>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h4>
					</a>
					<p>
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>