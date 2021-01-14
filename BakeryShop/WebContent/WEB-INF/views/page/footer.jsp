<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<body>
<style>
<!--
.iconLogo{
		border-radius: 100%;
		width: 80px!important;
		height: 80px;
	}
-->
</style>
	<div id="footer">
		<!-- Footer -->
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="text-widget">
							<div class="wid-title">Welcome to</div>
							<img class="iconLogo" style="width: 110px;" src="resources/page/image/logo1.PNG" alt="ft-logo">
							<p>
								<s:message code="global.menu.end1" />
							</p>
							<p>Hotline: 0909.700.746</p>
							
							<ul class="ft-soc clearfix">
								<li><a href=""><i class="fa fa-facebook-square"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus-square"></i></a></li>
								<li><a href=""><i class="fa fa-instagram"></i></a></li>
								<li><a href=""><i class="fa fa-pinterest"></i></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="col-md-2">
						<div class="quick-links">
							<div class="wid-title">
								<s:message code="global.menu.end2" />
							</div>
							<ul>
								<li><a href="index.html"><s:message
											code="global.menu.end3" /></a></li>
								<li><a href="#"><s:message code="global.menu.end4" /></a></li>
								<li><a href="contact.html"><s:message
											code="global.menu.end5" /></a></li>
								<li><a href="#"><s:message code="global.menu.end6" /></a></li>
								<li><a href="blog.html"><s:message
											code="global.menu.end7" /></a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-2">
						<div class="quick-links">
							<div class="wid-title">
								<s:message code="global.menu.end8" />
							</div>

							<ul>
								<li><a href="#"><s:message code="global.menu.end9" /></a></li>
								<li><a href="#"><s:message code="global.menu.end10" /></a></li>
								<li><a href="#"><s:message code="global.menu.end11" /></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-4">
						<div class="subscribe">
							<div class="wid-title">Subscribe for OFFERS & UPDATES</div>
							<p>
								<s:message code="global.menu.end14" />
							</p>
						
							<form action="page/home.htm">
								<div class="form-group">
									<input type="email" class="form-control"
										id="exampleInputEmail1" placeholder="Enter email" name = "email">
								</div>
								<button type="submit" class="btn btn-default">Subscribe
									Now</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->

</body>