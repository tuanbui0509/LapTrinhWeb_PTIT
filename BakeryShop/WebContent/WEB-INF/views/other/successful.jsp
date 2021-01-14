<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Successful</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,600;1,400;1,600&display=swap"
	rel="stylesheet">
</head>

<body>
	<style>
body {
	background-color: whitesmoke;
	font-family: 'Open Sans', sans-serif;
}

.top {
	height: 50vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #38E08B;
}

.buttom {
	display: block;
	text-align: center;
	margin: 10px 0;
	height: 45vh;
}

img {
	max-width: 100%;
	height: auto;
}

.thumbs_up {
	width: 150px;
}

.checked {
	width: 25px;
	margin-right: 10px;
}

p {
	font-weight: bold;
}

h3 {
	color: #38E08B;
	font-size: 30px;
	display: block;
	margin: 0px;
}

.buttom div {
	display: flex;
	justify-content: center;
	align-items: center;
}

span {
	display: block;
	margin: 0 0 40px 0;
}

a {
	text-decoration: none;
	background-color: #38E08B;
	color: white;
	padding: 15px;
	border-radius: 10px;
}

.star {
	width: 25px;
}

.btn_home{
	margin-right: 30px;
	background: #884c4c;
}
</style>

	<div class="container">
		<div class="top">
			<img
				src="${pageContext.servletContext.contextPath}/resources/page/images/thumbs-up.svg"
				class="thumbs_up" alt="">
		</div>
		<div class="buttom">
			<img
				src="${pageContext.servletContext.contextPath}/resources/page/images/star.svg"
				alt="" class="star">
			<h3>Cám ơn bạn đã đặt hàng!</h3>
			<div>
				<img
					src="${pageContext.servletContext.contextPath}/resources/page/images/checked.svg"
					alt="" class="checked">
				<p>Thanh toán thành công</p>
			</div>

			<span>Thông tin đơn hàng của bạn sẽ được gửi đến mail của bạn
				vui lòng kiểm tra mail để biết thêm chi tiết!</span>

			<div class="btn_back">
				<a href="${pageContext.servletContext.contextPath}/"
					class="btn_home">Trở về trang chủ</a> <a
					href="${pageContext.servletContext.contextPath}/page/detail_order/${invoice}.htm"
					class="btn_invoice">Chi tiết hóa đơn</a>
			</div>


		</div>
	</div>
</body>

</html>