<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="box-content">
            <div class="container">
                <div class="row wrapper">

                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="col-lg-4 col-sm-12">
            <div class="item">
                <figure>
                    <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    </img>

                    <figcaption>
                        <div class="title">
                            <h5>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h5>
                        </div>
                        <div class="icon">
                            <img src="../img/giaiphap-icon1.png" alt="">

                        </div>
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="/ZoneList/MoreText"></xsl:value-of>
                        </p>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                            <em class="lnr lnr-arrow-right"></em>
                        </a>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>