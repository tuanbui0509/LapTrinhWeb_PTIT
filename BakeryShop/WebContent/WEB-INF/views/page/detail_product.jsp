<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Detail product</title>
<base href="${pageContext.servletContext.contextPath}/">


<%@include file="/WEB-INF/views/page/link.jsp"%>
<style type="text/css">
@media ( max-width : 768px) {
	#breadcrumb-wrapper.breadcrumb-w-img {
		background-attachment: scroll !important;
	}
}

#breadcrumb-wrapper.breadcrumb-w-img {
	height: 300px;
	padding: 50px 0;
	background:
		url("//theme.hstatic.net/1000313040/1000406925/14/breadcrumb_bg.png?v=1641");
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	overflow: hidden;
}

#breadcrumb-wrapper.breadcrumb-w-img .breadcrumb-overlay {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0.3);
	z-index: 1;
}

#breadcrumb-wrapper.breadcrumb-w-img .breadcrumb-content {
	position: absolute;
	top: 50%;
	left: 50%;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	z-index: 9;
	width: 100%;
}

#breadcrumb-wrapper.breadcrumb-w-img .breadcrumb-content .breadcrumb-big h2
	{
	font-size: 32px;
	color: #fff;
	padding: 0px;
	margin: 0px 0px 15px 0px;
}

#breadcrumb-wrapper.breadcrumb-w-img .breadcrumb-content .breadcrumb-small a,
	#breadcrumb-wrapper.breadcrumb-w-img .breadcrumb-content .breadcrumb-small span
	{
	color: #fff;
}

#breadcrumb-wrapper.breadcrumb-w-img .breadcrumb-content .breadcrumb-small a
	{
	display: inline-block;
	position: relative;
}

#breadcrumb-wrapper.breadcrumb-w-img .breadcrumb-content .breadcrumb-small a:after
	{
	content: '';
	display: block;
	border-bottom: 1px solid #fff;
	width: 0;
	position: absolute;
	left: 0;
	-webkit-transition: 1s ease;
	transition: 1s ease;
	z-index: 9;
}

#breadcrumb-wrapper.breadcrumb-w-img .breadcrumb-content .breadcrumb-small a:hover
	{
	color: #fff;
}

#breadcrumb-wrapper.breadcrumb-w-img .breadcrumb-content .breadcrumb-small a:hover:after
	{
	width: 100%;
}

.product-main-content {
	background: #fff;
	padding-bottom: 65px;
	color: #3d1a1a;
}

.product-detail .haravan-product-reviews-badge {
	padding-bottom: 10px;
	font-size: 10px;
}

.product-detail .haravan-product-reviews-badge p {
	display: none;
}

#ProductPhoto a {
	border: solid 1px #ddd;
	border-radius: 10px;
	background: #fff;
}

#ProductPhoto a img {
	border-radius: 22px;
	padding: 13px;
	width: 100%;
}

.product-single__photos {
	position: relative;
}

.product-single__photos .owl-prev {
	position: absolute;
	top: 40%;
	left: -6px;
	padding: 3px 11px !important;
	border-radius: 10px !important;
	border: solid 2px #acacac !important;
	background: rgba(255, 255, 255, 0.8) !important;
}

.product-single__photos .owl-prev .fa-angle-left {
	font-size: 26px !important;
	color: #484105 !important;
}

.product-single__photos .owl-next {
	position: absolute;
	top: 40%;
	right: -6px;
	padding: 3px 11px !important;
	border-radius: 10px !important;
	border: solid 2px #acacac !important;
	background: rgba(255, 255, 255, 0.8) !important;
}

.product-single__photos .owl-next .fa-angle-right {
	font-size: 26px !important;
	color: #484105 !important;
}

#ProductThumbs .product-single__thumbnail {
	border: solid 2px #e6e6e6;
	border-radius: 6px;
	background: #fff;
}

#ProductThumbs .product-single__thumbnail img {
	padding: 5px;
	width: 100%;
	border-radius: 10px;
}

#ProductThumbs .product-single__thumbnail:hover {
	border: solid 2px #3d1a1a;
	border-radius: 6px;
	background: #fff;
}

.product-main-content {
	background: #f8f2e8;
	padding: 50px 0px;
}

.product-page h1 {
	color: #3d1a1a;
	margin: 0;
}

.product-page .product-more-info {
	margin: 0 0 2px 0;
}

.product-page .product-info #ProductPrice {
	color: #3d1a1a;
}

.product-page #AddToCart {
	background: #3d1a1a;
	color: #fff;
	padding: 10px 15px;
	border-radius: 10px;
}

.product-page #AddToCart:hover {
	background: #c0c906;
}

.product-page #buy-now {
	background: #c0c906;
	color: #fff;
	padding: 10px 15px;
	border-radius: 10px;
}

.product-page #buy-now:hover {
	background: #c0c906;
}

.product-page .qty-addcart {
	line-height: 2;
	display: inline-flex;
	padding-top: 15px;
}

.product-page .qty-addcart .quantity-selector {
	padding-right: 10px;
}

.product-page .qty-addcart .js-qty .js-qty__num {
	border-radius: 10px;
}

.product-page .product--page-content {
	padding: 28px 23px;
	background: #fff;
	border-radius: 10px;
	border: solid 1px #ddd;
}

/*================ Quantity Selectors ================*/
.js-qty, .ajaxcart__qty {
	position: relative;
	max-width: 100px;
	min-width: 75px;
	overflow: visible;
}

.js-qty input, .ajaxcart__qty input {
	display: block;
	background: none;
	text-align: center;
	width: 100%;
	padding: 5px 25px;
	margin: 0;
	border: 1px solid #e6e6e6;
	outline: none;
}

.js-qty__adjust, .ajaxcart__qty-adjust {
	cursor: pointer;
	position: absolute;
	display: block;
	top: 0;
	bottom: 0;
	border: 0 none;
	padding: 0 8px;
	background: none;
	text-align: center;
	overflow: hidden;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	outline: none;
}

.js-qty__adjust:hover, .ajaxcart__qty-adjust:hover, .js-qty__adjust:focus,
	.ajaxcart__qty-adjust:focus {
	color: #3d1a1a;
}

.js-qty__adjust--plus, .ajaxcart__qty--plus {
	right: 0;
	border-left: 1px solid #e6e6e6;
}

.js-qty__adjust--minus, .ajaxcart__qty--minus {
	left: 0;
	border-right: 1px solid #e6e6e6;
}

.product_detail_image img {
	max-width: 100%;
	border: 5px solid #fff;
	border-radius: 5%;
}

.product__detail-content {
	padding: 28px 23px;
	background: #fff;
	border-radius: 10px;
	border: solid 1px #ddd;
}

h1.product__detail-name {
	color: #3d1a1a;
	margin: 0;
	font-size: 20px;
	font-weight: 700;
}

hr {
	clear: both;
	border-top: solid #e6e6e6;
	border-width: 1px 0 0;
	margin: 30px 0;
	height: 0;
}

.product__detail-price span {
	font-size: 15px;
	color: #3d1a1a;
}

.product__detail-price span:LAST-CHILD {
	font-weight: 700;
	font-size: 18px;
}

.product__detail-size .header span {
	font-weight: 600;
}

.swatch-element {
	margin-right: 5px;
	display: inline-block;
	position: relative;
}

.n-sd label {
	padding: 6px 9px;
	border: 1px solid #b9b3b3;
	border-radius: 10px;
	font-weight: 300;
	font-size: 12px;
	cursor: pointer;
}

.n-sd label.actived {
	border: 1px solid #e4393c;
}

.product__detail-size {
	margin: 20px 0px;
}

button#AddToCart {
	background-color: #3d1a1a;
	color: #fff;
	padding: 8px;
	border-radius: 10px;
	outline: none;
	font-weight: 700;
	cursor: pointer;
	border: none;
}

.product-actions #buy-now {
	background: #c0c906;
	color: #fff;
	padding: 8px 15px;
	border-radius: 10px;
	border: none;
	cursor: pointer;
	outline: none;
}

.product__detail-quality {
	display: flex;
	align-items: center;
	margin-bottom: 20px;
}

span.product__detail-title {
	margin-right: 10px;
}

.product__detail-stock {
	margin: 10px 0px;
}

.input-product {
	display: none;
}

@media screen and (max-width: 950px) {
	.product__detail-content {
		margin-top: 30px;
	}
}
</style>
</head>
<body>
	<div id="wrapper" class="homepage-1">

		<%@include file="/WEB-INF/views/page/header.jsp"%>

		<section id="breadcrumb-wrapper" class="breadcrumb-w-img">
			<div class="breadcrumb-overlay"></div>
			<div class="breadcrumb-content">
				<div class="wrapper">
					<div class="inner text-center">
						<div class="breadcrumb-big">

							<h2>${detailProd.name }</h2>

						</div>

					</div>
				</div>
			</div>
		</section>
		<div class="product-main-content">
			<div class="container">
				<div class="inner">
					<div class="row clearfix">
						<div class="col-md-4">
							<div class="product_detail_image">
								<img alt="" src="resources/page/images/${detailProd.image }">
							</div>
						</div>
						<div class="col-md-8">
							<div class="product__detail-content">
								<h1 class="product__detail-name">${detailProd.name}</h1>
								<span class="product__detail-id">Mã sản phẩm:
									${detailProd.id_product}</span>
								<hr>
								<div class="product__detail-price">
									<span>Giá</span> <span>${detailProd.price}</span>
								</div>
								<form
									action="page/checkQualityFromDetailProduct/${ detailProd.id_product}.htm"
									method="post">
									<div class="product__detail-size">
										<div class="header">
											<span>Kích thước</span>
										</div>
										<div class="select-swap">
											<div class="n-sd swatch-element 19-cm ">
												<input class=" input-product" id="swatch-0-19-cm"
													type="radio" name="option1" value="19 cm" checked>
												<label for="swatch-0-19-cm" id="19cm"
													onclick="clickSize(this.id);"> 19 cm </label>
											</div>
											<div class="n-sd swatch-element 21-cm ">
												<input class=" input-product" id="swatch-0-21-cm"
													type="radio" name="option1" value="21 cm" checked>
												<label for="swatch-0-21-cm" id="21cm"
													onclick="clickSize(this.id);"> 21 cm </label>
											</div>
											<div class="n-sd swatch-element 23-cm ">
												<input class=" input-product" id="swatch-0-23-cm"
													type="radio" name="option1" value="23 cm" checked>
												<label for="swatch-0-23-cm" class="actived" id="23cm"
													onclick="clickSize(this.id);"> 23 cm </label>
											</div>
										</div>
									</div>
									<div class="product__detail-quality">
										<span class="product__detail-title">Số lượng</span>
										
										<c:choose>
											<c:when test="${detailProd.quality == 0 }"> <input id="quality" type="number" name="quality" value="0" max="${ detailProd.quality }" min="0">
											</c:when>
											<c:otherwise> <input id="quality" type="number" name="quality" value="1" max="${ detailProd.quality }" min="1">
											</c:otherwise>
										</c:choose>

									</div>
									<div class="product__detail-stock">
										<span>Còn lại ${ detailProd.quality } sản phẩm</span>
									</div>

									<div class="product-actions">
									<c:choose>
											<c:when test="${detailProd.quality == 0 }"> 
											<button type="submit" name="add" id="AddToCart"
											class="btnAddtocart" onclick="buyClick()" disabled>Thêm vào
											giỏ hàng</button> 
										<button type="button" name="buy" id="buy-now"
											class="btnBuynow" disabled>Mua ngay</button>
											</c:when>
											<c:otherwise> 
											<button type="submit" name="add" id="AddToCart"
											class="btnAddtocart" onclick="buyClick()">Thêm vào
											giỏ hàng</button> 
										<button type="button" name="buy" id="buy-now"
											class="btnBuynow">Mua ngay</button>
											</c:otherwise>
										</c:choose>
										
									</div>
								</form>


							</div>
							<span
								style="color: red; text-align: center; font-size: 16px; display: block; margin: 20px 0px;">${message}</span>
						</div>
					</div>
				</div>
			</div>
		</div>


		<%@include file="/WEB-INF/views/page/footer.jsp"%>
	</div>

	<script type="text/javascript">
		function clickSize(size) {
			document.getElementById("19cm").classList.remove("actived");
			document.getElementById("21cm").classList.remove("actived");
			document.getElementById("23cm").classList.remove("actived");
			document.getElementById(size).className = "actived";

		}
		function buyClick() {
			var x = document.getElementById("quality").value;
			if (x == 0) {
				alert("Vui lòng nhập số lượng sản phẩm để thêm vào giỏ hàng")
			}

		}
	</script>
</body>
</html>