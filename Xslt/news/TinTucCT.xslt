<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />
  <xsl:template match="/">
    <section class="tintuc-ct">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <div class="content">
              <h3><xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of></h3>
              <p><xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of></p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="sidebox">
              <div class="title">
                <h2>
                  <xsl:value-of select="/NewsDetail/NewsOtherTitle"></xsl:value-of>
                </h2>
              </div>
              <xsl:apply-templates select="NewsDetail/NewsOther" mode="Other"></xsl:apply-templates>
            </div>
          </div>
        </div>
        <div class="social-icon"><a class="fb" href=""><em class="fab fa-facebook-square"></em><span>Like </span></a>
          <div class="pop"> </div><a class="tweet" href=""><em class="fab fa-twitter"></em><span>Tweet</span></a><a
            class="li" href=""><em class="fab fa-linkedin"></em><span>Share</span></a>
        </div>
      </div>
    </section>
  </xsl:template>
  <xsl:template match="NewsOther" mode="Other">
    <xsl:if test="count(/NewsDetail/NewsOther)>0">
      <div class="item">
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
        <div class="caption">
          <h4>
            <xsl:value-of select="Title"></xsl:value-of>
            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
          </h4>
          <date> <em class="far fa-clock"></em><span><xsl:value-of select="Title"></xsl:value-of></span></date>
        </div>
      </div>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>