<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
  <div class="col-lg-3 col-sm-6 ft-col">
    <ul>
      <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </ul>
  </div>
  </xsl:template>

  <xsl:template match="Zone">
    <li>
      <xsl:if test="Isactive='true'">
        <xsl:attribute name="class">
          <xsl:text>active</xsl:text>
        </xsl:attribute>
        </xsl:if>

          <xsl:if test="count(Zone)>0">
            <xsl:attribute name="class">
              <xsl:text>has-dropdown</xsl:text>
            </xsl:attribute>
          </xsl:if>

          <xsl:if test="count(Zone) > 0 and IsActive='true'">
            <xsl:attribute name="class">
              <xsl:text>has-dropdown active</xsl:text>
            </xsl:attribute>
          </xsl:if>

          <a>
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
            <em>
								<xsl:attribute name="class">
									<xsl:text>mdi mdi-menu-down</xsl:text>
								</xsl:attribute>
						</em>
          </a>
          <xsl:if test="count(Zone) > 0">
            <ul>
              <xsl:apply-templates select="Zone" mode="li">

              </xsl:apply-templates>

            </ul>
          </xsl:if>
    </li>
  </xsl:template>
  <xsl:template match="Zone" mode="li">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="Url">
          </xsl:value-of>
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
      </a>
    </li>
  </xsl:template>
</xsl:stylesheet>