<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chi tiết đơn hàng</title>
<base href="${pageContext.servletContext.contextPath}/">

<%@include file="/WEB-INF/views/page/link.jsp"%>
</head>
<body>
	<style>
.order {
	margin-top: 12px;
	padding: 20px;
	background-color: #fff;
	margin-bottom: 30px;
}

.order-info {
	padding: 8px 12px;
	min-height: 50px;
	border-bottom: 1px solid #dadada;
	display: flex;
}

.order-info .pull-left, .order-info .pull-right {
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.order-info .info-order-left-text {
	margin-bottom: 4px;
}

.order-info .link {
	color: #1a9cb7;
	font-weight: 500;
}

.text.desc {
	font-size: 12px;
}

.text.bold {
	font-weight: 500;
}

.text.info {
	color: #757575;
}

.text {
	color: #212121;
	word-break: break-word;
}

.order-info .pull-cont {
	flex: 1;
	margin: 0 30px;
	text-align: right;
}

.order-info .manage {
	line-height: 32px;
}

.order-info .link {
	color: #1a9cb7;
	font-weight: 500;
}

.link, a {
	cursor: pointer;
}

.pull-right {
	float: right !important;
}

.clear {
	clear: both;
}

.order-item {
	min-height: 80px;
	margin: 24px 0 0px 0;
	padding-right: 12px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	border-bottom: 1px solid #dadada;
	padding-bottom: 20px;
}

.order-item .item-pic {
	float: left;
}

.order-item .item-main-mini {
	width: 280px;
}

.order-item .item-main {
	float: left;
	width: 600px;
	margin-left: 12px;
	margin-right: 24px;
}

.order-item .item-title {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;
}

.order-item .item-quantity {
	font-size: 14px;
	float: left;
	width: 100px;
	min-height: 80px;
	text-align: left;
}

.order-item .item-quantity .multiply {
	font-size: 14px;
}

.text.multiply {
	color: #c9c9c9;
}

.order-item .item-capsule {
	width: 204px;
	text-align: center;
}

.order-item .item-status {
	float: left;
	min-height: 80px;
	text-align: left;
}

.order-item .item-capsule .capsule {
	margin-top: -4px;
}

.capsule {
	font-size: 12px;
	padding: 4px 12px;
	display: inline-block;
	border-radius: 24px;
	background-color: #eff0f5;
	max-width: 150px;
}

.order-item .item-info {
	float: right;
	min-height: 80px;
	text-align: right;
	max-width: 204px;
}

.order-item .item-pic img {
	width: 80px;
	height: 80px;
}

.order-item .iconTag {
	height: 14px;
	margin-right: 4px;
}

.order-btn {
	display: flex;
	align-items: center;
	justify-content: flex-end;
}

.btn-item {
	margin-left: .625rem;
	background: #fff;
	text-decoration: none;
	padding: 12px;
	width: 100%;
	display: block;
	text-align: center;
	margin: 0;
	transition: background-color .1s cubic-bezier(.4, 0, .6, 1);
	border: 1px solid rgba(0, 0, 0, .09);
	border-radius: 2px;
	background: transparent;
	color: rgba(0, 0, 0, .8);
	outline: none;
	cursor: pointer;
	font-size: 1.4rem !important;
	font-weight: 300;
	line-height: 1;
	letter-spacing: 0;
	border-radius: 4px;
}

.btn-main:hover {
	opacity: 0.9 !important;
	color: white !important;
	text-decoration: none;
}

.btn-main {
	background-color: rgba(74, 29, 34, 0.9);
	color: white;
}

.btn-detail {
	background-color: white;
	color: black;
}

.btn-detail:hover {
	border: 1px solid rgba(74, 29, 34, 0.9);
	color: rgba(74, 29, 34, 0.9);
	transition: all 0.25s;
	text-decoration: none;
}

.btn-buy-again, .btn-show-detail {
	display: flex;
	width: 200px;
}

.btn-buy-again {
	margin-right: 20px;
}

.order-total-payment {
	display: flex;
	align-items: center;
	justify-content: flex-end;
	margin: 30px 0;
}

.icon-payment {
	width: 32px;
	height: 32px;
	margin-right: 10px;
}

.title-payment {
	font-weight: bold;
	margin-right: 10px;
}

.total-payment {
	color: rgba(74, 29, 34, 0.9);
	font-size: 1.875rem;
	line-height: 2rem;
}
.order-title{
	font-size: 30px;
	color: rgba(74, 29, 34, 0.9);
	text-align: center;
	margin-bottom: 50px;
}
</style>
	<div id="wrapper" class="homepage-1">
		<%@include file="/WEB-INF/views/page/header.jsp"%>
		<div class="container">

			<div class="orders">
			<h2 class="order-title">CHI TIẾT ĐƠN HÀNG</h2>
				<div class="order">
					<c:forEach var="o" items="${Orders}" varStatus="status">

						<div class="order-item">
							<div class="item-pic" data-spm="detail_image">
								<a href="#"><img
									src="resources/page/images/${o.product.image }"></a>
							</div>
							<div class="item-main item-main-mini">
								<div>
									<div class="text title item-title">${o.product.name}</div>
									<p class="text desc"></p>
									<p class="text desc bold"></p>
								</div>
							</div>
							<div class="item-quantity">
								<span><span class="text desc info multiply">Số
										lượng:</span><span class="text">&nbsp;${o.quality}</span></span>
							</div>
							<div class="item-status item-capsule">
								<p class="capsule"
									data-spm-anchor-id="a2o4n.order_list.0.i2.38e8705bOhh4u7">Đã
									thanh toán</p>
							</div>
							<div class="item-info">
								<span class="item-price">${o.price}</span>
							</div>

							<div class="clear"></div>
						</div>

					</c:forEach>
					<div class="order-total">
						<div class="order-total-payment">
							<img src="resources/page/images/salary.svg" alt=""
								class="icon-payment"> <span class="title-payment">Tổng
								số tiền: </span> <span class="total-payment">${sum}</span>
						</div>
						<div class="order-btn">
							<div class="btn-buy-again">
								<a class="btn-item btn-main" href="page/home.htm">Trở vê trang chủ</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<%@include file="/WEB-INF/views/page/footer.jsp"%>
	</div>
</body>
</html>