<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert product</title>
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
</style>
	<div class="wrapper">
		<div class="container">
			<div class="dashboard">
				<%@include file="/WEB-INF/views/admin/left-dashboard.jsp"%>
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Thêm Bánh kem</p>
						<div class="right__formWrapper">
							<form:form action="admin/insert_product.htm" modelAttribute="p"
								enctype="multipart/form-data" method="post">
								<div class="right__inputWrapper">
									<label for="title">Tên bánh</label>
									<form:input path="name" type="text" placeholder="Tên bánh" />
								</div>
								<form:errors path="name" />
								<div class="right__inputWrapper">
									<label for="image">Hình ảnh</label>
									<form:input path="image" type="file" />
								</div>
								<form:errors path="image" />
								<div class="right__inputWrapper">
									<label for="title">Giá Bánh kem</label>
									<form:input path="price" type="text" placeholder="Giá Bánh kem" />
								</div>
								<form:errors path="price" />
								<div class="right__inputWrapper">
									<label for="title">Số lượng Bánh kem</label>
									<form:input path="quality" type="text"
										placeholder="Số lượng Bánh kem" />
								</div>
								<form:errors path="quality" />
								<div class="right__inputWrapper">
									<label for="title">Kiểu loại Bánh kem</label>
									<form:select path="style" items="${styles }" />
								</div>
								<form:errors path="style" />
								<div class="right__inputWrapper">
									<label for="title">Hương vị Bánh kem</label>
									<form:select path="flavour" items="${flavours }" />
								</div>
								<form:errors path="flavour" />
								<div class="right__inputWrapper">
									<label for="title">Kích thước Bánh kem</label>
									<form:select path="size" items="${sizes }" />
								</div>
								<form:errors path="size" />
								
								<form:button class="btn">Thêm bánh kem</form:button>
							</form:form>
							<span id="message.errors">${message}</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>