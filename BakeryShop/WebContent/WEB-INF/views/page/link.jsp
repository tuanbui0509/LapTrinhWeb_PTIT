<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!-- fonts -->
<!-- <link
	href='http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700'
	rel='stylesheet' type='text/css'> -->

<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">

<link href='resources/page/font-awesome/css/all.css'
	rel='stylesheet' type='text/css'>

<link href='resources/page/font-awesome/css/fontawesome.css'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link href="resources/page/css/bootstrap.min.css" rel="stylesheet">

<!-- main css -->
<link href="resources/page/css/style.css" rel="stylesheet">
<link href="resources/page/css/responsive.css" rel="stylesheet">



<!-- Slider -->
<link href="resources/page/css/owl.carousel.css" rel="stylesheet">
<link href="resources/page/css/owl.theme.css" rel="stylesheet">
<link href="resources/page/css/owl.transitions.css" rel="stylesheet">

<!-- lightbox -->
<link href="resources/page/css/prettyPhoto.css" rel="stylesheet">

<script type="text/javascript" src="resources/page/js/jquery-3.4.1.min.js"></script>



<!-- wrapper -->
<script type="text/javascript">
	$(function() {
		$("a[data-lang]").click(function() {
			var lang = $(this).attr("data-lang");
			$.get("page/home.htm?language=" + lang, function() {
				location.reload();
			});
			return false;
		});
	});
</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resources/page/js/library.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="resources/page/js/bootstrap.min.js"></script>
<script src="resources/page/js/owl.carousel.min.js"></script>
<script src="resources/page/js/jquery.raty.js"></script>
<script src="resources/page/js/ui.js"></script>
<script src="resources/page/js/jquery.prettyPhoto.js"></script>
<script src="resources/page/js/jquery.selectbox-0.2.js"></script>
<script src="resources/page/js/theme-script.js"></script>
