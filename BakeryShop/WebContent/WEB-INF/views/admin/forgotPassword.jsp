<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<base href="${pageContext.servletContext.contextPath}/">
<html>

<head>
<link rel="stylesheet" href="resources/admin/asset/css/style.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link href='resources/page/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
<title>Forgot password</title>
</head>

<body>
	<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
	display: block;
	margin: 0 0 15px 0;
	font-size: 12px;
	flex: 1;
	text-align: center;
}

span#message.errors {
	
}

a.logoHome {
	max-width: 150px;
	height: auto;
	display: block;
	margin: auto;
}

img.img-responsive {
	width: 100%;
	height: auto;
}
a.btn_login {
    text-align: center;
    display: block;
}
</style>

	<div class="main">
		<p class="sign" align="center">Admin Forgot Password</p>
		<form:form class="form1" action="admin/forgotPassword.htm" modelAttribute="admin" method="post">
			<form:input path="email" class="un " type="text" align="center"
				placeholder="email" />
			<form:errors path="email" />
			<form:button align="center" class="submit">Confirm</form:button>
			<span id="message.errors">${message}</span>
			<a href="admin/login.htm" class="btn_login">Login</a>
		</form:form>
	</div>

</body>

</html></html>