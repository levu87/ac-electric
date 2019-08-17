<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="sanpham">
            <div class="container">
                <div class="sanpham-wrap">
                    <div class="title">
                        <h1>
                            <xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="navi">
                        <xsl:apply-templates select="/ZoneList/Zone" mode='Tab'></xsl:apply-templates>
                    </div>
                    <xsl:apply-templates select="/ZoneList/Zone" mode='Content'></xsl:apply-templates>
                    <div class="banner-sp">
                        <div class="row">
                            <div class="col-6 left"><img class="img-fluid" src="./img/home-banner1.png" alt="" /></div>
                            <div class="col-6 right"><img class="img-fluid" src="./img/home-banner2.png" alt="" /></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode='Tab'>
        <div class="button">
            <a class="link" href="javasctipt:void(0)">
                <xsl:if test="position() = 1">
                    <xsl:attribute name="class">
                        <xsl:text disable-output-escaping="yes">link current</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:attribute name="data-tab">
                    <xsl:text disable-output-escaping="yes">tab-</xsl:text>
                    <xsl:value-of select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode='Content'>
        <div class="tab-content">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">tab-content current</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">tab-</xsl:text>
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="list-sanpham">
                <xsl:apply-templates select="Product"></xsl:apply-templates>
            </div>
            <div class="viewmore"><a href="#">Xem thêm<em class="lnr lnr-arrow-right"></em></a></div>
        </div>
    </xsl:template>
    <xsl:template match="Product">
        <xsl:if test="position() = 1 or position() = 10">
            <div class="item viral-img">
                <img>
                <xsl:attribute name="src">
                    <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
        </xsl:if>
        <div class="item">
            <figure>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
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
                </a>
                <figcaption><span>
                        <xsl:value-of select="Code"></xsl:value-of>
                    </span>
                    <h4><a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </h4>

                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        Liên hệ
                    </a>
                </figcaption>
            </figure>
        </div>
    </xsl:template>
    <!-- <xsl:template match="ProductImages">
        <img>
        <xsl:attribute name="src">
            <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        </img>
    </xsl:template> -->
</xsl:stylesheet>