<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<!--data-comment-->


	<!--Begin News-->
	<xsl:template match="/">
		<div class="row">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<xsl:if test="position() = 1 ">
			<div class="col-md-6 box-left" setBackground="/Data/Sites/1/media/du-an1.png"> 
                <div class="box-text">
                    <h1>
                        <xsl:attribute name='Title'>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </h1>
				<p><xsl:attribute name="BriefContent"></xsl:attribute></p>
                </div>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</xsl:if>
		<!-- <xsl:if test="position() = 2 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 grid-col-10 news-part"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row grid-row-10"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 1 and position() &lt; 6">
			<div class="col-sm-6 grid-col-10" data-aos="fade-up">
				<xsl:attribute name='data-aos-delay'>
					<xsl:value-of select='position()*300 - 300'></xsl:value-of>
				</xsl:attribute>
				<a class="news-item" href="#">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="news-img shadow-bg">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</figcaption>
					</figure>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</xsl:if> -->
		<xsl:if test="position() = last() ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
