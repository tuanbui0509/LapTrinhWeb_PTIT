<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Khuyến mãi</title>
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
					<img src="resources/page/images/voucher1.jpg" alt="sample101" />
					<figcaption>
						<h3>Khuyễn mãi lớn cuối năm</h3>
						<p>✔️ #Mua_2_tặng_1 ✔️ #Giảm 1️⃣0️⃣ % các sản phẩm do Ngọc Tuấn𝑩𝒂𝒌𝒆𝒓𝒚 sản xuất ( áp dụng từ ngày 16/07 đến ngày
							31/07) ✔️ #Giờ_vàng #thức_bánh_miễn_phí từ 16h - 18h ( mang theo
							tờ rơi để nhận ngay ưu đãi )</p>
						<footer>
							<div class="date">October 02, 2014</div>

						</footer>
					</figcaption>
					<a href="#"></a>
				</figure>

				<figure class="news">
					<div class="image">
						<img src=resources/page/images/voucher2.jpg " alt="sample107" />
					</div>
					<figcaption>
						<h3>New Zealand, Mỹ, Pháp, Bỉ với hương vị thơm ngon đặc
							trưng của các loại kem, bơ, sữa, phô mai, hạt hạnh nhân,
							chocolate…</h3>
						<p>💯 Là một trong những thương hiệu Bánh ngọt Pháp xuất hiện
							đầu tiên ở HCM, Ngọc Tuấn 𝑩𝒂𝒌𝒆𝒓𝒚 từ lâu đã trở thành điểm
							đến của những người yêu thích hương vị bánh Pháp.</p>
						<footer>
							<div class="date">January 11, 2020</div>

						</footer>
					</figcaption>
					<a href="https://google.com"></a>
				</figure>

				<figure class="news">
					<div class="image">
						<img src="resources/page/images/voucher3.jpg" alt="sample107" />
					</div>
					<figcaption>
						<h3>Remind me to thank John for a lovely weekend.</h3>
						<p>Ngọc Tuấn Bakery mong muốn được hỗ trợ bạn trong quá trình
							nâng cao sức khoẻ thông qua việc ăn uống lành mạnh và đảm bảo vệ
							sinh an toàn tốt nhất. 💥 Còn bây giờ thì #đặt_hàng_online với
							chúng mình qua #fanpage, #hotline, #website của nhà Anh Hòa
							Bakery ngay thôi nào vừa #an_toàn_trong_mùa_dịch, vừa có
							#bánh_ngon thưởng thức, lại còn được #Freeship nữa thì còn gì
							bằng !</p>
						<footer>
							<div class="date">January 31, 2036</div>

						</footer>
					</figcaption>
					<a href="https://google.com"></a>
				</figure>


				<figure class="news">
					<img src="resources/page/images/voucher4.jpg" alt="sample101" />
					<figcaption>
						<h3>🎉️🎉 Không có buổi tiệc sinh nhật nào trọn vẹn nếu thiếu
							đi chiếc bánh sinh nhật ! 🎂</h3>
						<p>🎂 Bánh sinh nhật kết tinh từ những điều ngọt ngào nên
							trong dịp sinh nhật sẽ là một điều rất ý nghĩa và đem đến niềm
							vui cho nhiều người. Nó không chỉ thể hiện sự quan tâm, tình yêu
							thương mà còn kèm theo đó là những lời cầu chúc tốt lành nhất
							dành cho nhau trong dịp đặc biệt..</p>
						<footer>
							<div class="date">October 02, 2014</div>

						</footer>
					</figcaption>
					<a href="#"></a>
				</figure>

				<figure class="news">
					<div class="image">
						<img src=resources/page/images/voucher5.jpg " alt="sample107" />
					</div>
					<figcaption>
						<h3>BÁNH NGON MÊ LY - TẾT THIẾU NHI...</h3>
						<p>💥 Ngày Quốc tế thiếu nhi sắp đến, các bố mẹ hẳn đang rất
							băn khoăn vì không biết chọn quà như thế nào để thể hiện sự yêu
							thương dành cho các bé ?🎉🎉🎉 Đôi khi những món quà đắ...</p>
						<footer>
							<div class="date">January 11, 2020</div>

						</footer>
					</figcaption>
					<a href="https://google.com"></a>
				</figure>

				<figure class="news">
					<div class="image">
						<img src="resources/page/images/voucher6.jpg" alt="sample107" />
					</div>
					<figcaption>
						<h3>Free Ship Ngay</h3>
						<p>#Ngọc Tuấn_BAKERY #FREESHIP_NGAY -
							#CHUNG_TAY_CHỐNG_DỊCH.️💥 Để bạn vẫn có thể thưởng thức được
							những chiếc bánh kem nhà Anh Hòa Bakery trong thời điểm ảnh hưởng
							vì dịch bệnh, chú...</p>
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
l>
