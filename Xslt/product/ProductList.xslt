<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />
  <xsl:template match="/">
      <div class="title">
        <h1>
          <xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of>
        </h1>
      </div>
      <div class="row">
        <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
      </div>
  </xsl:template>
  <xsl:template match="Product">
    <div class="col-md-4">
        <figure>
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
                  <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                  <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
              </img>
            </a>

          </div>

          <figcaption><span>
              <xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of>
            </span>
            <div class="title">
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
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
              </a>
            </div>
            <a> 
              <xsl:attribute name="href">
                <xsl:text>/lien-he</xsl:text>
              </xsl:attribute>
              <xsl:text>Liên hệ</xsl:text>
            </a>
          </figcaption>
        </figure>
    </div>
  </xsl:template>
</xsl:stylesheet>