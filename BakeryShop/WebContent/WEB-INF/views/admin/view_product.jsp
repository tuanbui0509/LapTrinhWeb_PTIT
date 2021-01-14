<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	font-size: 16px !important;
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
											<th>Mã bánh</th>
											<th>Tên bánh</th>
											<th>Hình ảnh</th>
											<th>Giá SP</th>
											<th>Số lượng</th>
											<th>Kiểu loại</th>
											<th>Hương vị</th>
											<th>Sửa</th>
											<th>Xoá</th>
											<th>Ngưng bán</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="p" items="${pros }" varStatus="status">
											<tr>
												<td data-label="STT">${status.count }</td>
												<td data-label="Mã sản phẩm">${p.id_product}</td>
												<td data-label="Tên sản phẩm">${p.name}</td>
												<td data-label="Hình ảnh"><img
													src="resources/page/images/${p.image }" alt=""></td>
												<td data-label="Giá SP">${p.price}₫</td>
												<td data-label="Số lượng">${p.quality}</td>
												<td data-label="Kiểu loại">${p.style}</td>
												<td data-label="Hương vị">${p.flavour}</td>
												<td data-label="Sửa" class="right__iconTable"><a
													href="admin/edit_product/${ p.id_product}.htm"> <img
														src="resources/admin/dashboard/assets/icon-edit.svg"
														alt=""></a></td>
												<td data-label="Xoá" class="right__iconTable"><a
													href="admin/delete_product/${ p.id_product}.htm"><img
														src="resources/admin/dashboard/assets/icon-trash-black.svg"
														alt=""></a></td>

												<c:choose>
													<c:when test="${p.status}">
														<td class="right__iconTable"><a
															href="admin/stop_product/${ p.id_product}.htm"> <img
																id="iconStatus"
																style="width: 40px !important; height: 40px;"
																src="resources/admin/dashboard/assets/market.svg" alt=""></a></td>
													</c:when>
													<c:otherwise>
														<td class="right__iconTable"><a
															href="admin/stop_product/${ p.id_product}.htm"> <img
																id="iconStatus"
																style="width: 40px !important; height: 40px;"
																src="resources/admin/dashboard/assets/stop.svg" alt="">
														</a></td>
													</c:otherwise>
												</c:choose>
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