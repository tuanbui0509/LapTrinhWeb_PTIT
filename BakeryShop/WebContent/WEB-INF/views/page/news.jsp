<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tin tức</title>
<base href="${pageContext.servletContext.contextPath}/">

<%@include file="/WEB-INF/views/page/link.jsp"%>
</head>
<body>

	<style>
<!--
@import
	url('https://fonts.googleapis.com/css2?family=Barlow:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=Cabin:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap')
	;

/* Pen Display */
body {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-flow: wrap;
	margin: 0;
	height: 100%;
}

.All-news {
	display: flex;
	flex-wrap: wrap;
}
/* start */
.news {
	position: relative;
	overflow: hidden;
	margin: 20px 10px;
	max-width: 350px;
	width: 100%;
	background-color: #ffffff;
	color: black;
	text-align: left;
	font-size: 16px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
	font-family: Barlow;
}

.news img {
	max-width: 100%;
	vertical-align: top;
	position: relative;
	-webkit-transition: all 0.3s ease;
	transition: all 0.3s ease;
}

.news:hover img, .news.hover img {
	-webkit-transform: scale(1.15);
	transform: scale(1.15);
}

.news figcaption {
	padding: 10%;
	padding-bottom: 73px;
	background-color: #ffffff;
}

.news h3 {
	font-family: 'Cabin';
	text-transform: none;
	font-size: 18px;
	font-weight: 600;
	margin: 3px 0;
}

.news footer {
	border-top: 1px solid rgba(0, 0, 0, 0.065);
	padding: 0 20px;
	font-size: 13px;
	line-height: 50px;
	text-align: left;
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
}

.news a {
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	position: absolute;
	z-index: 1;
}
-->
</style>
	<div id="wrapper" class="homepage-1">
		<%@include file="/WEB-INF/views/page/header.jsp"%>
		<div class="container">

			<div class="All-news">

				<figure class="news">
					<img src="resources/page/images/1.png" alt="sample101" />
					<figcaption>
						<h3>NHÀ BÁNH GỪNG TƯNG BỪNG ĐÓN GIÁNG SINH.</h3>
						<p>🎅 Nhắc đến Giáng Sinh và năm mới thì không thể nào không
							kể đến nhà bánh gừng nhỏ nhỏ xinh xinh rồi đúng không nhỉ? Cũng
							như bánh khúc cây, #nhà_gừng là một trong những món bá....</p>
						<footer>
							<div class="date">October 02, 2014</div>

						</footer>
					</figcaption>
					<a href="#"></a>
				</figure>

				<figure class="news">
					<div class="image">
						<img src=resources/page/images/2.png " alt="sample107" />
					</div>
					<figcaption>
						<h3>ĐẶT BÁNH NGON – ĐÓN GIÁNG SINH VỀ</h3>
						<p>“Ông già Noel” 𝐀𝐧𝐡 𝐇𝐨̀𝐚 𝐁𝐚𝐤𝐞𝐫𝐲 với những món quà ngọt ngào và hấp dẫn trong bộ sưu tập mới đã sẵn sàng cùng tất cả mọi người chào đón một mùa 𝐆𝐢𝐚́𝐧𝐠 𝐬𝐢𝐧𝐡 𝐚...</p>
						<footer>
							<div class="date">January 11, 2020</div>

						</footer>
					</figcaption>
					<a href="https://google.com"></a>
				</figure>

				<figure class="news">
					<div class="image">
						<img src="resources/page/images/3.png" alt="sample107" />
					</div>
					<figcaption>
						<h3>LỊCH SỬ VÀ Ý NGHĨA NGÀY NHÀ GIÁO...</h3>
						<p>Lịch sử của ngày nhà giáo Việt Nam bắt đầu từ một tổ chức quốc tế của các nhà giáo dục tiến bộ thành lập ở Pari (Pháp) vào hồi tháng 7 năm 1946 có tên là F.I.S.E (Fédertion Inte...!</p>
						<footer>
							<div class="date">January 31, 2036</div>

						</footer>
					</figcaption>
					<a href="https://google.com"></a>
				</figure>


				<figure class="news">
					<img src="resources/page/images/4.png" alt="sample101" />
					<figcaption>
						<h3>BẠN ĐÃ BIẾT NHỮNG GÌ VỀ LỄ HALLOWEEN?.</h3>
						<p>Halloween là một ngày lễ hội truyền thống được tổ chức vào đêm ngày 31 tháng 10 hàng năm. Đặc biệt trong ngày này những đứa trẻ sẽ hoá trang trong những bộ trang phục quái lạ đi...</p>
						<footer>
							<div class="date">October 02, 2014</div>

						</footer>
					</figcaption>
					<a href="#"></a>
				</figure>

				<figure class="news">
					<div class="image">
						<img src=resources/page/images/5.png " alt="sample107" />
					</div>
					<figcaption>
						<h3>CHÚC MỪNG NGÀY PHỤ NỮ VIỆT NAM 20/10</h3>
						<p>Ngày Phụ nữ Việt Nam là một ngày lễ kỷ niệm nhằm tôn vinh phụ nữ Việt Nam, được tổ chức vào ngày 20 tháng 10 hàng năm ở Việt Nam. Vào dịp này, phụ nữ Việt Nam, cũng như phụ nữ ...</p>
						<footer>
							<div class="date">January 11, 2020</div>

						</footer>
					</figcaption>
					<a href="https://google.com"></a>
				</figure>

				<figure class="news">
					<div class="image">
						<img src="resources/page/images/6.png" alt="sample107" />
					</div>
					<figcaption>
						<h3>TỔNG QUAN VỀ BÁNH MÌ, BÁNH NGỌT.</h3>
						<p>Điều quan trọng khi bắt đầu học làm bánh là bạn cần nắm rõ những kiến thức cơ bản về cách phân biệt từng loại bánh mì và bánh ngọt, phương pháp làm bánh cơ bản, phương pháp lên ...</p>
						<footer>
							<div class="date">January 31, 2036</div>

						</footer>
					</figcaption>
					<a href="https://google.com"></a>
				</figure>
			</div>
		</div>
		<%@include file="/WEB-INF/views/page/footer.jsp"%>
	</div>
</body>
</html>