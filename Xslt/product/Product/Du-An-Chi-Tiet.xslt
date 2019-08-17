<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="duan-gioithieu">
			<div class="container">
				<div class="row">
					<div class="col-md-6 box-text">
						<div class="title">
							<h2>
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of>
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/EditLink"></xsl:value-of>
							</h2>
						</div>
						<div class="content">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/BriefContent"></xsl:value-of>
						</div>
					</div>
					<div class="col-md-6 img">
						<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Single"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>

		<section class="duanslider" setBackground="/Data/Sites/1/media/giaiphapbig.png">
			<div class="container">
				<div class="row" style='justify-content: center'><div class="col-lg-8">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Slide"></xsl:apply-templates>
					</div>
					<div class="control">
						<div class="swiper-btn-next">
							<em class="mdi mdi-chevron-right"></em>
						</div>
						<div class="swiper-btn-prev">
							<em class="mdi mdi-chevron-left"></em>
						</div>
					</div>
				</div>
				</div></div>
			</div>
		</section>
		<div class="box-text" setBackground="/Data/Sites/1/media/duan-3.png">
			<div class="container">
				<div class="row">
					<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent"></xsl:value-of>
				</div>
			</div>
		</div>
		<xsl:if test="count(/ProductDetail/ProductOther) &gt; 0">

			<section class="duankhac">
				<div class="container">
					<div class="title">
						<h2>dự án khác</h2>
					</div>
					<div class="row">
						<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="count(/ProductDetail/ProductRelated) &gt; 0">
			<section class="sanphamphuhop">
				<div class="container">
					<div class="title">
						<h2>sản phẩm phù hợp </h2>
					</div>
					<div class="box-sp">
						<div class="row">
							<xsl:apply-templates select="/ProductDetail/ProductRelated"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="ProductImages" mode="Single">
		<xsl:if test="position()=1">

			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</xsl:if>

	</xsl:template>
	<xsl:template match="ProductImages" mode="Slide">
		<div class="swiper-slide">
			<div class="item">
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
	</xsl:template>
	<xsl:template match="ProductOther">
		<div class="col-lg-3 col-md-6 col-12">

			<div class="item">
				<figure>
					<a class="figure-image">
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
					<figcaption>
						<p>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</a>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductRelated">
		<div class="col-lg-3 col-md-6 col-12">
			<div class="item">
				<figure>
					<a class="img">
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
					<figcaption>
						<span>
							<xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of>
						</span>
						<h4>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</a>
						</h4>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>