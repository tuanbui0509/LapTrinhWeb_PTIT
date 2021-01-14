<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thay đổi mật khẩu</title>
<base href="${pageContext.servletContext.contextPath}/">


<%@include file="/WEB-INF/views/page/link.jsp"%>
<style type="text/css">
h1 {
	position: absolute;
	margin: 0;
	font-size: 38px;
	color: #fff;
	z-index: 2;
}

.testbox {
	display: flex;
	justify-content: center;
	align-items: center;
	height: inherit;
	padding: 20px;
}

form.form_info {
	width: 60%;
	padding: 20px;
	border-radius: 6px;
	background: #fff;
	box-shadow: 0 0 25px 0 rgba(74, 29, 34, 0.9);
}

.banner {
	position: relative;
	height: 210px;
	background-image:
		url("//theme.hstatic.net/1000313040/1000406925/14/breadcrumb_bg.png?v=1641");
	background-size: cover;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
	background-attachment: fixed;
}

.banner::after {
	content: "";
	background-color: rgba(0, 0, 0, 0.3);
	position: absolute;
	width: 100%;
	height: 100%;
}

input {
	width: calc(100% - 10px);
	padding: 10px;
}

input, select, textarea {
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 10px;
}

input[type="date"] {
	padding: 4px 5px;
}

select {
	width: 100%;
	padding: 7px 0;
	background: transparent;
}

textarea {
	width: calc(100% - 12px);
	padding: 5px;
}

.item:hover p, .item:hover i, .question:hover p, .question label:hover,
	input:hover::placeholder {
	color: rgba(74, 29, 34, 0.9);
}

.item input:hover, .item select:hover, .item textarea:hover {
	border: 1px solid transparent;
	box-shadow: 0 0 6px 0 rgba(74, 29, 34, 0.9);
	color: rgba(74, 29, 34, 0.9);
}

.item {
	position: relative;
	margin: 10px 0;
}

input[type="date"]::-webkit-inner-spin-button {
	display: none;
}

.item i, input[type="date"]::-webkit-calendar-picker-indicator {
	position: absolute;
	font-size: 20px;
	color: #a9a9a9;
}

.item i {
	right: 3%;
	top: 40px;
	z-index: 1;
}

[type="date"]::-webkit-calendar-picker-indicator {
	right: 1%;
	z-index: 2;
	opacity: 0;
	cursor: pointer;
}

input[type=radio], input[type=checkbox] {
	display: none;
}

label.radio {
	position: relative;
	display: inline-block;
	margin: 5px 20px 15px 0;
	cursor: pointer;
}

.question span {
	margin-left: 30px;
}

label.radio:before {
	content: "";
	position: absolute;
	left: 0;
	width: 17px;
	height: 17px;
	border-radius: 50%;
	border: 2px solid #ccc;
}

input[type=radio]:checked+label:before, label.radio:hover:before {
	border: 2px solid rgba(74, 29, 34, 0.9);
}

label.radio:after {
	content: "";
	position: absolute;
	top: 6px;
	left: 5px;
	width: 8px;
	height: 4px;
	border: 3px solid rgba(74, 29, 34, 0.9);
	border-top: none;
	border-right: none;
	transform: rotate(-45deg);
	opacity: 0;
}

input[type=radio]:checked+label:after {
	opacity: 1;
}

.btn-block {
	margin-top: 10px;
	text-align: center;
}

button {
	width: 152px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background: rgba(74, 29, 34, 0.9);
	font-size: 16px;
	color: #fff;
	cursor: pointer;
}

button:hover {
	background: #b52ed1;
}

@media ( min-width : 568px) {
	.name-item, .city-item {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
	}
	.name-item input, .city-item input {
		width: calc(50% - 20px);
	}
	.city-item select {
		width: calc(50% - 8px);
	}
}

.image_edit_user {
	height: 100px;
	width: 100px;
	margin: 20px auto;
	position: relative;
	display: -webkit-box;
	display: -webkit-flex;
	display: -moz-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-moz-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-moz-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	flex-direction: column;
}

.avatar-uploader-image {
	width: 100%;
	height: 100%;
	border-radius: 50%;
	background-position: 50%;
	background-size: cover;
	background-repeat: no-repeat;
	cursor: pointer;
}

.choose_avatar {
	margin: 10px auto;
	padding: 0 100px;
	width: 100%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.upload_avatar {
	width: 210px;
}

*[id$=errors] {
	color: red;
	font-style: italic;
	display: block;
	margin: 5px;
	font-size: 14px;
	flex: 1;
	text-align: center;
}

.readonlyInfo {
	background: #F8F2E8;
	font-weight: 600;
	color: rgba(74, 29, 34, 0.9);
	cursor: pointer;
	outline: none;
}
</style>
</head>
<body>
	<div id="wrapper" class="homepage-1">

		<%@include file="/WEB-INF/views/page/header.jsp"%>
		<div class="testbox">
			<form action="page/change_password.htm" class="form_info"
				method="post">
				<div class="banner">
					<h1>
						<s:message code="global.menu.changePassword" />
					</h1>
				</div>

				<div class="item">
					<p>
						<s:message code="global.menu.oldPassword" />
					</p>
					<input name="oldPassword" type="password" />
				</div>
				<div class="item">
					<span id="message.errors">${message1}</span>
				</div>
				<div class="item">
					<p>
						<s:message code="global.menu.newPassword" />
					</p>
					<input name="newPassword" type="password" />
				</div>
				<div class="item">
					<span id="message.errors">${message2}</span>
				</div>
				<div class="item">
					<p>
						<s:message code="global.menu.newpasswordAgain" />
					</p>
					<input name="newPasswordAgian" type="password" />
				</div>
				<div class="item">
					<span id="message.errors">${message3}</span>
				</div>
				<div class="btn-block">
					<button>
						<s:message code="global.menu.changePassword" />
					</button>
				</div>
				<div class="item">
					<span id="message.errors">${message}</span>
				</div>
			</form>



		</div>
		<%@include file="/WEB-INF/views/page/footer.jsp"%>
	</div>

	<script type="text/javascript">
		var today = new Date().toISOString().substr(0, 10);
		document.querySelector("#today").value = today;

		document.querySelector("#today2").valueAsDate = new Date();
	</script>
</body>
</html>