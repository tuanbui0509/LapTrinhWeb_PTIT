<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<body>
	<style>
	
	.iconLogo{
		border-radius: 100%;
	}
	.logo-top{
		display: flex!important;
		    width: 80px!important;
    		height: 80px!important;
    		margin: 10px 0;
	}
<!--
strong {
	margin-right: 5px;
}

.sticky {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
}



.navUser {
	margin: 0;
	padding: 0 0 0 20px;
}

.info_user {
	display: flex;
	justify-content: center;
	align-items: center;
}

.name_user{

}
.info_user .img_user{
	width: 35px!important;
	height:35px!important;
	display: block!important;
	padding: 0!important;
	border-radius:50%!important;
}

.info_user .img_user .img_atatar {
	width: 100%;
	max-height:100%;
	border-radius:100%!important;
}
.navUser>li {
	float: left;
	margin-right: 15px;
}

.navUser>li>a {
	text-transform: capitalize;
}

.navUser li {
	position: relative;
	list-style: none;
}

.navUser li a {
	padding: 10px;
	line-height: 20px;
	display: flex;
}

.navUser .sub-menuUser {
	display: none;
	position: absolute;
	top: 0;
	left: 100%;
	width: 200px;
	padding: 5px 10px;
	background-color: rgba(74, 29, 34, 0.9);
	z-index: 1000;
}

.navUser li:hover>.sub-menuUser {
	display: block;
}

.navUser>li>.sub-menuUser {
	top: 40px;
	left: 0;
}
-->
</style>

	<!-- header -->
	<div class="top" id="header">
		<!-- top -->
		<div class="container">
			<div class="header_top">
				<ul class="top-support">
					<li><a class="logo-top" href="page/home.htm"><img class="iconLogo"
							class="img-responsive" alt=""
							src="resources/page/image/logo1.PNG"></a></li>
					<li></li>
					<li>

						<div class="srch-form">
							<form class="side-search">
								<div class="input-group">
									<input type="text" class="form-control search-wid"
										placeholder="<s:message code="global.menu.search" />"
										aria-describedby="basic-addon2"> <a href=""
										class="input-group-addon btn-side-serach" id="basic-addon2"><i
										class="fas fa-search"></i></a>
								</div>
							</form>
						</div>
					</li>
				</ul>

				<div class="top-control">

					<!-- 					<a href=""><i class="fas fa-phone"></i>Hotline: 0936557991</a>  -->
					<a href="page/cart.htm"><i class="fas fa-shopping-bag"></i> <strong>${totalQuality}</strong>
						<s:message code="global.menu.product" /></a>


					<c:if test="${user.email == null }">
						<a href="user/login.htm"> <i class="fas fa-user"></i> <s:message
								code="global.menu.login" /></a>
					</c:if>
					<c:if test="${user.email != null }">
						<!-- <i class="fas fa-user iconUser"></i> -->

						<%-- <a href="" title="Nhấn vào xem thông tin "><i
							class="fas fa-user"></i> Chào, ${user.fullname }</a>
 --%>
						<ul class="navUser">
							<li>
								<div class="info_user">
								<a href="" class="img_user"><img alt="" src="resources/page/images/${user.image }" class="img_atatar"></a>
								<a href="" class="name_user"> <s:message code="global.menu.sayHi" /> ,${user.fullname }</a>
									
								</div>

								<ul class="sub-menuUser">
									<li><a href="page/info_user.htm"><i
											class="fas fa-user"></i><s:message code="global.menu.infoAcc" /></a></li>
									<li><a href="page/purchase/${user.phone}.htm"><i class="fas fa-file-invoice-dollar"></i><s:message code="global.menu.invoice" /></a>
									<li><a href="page/change_password.htm"><i class="fa fa-unlock-alt" aria-hidden="true"></i><s:message code="global.menu.changePassword" /></a></li>
									<li><a href="page/logoff.htm"> <i class="fas fa-sign-out-alt"></i> <s:message code="global.menu.logoff" /></a></li>
								</ul>
							</li>
						</ul>

					</c:if>


					<div class="chage_language">
						<a href="#" class="language" data-lang="en"> <img alt=""
							src="resources/page/images/english.png" class="img-responsive"></a>
						<a href="#" class="language" data-lang="vi"> <img alt=""
							src="resources/page/images/vn.png" class="img-responsive"></a>
					</div>



				</div>

			</div>

			<div class="clearfix"></div>

		</div>
	</div>

	<!-- top logo -->

	<!-- navbar -->
	<div class="nav">

		<div class="container">
			<nav>
				<a href="javascript:void(0);" class="mobile-menu-trigger"><i
					class="fas fa-bars"></i></a>
				<ul class="menu menu-bar">
					<li><a href="page/home.htm" class="menu-link menu-bar-link"><s:message
								code="global.menu.home" /> </a></li>

					<li><a href="javascript:void(0);"
						class="menu-link menu-bar-link" aria-haspopup="true"><s:message
								code="global.menu.cake" /></a>
						<ul class="mega-menu mega-menu--multiLevel">
							<li><a href="javascript:void(0);"
								class="menu-link mega-menu-link" aria-haspopup="true"><s:message
										code="global.menu.SocolaCake" /></a>
								<ul class="menu menu-list">
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.cake1" /></a></li>
									<li><a href="javascript:void(0);"
										class="menu-link menu-list-link" aria-haspopup="true"><s:message
												code="global.menu.cake2" /></a>
										<ul class="menu menu-list">
											<li><a href="page/home.htm"
												class="menu-link menu-list-link"><s:message
														code="global.menu.cake5" /></a></li>
											<li><a href="page/home.htm"
												class="menu-link menu-list-link"><s:message
														code="global.menu.cake4" /></a></li>
										</ul></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.cake3" /></a></li>
								</ul></li>
							<li><a href="javascript:void(0);"
								class="menu-link mega-menu-link" aria-haspopup="true"><s:message
										code="global.menu.boyCake" /></a>
								<ul class="menu menu-list">
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.cake6" /></a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.cake7" /></a></li>
								</ul></li>
							<li><a href="javascript:void(0);"
								class="menu-link mega-menu-link" aria-haspopup="true"><s:message
										code="global.menu.girlCake" /></a>
								<ul class="menu menu-list">
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.cake8" /></a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.cake9" /></a></li>
								</ul></li>
							<li><a href="page/home.htm" class="menu-link mega-menu-link"><s:message
										code="global.menu.Corncake" /></a></li>
							<li class="mobile-menu-back-item"><a
								href="javascript:void(0);"
								class="menu-link mobile-menu-back-link">Back</a></li>
						</ul></li>

					<li><a href="javascript:void(0);"
						class="menu-link menu-bar-link" aria-haspopup="true"><s:message
								code="global.menu.DuluxeCakes" /></a>
						<ul class="mega-menu mega-menu--flat">
							<li><a href="page/home.htm"
								class="menu-link mega-menu-link mega-menu-header"><s:message
										code="global.menu.PumpCreamCake" /></a>
								<ul class="menu menu-list">
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.DarkPumpCreamCake" /></a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.WhitePumpCreamCake" /></a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.SpringPumpCreamCake" /></a></li>
								</ul></li>
							<li><a href="page/home.htm"
								class="menu-link mega-menu-link mega-menu-header"><s:message
										code="global.menu.ValentineCake" /></a>
								<ul class="menu menu-list">
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.GreenCake" /></a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.RedCake" /></a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.HappyCake" /></a></li>
								</ul></li>
							<li><a href="page/home.htm"
								class="menu-link mega-menu-link mega-menu-header"><s:message
										code="global.menu.VegetablesCake" /></a>
								<ul class="menu menu-list">
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.FreshVegetablesCake" /></a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.GreenVegetablesCake" /></a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"><s:message
												code="global.menu.CoconutVegetablesCake" /></a></li>
								</ul></li>
							<li class="mobile-menu-back-item"><a
								href="javascript:void(0);"
								class="menu-link mobile-menu-back-link">Back</a></li>
						</ul></li>

					<li><a href="javascript:void(0);"
						class="menu-link menu-bar-link" aria-haspopup="true"><s:message
								code="global.menu.RequireCakes" /></a>
						<ul class="mega-menu mega-menu--flat">
							<li><a href="#"
								class="menu-link mega-menu-link mega-menu-header"><s:message
										code="global.menu.weddingCake" /></a>
								<ul class="menu menu-list">
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"> <s:message
												code="global.menu.weddingCake2Floor" /><br />

									</a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"> <s:message
												code="global.menu.weddingCake3Floor" /><br />

									</a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"> <s:message
												code="global.menu.weddingCake4Floor" /><br />

									</a></li>
								</ul></li>
							<li><a href="#"
								class="menu-link mega-menu-link mega-menu-header"><s:message
										code="global.menu.DifferenceCake" /></a>
								<ul class="menu menu-list">
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"> <s:message
												code="global.menu.PrintImageCake" /><br />

									</a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"> <s:message
												code="global.menu.EventCake" /><br />

									</a></li>
									<li><a href="page/home.htm"
										class="menu-link menu-list-link"> <s:message
												code="global.menu.AccessoriesCake" /><br />

									</a></li>
								</ul></li>



							<li class="mobile-menu-back-item"><a
								href="javascript:void(0);"
								class="menu-link mobile-menu-back-link">Back</a></li>
						</ul></li>

					<li><a href="page/news.htm" class="menu-link menu-bar-link"><s:message
								code="global.menu.news" /></a></li>
					<li><a href="page/voucher.htm" class="menu-link menu-bar-link"><s:message
								code="global.menu.voucher" /></a></li>
					<li class="mobile-menu-header"><a href="page/home.htm"
						class=""> <span>Home</span>
					</a> <i class="fas fa-times" class="iconTimes"></i></li>
				</ul>
			</nav>

		</div>
	</div>


	<script type="text/javascript">
		window.onscroll = function() {
			myFunction()
		};
		var header = document.getElementById("header");
		var sticky = header.offsetTop;
		console.log(sticky);
		console.log(window.pageYOffset)
		function myFunction() {
			if (window.pageYOffset > sticky) {
				header.classList.add("sticky");
			} else {
				header.classList.remove("sticky");
			}
		}
	</script>
</body>