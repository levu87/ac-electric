<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <ul>
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position() = 5">
				<li class="has-mega">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>has-mega</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
					<div class="mega-wrap">
						<xsl:apply-templates select="Zone" mode="Mega-item"></xsl:apply-templates>
					</div>
				</li>
			</xsl:when>

			<xsl:when test="position() != 5">
				<li>
					<xsl:if test="count(Zone) > 0">
						<xsl:if test="IsActive='true'">
							<xsl:attribute name="class">
								<xsl:text>has-dropdown</xsl:text>
							</xsl:attribute>
						</xsl:if>
						<xsl:attribute name="class">
							<xsl:text>has-dropdown</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>has-dropdown</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
					<xsl:if test="count(Zone) > 0">
						<ul>
							<xsl:apply-templates select="Zone" mode="ChildLevel1"></xsl:apply-templates>
						</ul>
					</xsl:if>
				</li>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
      
    <xsl:template match="Zone" mode="Mega-item">
		<div class="item">
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        <div class="img">
        <img>
            <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
        </img>
        </div>
        <div class="title">
            <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4>
        </div>
        </a>
        </div>
    </xsl:template>
    
	<xsl:template match="Zone" mode="ChildLevel1">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<xsl:if test="count(Zone) &gt; 0">
				<ul>
					<xsl:apply-templates select="Zone" mode="ChildLevel2"></xsl:apply-templates>
				</ul>
			</xsl:if>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="ChildLevel2">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>