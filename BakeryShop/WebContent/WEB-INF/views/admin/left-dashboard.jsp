<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body>
	<div class="left">
		<span class="left__icon"> <span></span> <span></span> <span></span>
		</span>
		<div class="left__content">
			<div class="left__logo">LOGO</div>
			<div class="left__profile">
				<div class="left__image">
					<img src="resources/page/images/${admin.image}"
						alt="${admin.image}">
				</div>
				<p class="left__name">${admin.fullname}</p>
				<p>${admin.email}</p>
			</div>
			<ul class="left__menu">
				<li class="left__menuItem"><a href="admin/dashboard.htm"
					class="left__title"><img
						src="resources/admin/dashboard/assets/icon-dashboard.svg" alt="">Dashboard
				</a></li>
				<li class="left__menuItem">
					<div class="left__title">
						<img src="resources/admin/dashboard/assets/icon-tag.svg" alt="">Sản
						Phẩm<img class="left__iconDown"
							src="resources/admin/dashboard/assets/arrow-down.svg" alt="">
					</div>
					<div class="left__text">
						<a class="left__link" href="admin/insert_product.htm">Thêm Sản
							Phẩm</a> <a class="left__link" href="admin/view_product.htm">Xem
							Sản Phẩm</a>
					</div>
				</li>
				<li class="left__menuItem">
					<div class="left__title">
						<img src="resources/admin/dashboard/assets/icon-users.svg" alt="">Khách
						Hàng<img class="left__iconDown"
							src="resources/admin/dashboard/assets/arrow-down.svg" alt="">
					</div>
					<div class="left__text">
						<a class="left__link" href="admin/insert_customer.htm">Thêm
							Khách Hàng</a> <a class="left__link" href="admin/view_customers.htm">Xem
							Khách Hàng</a>
					</div>
				</li>



				<li class="left__menuItem">
					<div class="left__title">
						<img src="resources/admin/dashboard/assets/icon-user.svg" alt="">Admin<img
							class="left__iconDown"
							src="resources/admin/dashboard/assets/arrow-down.svg" alt="">
					</div>
					<div class="left__text">
						<a class="left__link" href="admin/insert_admin.htm">Thêm Admin</a>
						<a class="left__link" href="admin/view_admins.htm">Xem Admins</a>
					</div>
				</li>

				<li class="left__menuItem"><a href="admin/view_orders.htm"
					class="left__title"><img
						src="resources/admin/dashboard/assets/icon-book.svg" alt="">Đơn
						Đặt Hàng</a></li>
				<li class="left__menuItem"><a href="admin/logoff.htm"
					class="left__title"><img
						src="resources/admin/dashboard/assets/icon-logout.svg" alt="">Đăng
						Xuất</a></li>
			</ul>
		</div>
	</div>
	<script src="resources/admin/dashboard/js/main.js"></script>
</body>