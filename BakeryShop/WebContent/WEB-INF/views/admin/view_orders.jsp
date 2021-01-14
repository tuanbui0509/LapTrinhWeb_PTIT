<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view Orders</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="resources/admin/dashboard/css/main.css">

</head>
<body>
	<style>
a.invoiceDetail {
	width: 40px;
	height: auto;
	display: block;
	margin: auto;
}

a.invoiceDetail img {
	max-width: 100%;
	height: auto;
}
</style>

	<div class="wrapper">
		<div class="container">
			<div class="dashboard">
				<%@include file="/WEB-INF/views/admin/left-dashboard.jsp"%>
				<div class="right">
					<div class="right__content">
						<div class="right__title">Bảng điều khiển</div>
						<p class="right__desc">Xem đơn hàng</p>
						<span id="message.errors">${message}</span>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>STT</th>
											<th>Số hoá đơn</th>
											<th>Tên khách hàng</th>
											<th>Số điện thoại</th>
											<th>Ngày đặt</th>
											<th>Thanh toán</th>
											<th>Trạng Thái</th>
											<th>Chi tiết đơn hàng</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="o" items="${orders }" varStatus="status">
											<tr>
												<td data-label="STT">${status.count }</td>
												<td data-label="Số Hoá Đơn">${o.id_order}</td>
												<td data-label="Tên khách hàng">${o.emails.fullname}</td>
												<td data-label="Số điện thoại">${o.emails.phone}</td>
												<td data-label="Ngày đặt"><fmt:formatDate
														pattern="dd-MM-yyyy" value="${o.order_date}" /></td>

												<c:choose>
													<c:when test="${o.status == 1}">
														<td data-label="Trạng Thái">Đã Thanh Toán</td>
														<td data-label="Thanh toán" class="right__confirm"><p
																class="right__iconTable">
																<img
																	src="resources/admin/dashboard/assets/icon-check.svg"
																	alt="">
															</p></td>
													</c:when>

													<c:when test="${o.status == 2}">
														<td data-label="Trạng Thái">Đang Chờ Xử Lý</td>
														<td data-label="Thanh toán" class="right__confirm"><a
															href="admin/confirm_order/${o.emails.email}/${o.id_order}/1.htm"
															class="right__iconTable"><img
																src="resources/admin/dashboard/assets/icon-check.svg"
																alt=""></a> <a
															href="admin/confirm_order/${o.emails.email}/${o.id_order }/0.htm"
															class="right__iconTable"><img
																src="resources/admin/dashboard/assets/icon-x.svg" alt=""></a>
														</td>
													</c:when>

													<c:otherwise>
														<td data-label="Trạng Thái">Đã Hủy</td>

														<td data-label="Thanh toán" class="right__confirm">
															<p class="right__iconTable">
																<img src="resources/admin/dashboard/assets/icon-x.svg"
																	alt="">
															</p>
														</td>
													</c:otherwise>
												</c:choose>

												<td><a
													href="admin/view_detail_order/${o.id_order }.htm"
													class="invoiceDetail"> <img
														src="resources/admin/dashboard/assets/invoice.svg" alt="">
												</a></td>



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