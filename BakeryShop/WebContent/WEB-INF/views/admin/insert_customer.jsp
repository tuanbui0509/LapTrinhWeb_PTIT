<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Customer</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="resources/admin/dashboard/css/main.css">

<%-- <base href="${pageContext.servletContext.contextPath}/"> --%>
</head>
<body>
	<style>
<!--
*[id$=errors] {
	color: red;
	font-style: italic;
	display: block;
	margin: 5px;
	font-size: 14px;
	flex: 1;
	text-align: center;
}

-->
img.img-edit_product {
	width: 150px;
	height: auto;
	margin: 20px auto;
}

.radioGender {
	display: flex;
	align-items: center;
	justify-content: space-around;
}

.radioGender input {
	height: 20px;
	width: 20px;
	border: solid 1px #DAE1F5;
	border-radius: 5px;
	padding: 0 20px;
	transition: all 0.2s ease;
	display: block;
	margin-right: 10px;
}

.radioGender label{
	margin: 0;
}
.flexGender{
	display: flex;
	align-items: center;
	justify-content: center;
}
</style>
	<div class="wrapper">
		<div class="container">
			<div class="dashboard">
				<%@include file="/WEB-INF/views/admin/left-dashboard.jsp"%>
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Thêm Khách Hàng</p>
						<div class="right__formWrapper">
							<form:form action="admin/insert_customer.htm"
								modelAttribute="cus" enctype="multipart/form-data" method="post">
								<div class="right__inputWrapper">
									<label for="title">Tên Khách Hàng</label>
									<form:input path="fullname" type="text"
										placeholder="Tên Khách hàng" />
								</div>
								<form:errors path="fullname" />

								<div class="right__inputWrapper">
									<label for="title">Email</label>
									<form:input path="email" type="text" placeholder="Email" />
								</div>
								<form:errors path="email" />

								<div class="right__inputWrapper">
									<label for="title">Tên Tài Khoản</label>
									<form:input path="user_name" type="text"
										placeholder="Tên Tài Khoản" />
								</div>
								<form:errors path="user_name" />

								<div class="right__inputWrapper">
									<label for="title">Mật khẩu</label>
									<form:input path="password" type="password" placeholder="Mật khẩu" />
								</div>
								<form:errors path="password" />

								<div class="right__inputWrapper">
									<label for="image">Hình ảnh</label> <img alt=""
										src="resources/page/images/${cus.image }"
										class="img-edit_product">
									<form:input path="image" type="file" />
								</div>
								<form:errors path="image" />
								<div class="right__inputWrapper">
									<label for="title">Ngày sinh</label>
									<form:input path="birthday" id="today2" type="date" />
								</div>
								<form:errors path="birthday" />

								<div class="right__inputWrapper">
									<label for="title">Giới Tính</label>
									<%-- 									<form:select path="gender" items="${genders}" /> --%>
									<div class="radioGender">
										<div class="flexGender">
											<form:radiobutton path="gender" value="True" id="radio_1" />
											<label for="radio_1" class="radio"><span>Male</span></label>
										</div>
										<div class="flexGender">
											<form:radiobutton path="gender" value="False" id="radio_2" />
											<label for="radio_2" class="radio"><span>Female</span></label>
										</div>
									</div>
								</div>
								<form:errors path="gender" />

								<div class="right__inputWrapper">
									<label for="title">Số điện thoại</label>
									<form:input path="phone" type="text"
										placeholder="### ### ####" />
								</div>
								<form:errors path="phone" />

								<div class="right__inputWrapper">
									<label for="title">Địa chỉ</label>
									<form:input path="Address" type="text"
										placeholder="Số địa chỉ khách hàng" />
								</div>
								<form:errors path="Address" />

								<form:button class="btn">Thêm khách hàng</form:button>
							</form:form>
							<span id="message.errors">${message}</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var today = new Date().toISOString().substr(0, 10);
		document.querySelector("#today").value = today;

		document.querySelector("#today2").valueAsDate = new Date();
	</script>
</body>
</html>