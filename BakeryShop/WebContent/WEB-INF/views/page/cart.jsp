<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cart</title>
<base href="${pageContext.servletContext.contextPath}/">


<%@include file="/WEB-INF/views/page/link.jsp"%>
<style type="text/css">
.table &amp ;amp ;gt ;tbody &amp ;amp ;gt ;tr &amp ;amp ;gt ;td, .table
	 &amp ;amp ;gt ;tfoot &amp ;amp ;gt ;tr &amp ;amp ;gt ;td {
	vertical-align: middle;
}

@media screen and (max-width: 600px) {
	table#cart tbody td .form-control {
		width: 20%;
		display: inline !important;
	}
	.actions .btn {
		width: 36%;
		margin: 1.5em 0;
	}
	.actions .btn-info {
		float: left;
	}
	.actions .btn-danger {
		float: right;
	}
	table#cart thead {
		display: none;
	}
	table#cart tbody td {
		display: block;
		padding: .6rem;
		min-width: 320px;
	}
	table#cart tbody tr td:first-child {
		background: #333;
		color: #fff;
	}
	table#cart tbody td:before {
		content: attr(data-th);
		font-weight: bold;
		display: inline-block;
		width: 8rem;
	}
	table#cart tfoot td {
		display: block;
	}
	table#cart tfoot td .btn {
		display: block;
	}
}

h2.text-center {
	font-weight: 700;
}

/*================ Quantity Selectors ================*/
.js-qty, .ajaxcart__qty {
	position: relative;
	margin-bottom: 1em;
	max-width: 100px;
	min-width: 75px;
	overflow: visible;
}

.js-qty input, .ajaxcart__qty input {
	display: block;
	background: none;
	text-align: center;
	width: 100%;
	padding: 5px 25px;
	margin: 0;
	border: 1px solid #e6e6e6;
	outline: none;
}

.js-qty__adjust, .ajaxcart__qty-adjust {
	cursor: pointer;
	position: absolute;
	display: block;
	top: 0;
	bottom: 0;
	border: 0 none;
	padding: 0 8px;
	background: none;
	text-align: center;
	overflow: hidden;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	outline: none;
}

.js-qty__adjust:hover, .ajaxcart__qty-adjust:hover, .js-qty__adjust:focus,
	.ajaxcart__qty-adjust:focus {
	color: #3d1a1a;
}

.js-qty__adjust--plus, .ajaxcart__qty--plus {
	right: 0;
	border-left: 1px solid #e6e6e6;
}

.js-qty__adjust--minus, .ajaxcart__qty--minus {
	left: 0;
	border-right: 1px solid #e6e6e6;
}
</style>
</head>
<body>
	<div id="wrapper" class="homepage-1">

		<%@include file="/WEB-INF/views/page/header.jsp"%>
		<h2 class="text-center">
			<s:message code="global.menu.cartName" />
		</h2>
		<div class="container">

			<table id="cart" class="table table-hover table-condensed">
				<thead class="title_cart">
					<tr>
						<th style="width: 15%"><s:message
								code="global.menu.cartImage" /></th>
						<th style="width: 35%"><s:message
								code="global.menu.cartNameProd" /></th>
						<th style="width: 10%"><s:message
								code="global.menu.cartPrice" /></th>
						<th style="width: 10%"><s:message
								code="global.menu.cartQuality" /></th>
						<th style="width: 20%" class="text-center"><s:message
								code="global.menu.cartTotalPrice" /></th>
						<th style="width: 10%"><s:message
								code="global.menu.cartDelete" /></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="${cartItem}">
						<tr>
							<td><img src="resources/page/images/${p.image }"
								alt="Sản phẩm 1" class="img-responsive" width="100"></td>
							<td data-th="Product">
								<h4 class="nomargin">${ p.nameItem }</h4> <!-- <p>Mô tả của sản phẩm 1</p> -->
							</td>
							<td data-th="Price">${ p.priceItem }</td>
							<td data-th="Quantity">
								<!--Tang Giam so luong -->
								<div class="js-qty">
									<!-- Giam so luong -->
									<a href="page/minusQuality/${p.idItem}.htm">
										<button type="button"
											class="js-qty__adjust js-qty__adjust--minus icon-fallback-text"
											data-id="" data-qty="2" name="minusQuality">
											<span class="icon icon-minus" aria-hidden="true"></span> <span
												class="fallback-text" aria-hidden="true">−</span> <span
												class="visually-hidden"></span>
										</button>
									</a> <input type="text" class="js-qty__num" value="${ p.quality }"
										min="1">
									<!--  Tang so luong -->
									<a href="page/plusQuality/${p.idItem}.htm">
										<button type="button"
											class="js-qty__adjust js-qty__adjust--plus icon-fallback-text">
											<span class="icon icon-plus" aria-hidden="true"></span> <span
												class="fallback-text" aria-hidden="true">+</span> <span
												class="visually-hidden"></span>
										</button>
									</a>

								</div> 
<%-- 								<c:forEach var="prod" items="pros" varStatus="status"> --%>
<%-- 									<c:if test="${prod.id_product ==  p.idItem}"> --%>
<%-- 										Còn <em>${prod.quality }</em> sản phẩm --%>
<%-- 									</c:if> --%>
<%-- 								</c:forEach> --%>

							</td>
							<td data-th="Subtotal" class="text-center">${ p.priceItem * p.quality }</td>
							<td class="actions" data-th=""><a
								href="page/deleteCartItem.htm?idItem=${ p.idItem }"
								class="icon-delete"><img alt=""
									src="resources/admin/dashboard/assets/rejected.svg"></a></td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td><a href="page/home.htm" class="btn btn-warning"><i
								class="fa fa-angle-left"></i> <s:message
									code="global.menu.cartContinue" /></a></td>
						<td colspan="2" class="hidden-xs"></td>
						<td class="hidden-xs text-center"><strong><s:message
									code="global.menu.cartTotal" />: ${totalprice}</strong></td>
						<td><a href="page/checkout.htm"
							class="btn btn-success btn-block"><s:message
									code="global.menu.cartpayment" /> <i class="fa fa-angle-right"></i>
						</a></td>
					</tr>
				</tfoot>
			</table>
		</div>
		<span style="color: red; text-align: center; font-size: 16px; display: block; margin: 20px 0px;">${message}</span>
		<%@include file="/WEB-INF/views/page/footer.jsp"%>
	</div>
</body>
</html>