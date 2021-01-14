<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bakry Shop</title>
<base href="${pageContext.servletContext.contextPath}/">
<%@include file="/WEB-INF/views/page/link.jsp"%>


<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">

<style type="text/css">
.product-title__link {
	text-transform: uppercase;
	transition: 0.5s;
	font-size: 18px;
	text-decoration: none;
}

.product--loop {
	margin-bottom: 20px;
	overflow: hidden;
	border: 1px solid #e6e6e6;
	border-radius: 10px;
	background: #fff;
}

.product--loop:hover .product-img>a>img {
	transform: scale(1.05);
	transition: 0.5s;
}

.product--loop:hover .product-title>a {
	color: #c0c906;
	text-decoration: none;
}

.product--loop .product-img {
	position: relative;
}

.product--loop .product-img>a {
	display: block;
	overflow: hidden;
}

.product--loop .product-img>a>img {
	width: 100%;
	transform: scale(1);
}

.product--loop .product-img .product-new {
	position: absolute;
	top: 5px;
	right: 5px;
	z-index: 1;
	padding: 10px;
	border-radius: 10px;
	background: #c0c906;
	color: #fff;
}

.product--loop .product-img .product-sale {
	position: absolute;
	top: 5px;
	left: 5px;
	z-index: 1;
	padding: 10px;
	border-radius: 10px;
	background: #c0c906;
	color: #fff;
}

.product--loop .product-title {
	padding: 10px;
	margin-bottom: 20px;
}

em.outOfStock {
	position: absolute;
	font-size: 13px;
	font-weight: 700;
	top: 78%;
	right: 30%;
	color: red;
}

@media ( max-width : 768px) {
	em.outOfStock {
		top: 75%;
		right: 30%;
	}
}

.product--loop .product-title>a {
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 1;
	-webkit-box-orient: vertical;
	overflow: hidden;
	height: 20px;
	line-height: 20px;
	color: #333333;
}

.product--loop .product-title>p {
	margin-bottom: 0px;
}

.product--loop .product-price {
	display: inline-block;
	padding: 0px 15px;
	height: 40px;
	line-height: 40px;
	background: #c0c906;
	color: #fff;
	float: left;
	border-top-right-radius: 10px;
	position: relative;
	z-index: 2;
	margin: 0;
}

.product--loop .product-actions {
	display: inline-block;
	float: left;
	position: relative;
	z-index: 1;
}

.product--loop .product-actions button {
	height: 40px;
	line-height: 40px;
	width: 45px;
	padding: 0px;
	margin: 0px 0px 0px -7px;
	background: #3d1a1a;
	color: #fff;
	border: 0px;
	outline: 0px;
	border-top-right-radius: 10px;
}

/* -------------------------------------------------------- codepen */
@import url("https://fonts.googleapis.com/css?family=Audiowide|Monoton|Poiret+One|Raleway");

body * {
  position: relative;


}
h1 {
  font-size: 6vw;
  text-transform: uppercase;
  font-weight: normal;
}
a {
  color: inherit;
  text-decoration: none;
  outline: 0;
}
ul,
li {
  list-style: none;
}
label {
  cursor: pointer;
}
input {
  display: none;
}
/* -------------------------------------------------------- slider */
.slider {
  height: 25vw;
  overflow: hidden;
}
/* -------------------------------------------------------- slide */
.slider > ul {
  height: 100%;
  z-index: 100;
}
.slider > ul > li {
  height: 100%;
  position: absolute;
  left: 0;
  top: 0;

  opacity: 0;
  z-index: 1;
  -webkit-transition: all 2000ms ease;
  -moz-transition: all 2000ms ease;
  -ms-transition: all 2000ms ease;
  -o-transition: all 2000ms ease;
  transition: all 2000ms ease;
}
.slider > #input-slide-0:checked ~ ul > li.slide-0,
.slider > #input-slide-1:checked ~ ul > li.slide-1,
.slider > #input-slide-2:checked ~ ul > li.slide-2,
.slider > #input-slide-3:checked ~ ul > li.slide-3 {
  opacity: 1;
  z-index: 2;
}

/* -------------------------------------------------------- arrow */
.slider > .slider-arrow-prev,
.slider > .slider-arrow-next {
  position: absolute;
  top: 50%;
  left: 0;
  z-index: 300;
}
.slider > .slider-arrow-prev > label,
.slider > .slider-arrow-next > label {
  position: absolute;
  width: 5vw;
  height: 5vw;
  margin-top: -2.5vw;
  opacity: 0;
  background-size: 100% auto;
  background-position: center;

  z-index: -1;
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -ms-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;
}
.slider > #input-slide-0:checked ~ .slider-arrow-prev > label.slide-3,
.slider > #input-slide-0:checked ~ .slider-arrow-next > label.slide-1,
.slider > #input-slide-1:checked ~ .slider-arrow-prev > label.slide-0,
.slider > #input-slide-1:checked ~ .slider-arrow-next > label.slide-2,
.slider > #input-slide-2:checked ~ .slider-arrow-prev > label.slide-1,
.slider > #input-slide-2:checked ~ .slider-arrow-next > label.slide-3,
.slider > #input-slide-3:checked ~ .slider-arrow-prev > label.slide-2,
.slider > #input-slide-3:checked ~ .slider-arrow-next > label.slide-0 {
  z-index: 1;
}
.slider:hover > .slider-arrow-prev > label,
.slider:hover > .slider-arrow-next > label {
  opacity: 1;
}
.slider > .slider-arrow-prev > label {
  left: 5vw;
  background-image: url(http://panikaro.interiowo.pl/img/arrow-left.png);
}
.slider > .slider-arrow-next > label {
  right: 5vw;
  background-image: url(http://panikaro.interiowo.pl/img/arrow-right.png);
}
/* -------------------------------------------------------- dot */
.slider > .slider-dot {
  position: relative;
  margin-top: -4vw;
  text-align: center;
  z-index: 300;
  font-size: 0;
}
.slider > .slider-dot > label {
  position: relative;
  display: inline-block;
  margin: 1vw 0.5vw;
  width: 1vw;
  height: 1vw;
  border-radius: 50%;

  background-color: #fff;
}
.slider > #input-slide-0:checked ~ .slider-dot > label.slide-0,
.slider > #input-slide-1:checked ~ .slider-dot > label.slide-1,
.slider > #input-slide-2:checked ~ .slider-dot > label.slide-2,
.slider > #input-slide-3:checked ~ .slider-dot > label.slide-3 {
  background-color: #fd7fe3;
}
.slider > .slider-dot > label:hover {
  background-color: #7e6de0 !important;
}
/* -------------------------------------------------------- description */
.slider > .slide-description {
  position: absolute;
  width: 50%;
  top: calc(50% - 3vw);
  left: 25%;
  z-index: 200;
}
.slider > .slide-description > label {
  position: absolute;
  width: 100%;
  top: 0;
  left: 0;
  cursor: default;

  z-index: 0;
  opacity: 0;
  visibility: hidden;
  -webkit-transition: all 0.75s ease;
  -moz-transition: all 0.75s ease;
  -ms-transition: all 0.75s ease;
  -o-transition: all 0.75s ease;
  transition: all 0.75s ease;
}
.slider > #input-slide-0:checked ~ .slide-description > .slide-0,
.slider > #input-slide-1:checked ~ .slide-description > .slide-1,
.slider > #input-slide-2:checked ~ .slide-description > .slide-2,
.slider > #input-slide-3:checked ~ .slide-description > .slide-3 {
  z-index: 2;
  opacity: 1;
  visibility: visible;
}
.slider > .slide-description > label > .text-slide {
  margin: 0 auto;
  line-height: 6vw;
  text-align: center;
}
.slider > .slide-description > .slide-0 {
  font-family: "Raleway", sans-serif;
}
.slider > .slide-description > .slide-1 {
  font-family: "Poiret One", cursive;
}
.slider > .slide-description > .slide-2 {
  font-family: "Monoton", cursive;
}
.slider > .slide-description > .slide-3 {
  font-family: "Audiowide", cursive;
}
/* -------------------------------------------------------- autoplay */
/*
	if you don't want to autoplay 
  just check input "slide-0" 
  instead of input "play" in html code
  and remove the code below
*/
/* -------------------------------------------------------- autoplay slide */
@-webkit-keyframes slide {
  0%,
  100% {
    opacity: 0;
  }
  6%,
  25% {
    opacity: 1;
    z-index: 2;
  }
  30%,
  50% {
    opacity: 0;
    z-index: 2;
  }
}
@-moz-keyframes slide {
  0%,
  100% {
    opacity: 0;
  }
  6%,
  24% {
    opacity: 1;
    z-index: 2;
  }
  30%,
  50% {
    opacity: 0;
    z-index: 2;
  }
}
@-ms-keyframes slide {
  0%,
  100% {
    opacity: 0;
  }
  6%,
  25% {
    opacity: 1;
    z-index: 2;
  }
  30%,
  50% {
    opacity: 0;
    z-index: 2;
  }
}
@-o-keyframes slide {
  0%,
  100% {
    opacity: 0;
  }
  6%,
  25% {
    opacity: 1;
    z-index: 2;
  }
  30%,
  50% {
    opacity: 0;
    z-index: 2;
  }
}
@keyframes slide {
  0%,
  100% {
    opacity: 0;
  }
  6%,
  25% {
    opacity: 1;
    z-index: 2;
  }
  30%,
  50% {
    opacity: 0;
    z-index: 2;
  }
}
.slider > #input-slide-autoplay:checked ~ ul > li.slide-0 {
  -webkit-animation: slide 32000ms infinite -2000ms linear;
  -moz-animation: slide 32000ms infinite -2000ms linear;
  -ms-animation: slide 32000ms infinite -2000ms linear;
  -o-animation: slide 32000ms infinite -2000ms linear;
  animation: slide 32000ms infinite -2000ms linear;
}
.slider > #input-slide-autoplay:checked ~ ul > li.slide-1 {
  -webkit-animation: slide 32000ms infinite 6000ms linear;
  -moz-animation: slide 32000ms infinite 6000ms linear;
  -ms-animation: slide 32000ms infinite 6000ms linear;
  -o-animation: slide 32000ms infinite 6000ms linear;
  animation: slide 32000ms infinite 6000ms linear;
}
.slider > #input-slide-autoplay:checked ~ ul > li.slide-2 {
  -webkit-animation: slide 32000ms infinite 14000ms linear;
  -moz-animation: slide 32000ms infinite 14000ms linear;
  -ms-animation: slide 32000ms infinite 14000ms linear;
  -o-animation: slide 32000ms infinite 14000ms linear;
  animation: slide 32000ms infinite 14000ms linear;
}
.slider > #input-slide-autoplay:checked ~ ul > li.slide-3 {
  -webkit-animation: slide 32000ms infinite 22000ms linear;
  -moz-animation: slide 32000ms infinite 22000ms linear;
  -ms-animation: slide 32000ms infinite 22000ms linear;
  -o-animation: slide 32000ms infinite 22000ms linear;
  animation: slide 32000ms infinite 22000ms linear;
}
.slider > #input-slide-autoplay:checked ~ ul > li {
  -webkit-transition: none;
  -moz-transition: none;
  -ms-transition: none;
  -o-transition: none;
  transition: none;
}
/* -------------------------------------------------------- autoplay arrow */
@-webkit-keyframes arrow {
  0%,
  24% {
    z-index: 1;
  }
  25%,
  100% {
    z-index: -1;
  }
}
@-moz-keyframes arrow {
  0%,
  24% {
    z-index: 1;
  }
  25%,
  100% {
    z-index: -1;
  }
}
@-ms-keyframes arrow {
  0%,
  24% {
    z-index: 1;
  }
  25%,
  100% {
    z-index: -1;
  }
}
@-o-keyframes arrow {
  0%,
  24% {
    z-index: 1;
  }
  25%,
  100% {
    z-index: -1;
  }
}
@keyframes arrow {
  0%,
  24% {
    z-index: 1;
  }
  25%,
  100% {
    z-index: -1;
  }
}
.slider > #input-slide-autoplay:checked ~ .slider-arrow-prev > label.slide-3,
.slider > #input-slide-autoplay:checked ~ .slider-arrow-next > label.slide-1 {
  -webkit-animation: arrow 32000ms infinite -2000ms;
  -moz-animation: arrow 32000ms infinite -2000ms;
  -ms-animation: arrow 32000ms infinite -2000ms;
  -o-animation: arrow 32000ms infinite -2000ms;
  animation: arrow 32000ms infinite -2000ms;
}
.slider > #input-slide-autoplay:checked ~ .slider-arrow-prev > label.slide-0,
.slider > #input-slide-autoplay:checked ~ .slider-arrow-next > label.slide-2 {
  -webkit-animation: arrow 32000ms infinite 6000ms;
  -moz-animation: arrow 32000ms infinite 6000ms;
  -ms-animation: arrow 32000ms infinite 6000ms;
  -o-animation: arrow 32000ms infinite 6000ms;
  animation: arrow 32000ms infinite 6000ms;
}
.slider > #input-slide-autoplay:checked ~ .slider-arrow-prev > label.slide-1,
.slider > #input-slide-autoplay:checked ~ .slider-arrow-next > label.slide-3 {
  -webkit-animation: arrow 32000ms infinite 14000ms;
  -moz-animation: arrow 32000ms infinite 14000ms;
  -ms-animation: arrow 32000ms infinite 14000ms;
  -o-animation: arrow 32000ms infinite 14000ms;
  animation: arrow 32000ms infinite 14000ms;
}
.slider > #input-slide-autoplay:checked ~ .slider-arrow-prev > label.slide-2,
.slider > #input-slide-autoplay:checked ~ .slider-arrow-next > label.slide-0 {
  -webkit-animation: arrow 32000ms infinite 22000ms;
  -moz-animation: arrow 32000ms infinite 22000ms;
  -ms-animation: arrow 32000ms infinite 22000ms;
  -o-animation: arrow 32000ms infinite 22000ms;
  animation: arrow 32000ms infinite 22000ms;
}
/* -------------------------------------------------------- autoplay dot */
@-webkit-keyframes dot {
  0%,
  24% {
    background-color: #fd7fe3;
  }
  25%,
  100% {
    background: #fff;
  }
}
@-moz-keyframes dot {
  0%,
  24% {
    background-color: #fd7fe3;
  }
  25%,
  100% {
    background: #fff;
  }
}
@-ms-keyframes dot {
  0%,
  24% {
    background-color: #fd7fe3;
  }
  25%,
  100% {
    background: #fff;
  }
}
@-o-keyframes dot {
  0%,
  24% {
    background-color: #fd7fe3;
  }
  25%,
  100% {
    background: #fff;
  }
}
@keyframes dot {
  0%,
  24% {
    background-color: #fd7fe3;
  }
  25%,
  100% {
    background: #fff;
  }
}
.slider > #input-slide-autoplay:checked ~ .slider-dot > label.slide-0 {
  -webkit-animation: dot 32000ms infinite -2000ms;
  -moz-animation: dot 32000ms infinite -2000ms;
  -ms-animation: dot 32000ms infinite -2000ms;
  -o-animation: dot 32000ms infinite -2000ms;
  animation: dot 32000ms infinite -2000ms;
}
.slider > #input-slide-autoplay:checked ~ .slider-dot > label.slide-1 {
  -webkit-animation: dot 32000ms infinite 6000ms;
  -moz-animation: dot 32000ms infinite 6000ms;
  -ms-animation: dot 32000ms infinite 6000ms;
  -o-animation: dot 32000ms infinite 6000ms;
  animation: dot 32000ms infinite 6000ms;
}
.slider > #input-slide-autoplay:checked ~ .slider-dot > label.slide-2 {
  -webkit-animation: dot 32000ms infinite 14000ms;
  -moz-animation: dot 32000ms infinite 14000ms;
  -ms-animation: dot 32000ms infinite 14000ms;
  -o-animation: dot 32000ms infinite 14000ms;
  animation: dot 32000ms infinite 14000ms;
}
.slider > #input-slide-autoplay:checked ~ .slider-dot > label.slide-3 {
  -webkit-animation: dot 32000ms infinite 22000ms;
  -moz-animation: dot 32000ms infinite 22000ms;
  -ms-animation: dot 32000ms infinite 22000ms;
  -o-animation: dot 32000ms infinite 22000ms;
  animation: dot 32000ms infinite 22000ms;
}
/* -------------------------------------------------------- autoplay description */
@-webkit-keyframes description {
  0%,
  5% {
    opacity: 0;
    z-index: 2;
    visibility: visible;
  }
  6%,
  24% {
    opacity: 1;
    z-index: 2;
    visibility: visible;
  }
  25%,
  100% {
    opacity: 0;
    z-index: 0;
    visibility: hidden;
  }
}
@-moz-keyframes description {
  0%,
  5% {
    opacity: 0;
    z-index: 2;
    visibility: visible;
  }
  6%,
  24% {
    opacity: 1;
    z-index: 2;
    visibility: visible;
  }
  25%,
  100% {
    opacity: 0;
    z-index: 0;
    visibility: hidden;
  }
}
@-ms-keyframes description {
  0%,
  5% {
    opacity: 0;
    z-index: 2;
    visibility: visible;
  }
  6%,
  24% {
    opacity: 1;
    z-index: 2;
    visibility: visible;
  }
  25%,
  100% {
    opacity: 0;
    z-index: 0;
    visibility: hidden;
  }
}
@-o-keyframes description {
  0%,
  5% {
    opacity: 0;
    z-index: 2;
    visibility: visible;
  }
  6%,
  24% {
    opacity: 1;
    z-index: 2;
    visibility: visible;
  }
  25%,
  100% {
    opacity: 0;
    z-index: 0;
    visibility: hidden;
  }
}
@keyframes description {
  0%,
  5% {
    opacity: 0;
    z-index: 2;
    visibility: visible;
  }
  6%,
  24% {
    opacity: 1;
    z-index: 2;
    visibility: visible;
  }
  25%,
  100% {
    opacity: 0;
    z-index: 0;
    visibility: hidden;
  }
}
.slider > #input-slide-autoplay:checked ~ .slide-description > .slide-0 {
  -webkit-animation: description 32000ms infinite -2000ms ease;
  -moz-animation: description 32000ms infinite -2000ms ease;
  -ms-animation: description 32000ms infinite -2000ms ease;
  -o-animation: description 32000ms infinite -2000ms ease;
  animation: description 32000ms infinite -2000ms ease;
}
.slider > #input-slide-autoplay:checked ~ .slide-description > .slide-1 {
  -webkit-animation: description 32000ms infinite 6000ms ease;
  -moz-animation: description 32000ms infinite 6000ms ease;
  -ms-animation: description 32000ms infinite 6000ms ease;
  -o-animation: description 32000ms infinite 6000ms ease;
  animation: description 32000ms infinite 6000ms ease;
}
.slider > #input-slide-autoplay:checked ~ .slide-description > .slide-2 {
  -webkit-animation: description 32000ms infinite 14000ms ease;
  -moz-animation: description 32000ms infinite 14000ms ease;
  -ms-animation: description 32000ms infinite 14000ms ease;
  -o-animation: description 32000ms infinite 14000ms ease;
  animation: description 32000ms infinite 14000ms ease;
}
.slider > #input-slide-autoplay:checked ~ .slide-description > .slide-3 {
  -webkit-animation: description 32000ms infinite 22000ms ease;
  -moz-animation: description 32000ms infinite 22000ms ease;
  -ms-animation: description 32000ms infinite 22000ms ease;
  -o-animation: description 32000ms infinite 22000ms ease;
  animation: description 32000ms infinite 22000ms ease;
}
.slider > #input-slide-autoplay:checked ~ .slide-description > label {
  -webkit-transition: none;
  -moz-transition: none;
  -ms-transition: none;
  -o-transition: none;
  transition: none;
}
/* -------------------------------------------------------- end codepen */
</style>
</head>
<body>
	<div id="wrapper" class="homepage-1">
		<!-- wrapper -->

		<%@include file="/WEB-INF/views/page/header.jsp"%>

		<!-- Begin Slider -->
		<div class='slider'>
			<input name="input-slider" id='input-slide-0' type="radio"
				class='input-slide input-slide-num'> <input
				name="input-slider" id='input-slide-1' type="radio"
				class='input-slide input-slide-num'> <input
				name="input-slider" id='input-slide-2' type="radio"
				class='input-slide input-slide-num'> <input
				name="input-slider" id='input-slide-3' type="radio"
				class='input-slide input-slide-num'> <input
				name="input-slider" id='input-slide-autoplay' type="radio"
				class='input-slide' checked>
			<ul>
				<li class='slide-0'><img src="resources/page/image/bg1.png" alt="slide-1"
										class="img-responsive"></li>
				<li class='slide-1'><img src="resources/page/image/bg2.png" alt="slide-1"
										class="img-responsive"></li>
				<li class='slide-2'><img src="resources/page/image/bg4.png" alt="slide-1"
										class="img-responsive"></li>
				<li class='slide-3'><img src="resources/page/image/bg3.png" alt="slide-1"
										class="img-responsive"></li>
			</ul>
			<div class='slide-description'>
				<label class='slide-0'>
					
				</label> <label class='slide-1'>
					
				</label> <label class='slide-2'>
					
				</label> <label class='slide-3'>
					
				</label>
			</div>
			<div class='slider-arrow-prev'>
				<label class='slide-0' for='input-slide-0'></label> <label
					class='slide-1' for='input-slide-1'></label> <label class='slide-2'
					for='input-slide-2'></label> <label class='slide-3'
					for='input-slide-3'></label>
			</div>
			<div class='slider-arrow-next'>
				<label class='slide-0' for='input-slide-0'></label> <label
					class='slide-1' for='input-slide-1'></label> <label class='slide-2'
					for='input-slide-2'></label> <label class='slide-3'
					for='input-slide-3'></label>
			</div>
			<div class='slider-dot'>
				<label class='slide-0' for='input-slide-0'></label> <label
					class='slide-1' for='input-slide-1'></label> <label class='slide-2'
					for='input-slide-2'></label> <label class='slide-3'
					for='input-slide-3'></label>
			</div>
		</div>
		
		<!-- End Slider -->


		<!-- Begin content -->
		<div id="content">
			<!-- Content -->

			<div class="newest">
				<div class="container">
					<div class="newest-content">
						<div class="newest-tab">
							<ul id="myTab" class="nav nav-tabs newest" role="tablist">
								<li role="presentation" class="active"><a href="#1" id="h1"
									role="tab" data-toggle="tab" aria-controls="1"
									aria-expanded="true"><s:message code="global.menu.all" /></a></li>
								<li role="presentation"><a href="#2" role="tab" id="h2"
									data-toggle="tab" aria-controls="2"><s:message
											code="global.menu.sale" /></a></li>
								<li role="presentation"><a href="#3" role="tab" id="h3"
									data-toggle="tab" aria-controls="3"><s:message
											code="global.menu.newproduct" /></a></li>
								<li role="presentation"><a href="#3" role="tab" id="h4"
									data-toggle="tab" aria-controls="3"><s:message
											code="global.menu.bestsale" /></a></li>
							</ul>

							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="1"
									aria-labelledby="h1">
									<div class="row clearfix">
										<c:forEach var="p" items="${pros}" varStatus="status"
											begin="0">
											<c:if test="${p.status}">
												<div class="col-md-3 prdct-grid">
													<div class="product--loop">
														<div class="product-img">
															<a href="page/detail_product/${p.id_product}.htm"> <img
																alt="BANANA CAKE"
																src="resources/page/images/${p.image }">
															</a>

														</div>
														<div class="product-title text-center">
															<a href="page/detail_product/${p.id_product}.htm"
																class="product-title__link"> ${ p.name} </a>
															<p>Số lượng ${ p.quality}</p>
															<c:if test="${p.quality == 0 }">
																<em class="outOfStock">HẾT SẢN PHẨM</em>
															</c:if>
														</div>
														<div class="product-price-actions clearfix">
															<div class="product-price">${ p.price}₫</div>
															<div class="product-actions">
																<a href=" page/buyItem.htm?idItem=${ p.id_product } ">
																	<button type="button"
																		class="btn btnQuickView quick-view"
																		data-handle="/products/banana-cake">
																		<i class="fas fa-cart-plus"></i>
																	</button>
																</a>


															</div>
														</div>


													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>

								<div role="tabpanel" class="tab-pane fade" id="2"
									aria-labelledby="h2">
									<div class="row clearfix">
										<c:forEach var="p" items="${pros}" varStatus="status" end="5"
											begin="0">
											<c:if test="${p.status}">
												<div class="col-md-3 prdct-grid">
													<div class="product--loop">
														<div class="product-img">
															<a href="page/detail_product/${p.id_product}.htm"> <img
																alt="BANANA CAKE"
																src="resources/page/images/${p.image }">
															</a>

														</div>
														<div class="product-title text-center">
															<a href="page/detail_product/${p.id_product}.htm"
																class="product-title__link"> ${ p.name} </a>
															<p>Số lượng ${ p.quality}</p>
															<c:if test="${p.quality == 0 }">
																<em class="outOfStock">HẾT SẢN PHẨM</em>
															</c:if>
														</div>
														<div class="product-price-actions clearfix">
															<div class="product-price">${ p.price}₫</div>
															<div class="product-actions">
																<a href=" page/buyItem.htm?idItem=${ p.id_product } ">
																	<button type="button"
																		class="btn btnQuickView quick-view"
																		data-handle="/products/banana-cake">
																		<i class="fas fa-cart-plus"></i>
																	</button>
																</a>


															</div>
														</div>


													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>

								</div>

								<div role="tabpanel" class="tab-pane fade" id="3"
									aria-labelledby="h3">
									<div class="row clearfix">
										<c:forEach var="p" items="${pros}" varStatus="status" end="12"
											begin="6">

											<c:if test="${p.status}">
												<div class="col-md-3 prdct-grid">
													<div class="product--loop">
														<div class="product-img">
															<a href="page/detail_product/${p.id_product}.htm"> <img
																alt="BANANA CAKE"
																src="resources/page/images/${p.image }">
															</a>

														</div>
														<div class="product-title text-center">
															<a href="page/detail_product/${p.id_product}.htm"
																class="product-title__link"> ${ p.name} </a>
															<p>Số lượng ${ p.quality}</p>
															<c:if test="${p.quality == 0 }">
																<em class="outOfStock">HẾT SẢN PHẨM</em>
															</c:if>
														</div>
														<div class="product-price-actions clearfix">
															<div class="product-price">${ p.price}₫</div>
															<div class="product-actions">
																<a href=" page/buyItem.htm?idItem=${ p.id_product } ">
																	<button type="button"
																		class="btn btnQuickView quick-view"
																		data-handle="/products/banana-cake">
																		<i class="fas fa-cart-plus"></i>
																	</button>
																</a>


															</div>
														</div>


													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>

								</div>

								<div role="tabpanel" class="tab-pane fade" id="4"
									aria-labelledby="h4">
									<div class="row clearfix">
										<c:forEach var="p" items="${pros}" varStatus="status" end="14"
											begin="13">
											<c:if test="${p.status}">
												<div class="col-md-3 prdct-grid">
													<div class="product--loop">
														<div class="product-img">
															<a href="page/detail_product/${p.id_product}.htm"> <img
																alt="BANANA CAKE"
																src="resources/page/images/${p.image }">
															</a>

														</div>
														<div class="product-title text-center">
															<a href="page/detail_product/${p.id_product}.htm"
																class="product-title__link"> ${ p.name} </a>
															<p>Số lượng ${ p.quality}</p>
															<c:if test="${p.quality == 0 }">
																<em class="outOfStock">HẾT SẢN PHẨM</em>
															</c:if>
														</div>
														<div class="product-price-actions clearfix">
															<div class="product-price">${ p.price}₫</div>
															<div class="product-actions">
																<a href=" page/buyItem.htm?idItem=${ p.id_product } ">
																	<button type="button"
																		class="btn btnQuickView quick-view"
																		data-handle="/products/banana-cake">
																		<i class="fas fa-cart-plus"></i>
																	</button>
																</a>


															</div>
														</div>


													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>

								</div>

							</div>

						</div>
					</div>
				</div>
			</div>



			<div class="brands">
				<div class="container">
					<div class="brands-inner">
						<div class="brand-title">
							<span><s:message code="global.menu.brand" /></span>
						</div>

						<div id="slider-home">
							<!-- Slider -->
							<div id="brand-carousel" class="owl-carousel owl-theme">
								<div class="item">
									<img src="resources/page/image/logo_brand1.jpg" alt="slide-1"
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/page/image/logo_brand2.jpg" alt="slide-1"
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/page/image/logo_brand3.png" alt="slide-1"
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/page/image/logo_brand4.jpg" alt="slide-1"
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/page/image/logo_brand5.jpg" alt="slide-1"
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/page/image/logo_brand6.jpg" alt="slide-1"
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/page/image/logo_brand7.jpg" alt="slide-1"
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/page/image/logo_brand8.png" alt="slide-1"
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/page/image/logo_brand8.jpg" alt="slide-1"
										class="img-responsive">
								</div>
								<div class="item">
									<img src="resources/page/image/logo_brand2.jpg" alt="slide-1"
										class="img-responsive">
								</div>
							</div>
						</div>
						<!-- Slider -->

					</div>
				</div>
			</div>


			<div class="rec-blog">
				<div class="container">
					<div class="rec-blog-inner">
						<div class="blog-title">
							<span>The Blog</span>
						</div>
						<div class="row">
							<div class="col-md-4 blog-ct">
								<a href=""><img height="240px"
									src="resources/page/images/b1.jpg" alt=""
									class="img-responsive"></a>
								<div class="blog-ct-title">
									<a href=""><s:message code="global.menu.blog1" /></a> <span>May
										11,2020</span>
								</div>
							</div>
							<div class="col-md-4 blog-ct">
								<a href=""><img src="resources/page/images/b2.jpg" alt=""
									class="img-responsive"></a>
								<div class="blog-ct-title">
									<a href=""><s:message code="global.menu.blog2" /></a> <span>May
										11,2020</span>
								</div>
							</div>
							<div class="col-md-4 blog-ct">
								<a href=""><img src="resources/page/images/b3.jpg" alt=""
									class="img-responsive"></a>
								<div class="blog-ct-title">
									<a href=""><s:message code="global.menu.blog3" /></a> <span>May
										11,2020</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- End Content -->
		<%@include file="/WEB-INF/views/page/footer.jsp"%>

	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.10/lodash.min.js"
		type="text/javascript"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"
		type="text/javascript"></script>

</body>
</html>