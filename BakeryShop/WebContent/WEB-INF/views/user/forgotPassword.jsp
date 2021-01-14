<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Forgot password.</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->

<!--===============================================================================================-->
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
	display: block;
	margin: 5px;
	text-align: center;
	font-size: 12px;
	flex: 1;
	font-size: 12px;
}

.wrap-radio {
	display: flex;
	align-items: center;
	justify-content: space-around;
}

.radio-choise {
	display: flex;
	align-items: center;
	justify-content: center;
	flex: 1;
}

.genderName {
	margin-right: 20px;
	font-family: Poppins-Regular;
	font-size: 16px;
	color: #333333;
	line-height: 1.5;
	padding-left: 7px;
}

.loginAcc {
	text-align: right;
	display: block;
	font-size: 16px;
}

.notifyTittle {
	font-style: italic;
}
</style>

</head>
<body>
	<%@include file="/WEB-INF/views/user/header.jsp"%>

	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('resources/login/images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form:form class="login100-form validate-form"
					action="user/forgotpassword.htm" modelAttribute="user">
					<span class="login100-form-title p-b-49"> Forgot your
						password? </span>
					<span class="label-input100 notifyTittle">Please enter the
						email to reset the password.</span>
					<div class="wrap-input100   m-b-23"
						data-validate="Username is reauired">
						<span class="label-input100">Email</span>
						<form:input path="email" class="input100" type="text" name="email"
							placeholder="Type your email" />

						<span class="focus-input100" data-symbol="&#9998;"></span>
					</div>
					<form:errors path="email"></form:errors>


					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<form:button class="login100-form-btn">
								Confirm
							</form:button>
						</div>
					</div>

					<span id="message.errors">${message}</span>
					<div class="flex-col-c p-t-155">
						<a href="user/login.htm" class="txt2"> Login </a>
					</div>



				</form:form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>


</body>
</html>