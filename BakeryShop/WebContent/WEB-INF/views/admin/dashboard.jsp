<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý bakeryshop</title>
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
						<p class="right__desc">Bảng điều khiển</p>
						<div class="right__cards">
							<a class="right__card" href="admin/view_product.htm">
								<div class="right__cardTitle">Sản Phẩm</div>
								<div class="right__cardNumber">${totalProd }</div>
								<div class="right__cardDesc">
									Xem Chi Tiết <img
										src="resources/admin/dashboard/assets/arrow-right.svg" alt="">
								</div>
							</a> <a class="right__card" href="admin/view_customers.htm">
								<div class="right__cardTitle">Khách Hàng</div>
								<div class="right__cardNumber">${totalCus }</div>
								<div class="right__cardDesc">
									Xem Chi Tiết <img
										src="resources/admin/dashboard/assets/arrow-right.svg" alt="">
								</div>
							</a> <a class="right__card" href="admin/view_admins.htm">
								<div class="right__cardTitle">Quản trị viên</div>
								<div class="right__cardNumber">${ totalAd}</div>
								<div class="right__cardDesc">
									Xem Chi Tiết <img
										src="resources/admin/dashboard/assets/arrow-right.svg" alt="">
								</div>
							</a> <a class="right__card" href="admin/view_orders.htm">
								<div class="right__cardTitle">Đơn Hàng</div>
								<div class="right__cardNumber">${totalOrder}</div>
								<div class="right__cardDesc">
									Xem Chi Tiết <img
										src="resources/admin/dashboard/assets/arrow-right.svg" alt="">
								</div>
							</a>
						</div>
						<div class="right__table">
							<p class="right__tableTitle">Đơn hàng mới</p>
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>STT</th>
											<th style="text-align: left;">Email</th>
											<th>Số Hoá Đơn</th>
											<th>Số Lượng</th>
											<th>Ngày Đặt</th>
											<th>Trạng Thái</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="o" items="${listOrderNew}" varStatus="status"
											begin="0" end="4">
											<tr>
												<td data-label="STT">${status.count}</td>
												<td data-label="Email" style="text-align: left;">${o[0]}</td>
												<td data-label="Số Hoá Đơn">${o[1]}</td>
												<td data-label="ID Sản Phẩm">${o[2]}</td>
												<td data-label="Ngày đặt"><fmt:formatDate
														pattern="dd-MM-yyyy" value="${o[3]}" /></td>
												<c:choose>

													<c:when test="${o[4] == 1}">
														<td data-label="Trạng Thái">Đã Thanh Toán</td>

													</c:when>

													<c:when test="${o[4] == 2}">
														<td data-label="Trạng Thái">Đang Chờ Xử Lý</td>

													</c:when>

													<c:otherwise>
														<td data-label="Trạng Thái">Đã Hủy</td>

													</c:otherwise>
												</c:choose>

											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
							<a href="admin/view_orders.htm" class="right__tableMore"><p>Xem
									tất cả các đơn đặt hàng</p> <img
								src="resources/admin/dashboard/assets/arrow-right-black.svg"
								alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>