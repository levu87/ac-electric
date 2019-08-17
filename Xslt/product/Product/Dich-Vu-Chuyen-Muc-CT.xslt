<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="benhvien">
			<div class="container">
				<div class="wrap">
					<div class="row">
						<div class="col-md-9">
							<div class="title">
								<h2>
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of>
									<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/EditLink"></xsl:value-of>
								</h2>
								<p>
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent"></xsl:value-of>
								</p>
							</div>
							<div class="slider1">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Slide"></xsl:apply-templates>
									</div>
									<div class="swiper-btn-next">
										<em class="mdi mdi-chevron-right"></em>
									</div>
								</div>
							</div>
							<xsl:if test="count(/ProductDetail/ProductRelated) &gt; 0">
								<div class="slider2">
									<div class="title">
										<h2>sản phẩm phù hợp</h2>
									</div>
									<div class="slider-wrap">			
										<div class="swiper-container">
											<div class="swiper-wrapper">
												<xsl:apply-templates select="/ProductDetail/ProductRelated"></xsl:apply-templates>
											</div>
										</div>
										<div class="slider2-btn-next"><em class="mdi mdi-chevron-right"></em></div>
										<div class="slider2-btn-prev"><em class="mdi mdi-chevron-left"></em></div>
									</div>
								</div>
							</xsl:if>
						</div>
						<div class="col-md-3 right">
							<div class="img">
								<img src="/Data/Sites/1/media/ctdv2-2.png" alt=""></img>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


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
	<xsl:template match="ProductRelated">
		<div class="swiper-slide">
			<div class="item">
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