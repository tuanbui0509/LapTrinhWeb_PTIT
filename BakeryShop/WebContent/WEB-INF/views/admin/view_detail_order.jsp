<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view Detail Orders</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet" href="resources/admin/dashboard/css/main.css">

</head>
<body>

	<style>
<!--
.sumOrder {
	display: flex;
	align-items: center;
	justify-content: flex-end;
	margin: 10px;
}
.sumOrder h3{
	margin-right: 15px;
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
						<p class="right__desc">Xem chi tiết đơn hàng</p>
						<div class="right__table">
							<div class="right__tableWrapper">
								<table>
									<thead>
										<tr>
											<th>STT</th>
											<th>ID Detail</th>
											<th>Tên sản phẩm</th>
											<th>Số lượng</th>
											<th>Đơn giá</th>
											<th>Kích cỡ</th>
											<th>Tổng tiền</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach var="o" items="${detailOrders }" varStatus="status">
											<tr>
												<td data-label="STT">${status.count }</td>
												<td data-label="ID Detail">${o.id_detail}</td>
												<td data-label="Tên sản phẩm">${o.product.name}</td>
												<td data-label="Số Lượng">${o.quality}</td>
												<td data-label="Đơn giá">${o.price}</td>
												<td data-label="Kích cở">${o.product.size}</td>
												<td data-label="Tổng">${o.quality*o.price}₫</td>
											</tr>
										</c:forEach>


									</tbody>
								</table>


							</div>
						</div>
						<div class="sumOrder">
							<h3>Thành tiền: </h3>
							<span>${sum}₫</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>