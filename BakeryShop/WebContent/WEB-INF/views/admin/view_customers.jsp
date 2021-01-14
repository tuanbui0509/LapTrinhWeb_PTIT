<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view product</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="resources/admin/dashboard/css/main.css">
</head>
<body>
	<style>
<!--
*[id$=errors] {
	color: red;
	font-style: italic;
	display: block;
	margin: 5px;
	text-align: center;
	font-size: 16px!important;
	flex: 1;
	font-size: 12px;
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
						<p class="right__desc">Xem sản phẩm</p>
						<span id="message.errors">${message}</span>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>STT</th>
											<th style="text-align: center;">Hình ảnh</th>
											<th>Tên</th>
											<th>Email</th>
											<th>Số điện thoại</th>
											<th>Ngày sinh</th>
											<th>Giới tính</th>
											<th>Sửa</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="u" items="${listcus }" varStatus="status">
											<tr>
												<td data-label="STT">${status.count }</td>
												<td data-label="Hình ảnh" style="text-align: center;"><img
													style="width: 50px; height: 50px; border-radius: 100%; object-fit: cover;"
													src="resources/page/images/${u.image }" alt=""></td>
												<td data-label="Tên">${u.fullname }</td>
												<td data-label="Email">${u.email }</td>
												<td data-label="phone">${u.phone }</td>
												<td data-label="Tên"><fmt:formatDate
														pattern="dd-MM-yyyy" value="${u.birthday}" /></td>
												<c:choose>
													<c:when test="${!u.gender}">
										            <td data-label="Giới tính">Nữ</td>
										         </c:when>
										         <c:otherwise>
										           <td data-label="Giới tính">Nam</td>
										         </c:otherwise>
												</c:choose>
												
												<td data-label="Sửa" class="right__iconTable"><a
													href="admin/edit_cus/${u.email}.htm"><img
														src="resources/admin/dashboard/assets/icon-edit.svg"
														alt=""></a></td>
												<td data-label="Xoá" class="right__iconTable"><a
													href="admin/delete_cus/${u.email}.htm"><img
														src="resources/admin/dashboard/assets/icon-trash-black.svg"
														alt=""></a></td>
											</tr>

										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>