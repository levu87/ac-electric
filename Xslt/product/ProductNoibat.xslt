<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="sanpham">
            <div class="container">
                <div class="sanpham-wrap">
                    <div class="title">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="/ProductList/ModuleTitle">
                            </xsl:value-of>
                        </h1>
                    </div>
                    
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="ProductList">
        <div class="navi">
            <xsl:apply-templates select="/ProductList/Product" mode="navigation"></xsl:apply-templates>
        </div>
        <xsl:apply-templates select="ProductList/Product" mode="Item"></xsl:apply-templates>
        <div class="viewmore"><a href="#">Xem thêm<em class="lnr lnr-arrow-right"></em></a></div>
        <!-- <div class="banner-sp">
            <div class="row">
                <div class="col-6 left">
                    <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="col-6 right">
                    <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
            </div>
        </div> -->

    </xsl:template>
    <xsl:template match="Product" mode="navigation">
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
    <xsl:template match="Product" mode="Item">
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
            <div class="list-sanpham">
                <xsl:apply-templates select="Product"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Product">
        <div class="item">
            <figure><a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
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
                        <xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of>
                    </span><a href="">
                        <h4>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h4>
                    </a>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:text>/lien-he</xsl:text>
                        </xsl:attribute>
                        <xsl:text>Liên hệ</xsl:text>
                    </a></figcaption>
            </figure>
        </div>
    </xsl:template>
</xsl:stylesheet>