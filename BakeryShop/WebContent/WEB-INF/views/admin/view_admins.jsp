<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view Admins</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="resources/admin/dashboard/css/main.css">

</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="dashboard">
				<%@include file="/WEB-INF/views/admin/left-dashboard.jsp"%>
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Xem admins</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>STT</th>
											<th>Hình ảnh</th>
											<th>Tên</th>
											<th>Ngày sinh</th>
											<th>Email</th>
											<th>Số điện thoại</th>
											<th>Sửa</th>
											<th>Xoá</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="a" items="${listAdmin}" varStatus="status">
											<tr>
												<td data-label="STT">${status.count }</td>

												<td data-label="Hình ảnh" style="text-align: center;"><img
													style="width: 50px; height: 50px; border-radius: 100%; object-fit: cover;"
													src="resources/page/images/${a.image }" alt=""></td>
												<td data-label="Tên">${a.fullname }</td>
												<td data-label="Tên"><fmt:formatDate
														pattern="dd-MM-yyyy" value="${a.birthday}" /></td>

												<td data-label="Email">${a.email }</td>
												<td data-label="Tên">${a.phone }</td>
												<td data-label="Sửa" class="right__iconTable"><a
													href="admin/edit_admin/${a.email}.htm"><img
														src="resources/admin/dashboard/assets/icon-edit.svg"
														alt=""></a></td>

												<td data-label="Xoá" class="right__iconTable"><a
													href="admin/delete_admin/${a.email}.htm"><img
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