<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="ZoneList"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="ZoneList">

		<section class="duan-tc" setBackground="/Data/Sites/1/media/duan-3.png">
			<div class="container">
				<div class="danhmuc-top">
					<div class="title">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
						</h2>
					</div>
					<div class="danhmuc">
						<xsl:apply-templates select="Zone" mode="Navigation"></xsl:apply-templates>
					</div>
				</div>
				<xsl:apply-templates select="Zone" mode="Item"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone" mode="Navigation">
		<div class="button">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>button current</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>button current</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="link" id="current" href="javascript:void(0)">
				<xsl:attribute name="data-tab">
					<xsl:text>tab-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Item">
		<div class="tab-content">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text> tab-content current</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text> tab-content current</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>tab-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="row">
				<xsl:apply-templates select="Product"></xsl:apply-templates>
			</div>
			<div class="button-more">
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

			</div>
		</div>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-md-3">
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
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
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
					<figcaption>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<p>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</p>
						</a>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>