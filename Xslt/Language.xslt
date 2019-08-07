<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="language">

							<div class="lag-active">
              <xsl:apply-templates select="/LanguageList/Language" mode="Active"></xsl:apply-templates><img src="./img/down.svg" alt="">
              </div>
                <div class="list-lag">
                  <xsl:apply-templates select="/LanguageList/Language" mode="Active"></xsl:apply-templates>
                </div>
						</div>
  </xsl:template>

  <xsl:template match="Language" mode="Active">
    <xsl:if test="IsActive='true'">
      <span>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
    </span>
    </xsl:if>
  </xsl:template>
  <xsl:template match="Language">
      <li> <a>
        <xsl:attribute name="href">
          <xsl:value-of select="Url"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
      </a></li>
  </xsl:template>
</xsl:stylesheet>