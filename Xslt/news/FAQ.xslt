<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		<div class="item">
			<div class="accordion">
				<div class="button">
					<div class="icon">
						<em class="lnr lnr-plus-circle"></em>
					</div>
				</div>
				<h4>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h4>
			</div>
			<div class="accordion-content">
				<p>
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>