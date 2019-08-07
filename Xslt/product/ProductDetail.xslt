<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />
  <xsl:template match="/">
  <section class="chitiet-sp">
      <div class="container">
        <div class="congtac-rival">
          <div class="row">
            <div class="col-lg-8 col-md-12">
              <div class="slider-gallery">
                <div class="swiper-container gallery-top">
                  <div class="swiper-wrapper">
                      <xsl:apply-templates select="/ProductDetail/ProductImages"></xsl:apply-templates>
                  </div>
                </div>
                <div class="swiper-container gallery-thumbs">
                  <div class="swiper-wrapper">
                      <xsl:apply-templates select="/ProductDetail/ProductImages"></xsl:apply-templates>
                  </div>
                  <div class="swiper-btn-next"><em class="mdi mdi-chevron-right"></em></div>
                  <div class="swiper-btn-prev"><em class="mdi mdi-chevron-left"></em></div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-12">
              <div class="content">
                <h2>
                  <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of>
                </h2>

                <table class="table">
                  <tbody>
                      <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Discount">
                    </xsl:apply-templates>
                  </tbody>
                </table>
                <xsl:value-of select='/ProductDetail/BriefContent' disable-output-escaping='yes'></xsl:value-of>
                <div class="btn-lienhe">
                  <a>
                      <xsl:attribute name="href">
                          <xsl:text>/lien-he</xsl:text>
                        </xsl:attribute>
                        <xsl:text>Liên hệ</xsl:text>
                  </a>
                </div>
              </div>
              <div class="social"> 
                <div class="facebook"> <a href=""> <em class="fab fa-facebook-square"></em><span>facebook</span></a></div>
                <div class="messenger"><a href=""> <em class="fab fa-facebook-messenger"></em><span>chia sẻ</span></a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="thongtinchitiet">
        <div class="container">
          <div class="title">
            <h2>thông tin chi tiết </h2>
          </div>
          <div class="fullcontent">
              <xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
          </div>
        </div>
      </div>
      <xsl:if test="count(/ProductDetail/ProductOther) &gt; 0">
        <div class="sanphamkhac">
        <div class="container">
          <div class="title"> 
            <h2>Sản phẩm khác</h2>
          </div>
          <div class="row">
              <xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
          </div>
        </div>
      </div>
      </xsl:if>
      
    </section>
  </xsl:template>
  <xsl:template match="ProductAttributes" mode="Discount">
      <tr>
        <td class="title">
          <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </td>
        <td>
          <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
        </td>
      </tr>
    </xsl:template>
    <xsl:template match="ProductOther">
    <div class="col-lg-3 col-sm-6">
      <div class="item">
        <figure>
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
                <xsl:value-of select="Title"></xsl:value-of>
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
    </div>
  </xsl:template>
  <xsl:template match="ProductImages">
    <div class="swiper-slide">
      <img>
        <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
      </img>
    </div>
  </xsl:template>
</xsl:stylesheet>