<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Sing In</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
	display: block;
	margin: 5px;
	text-align: center; font-size : 12px;
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

.loginAcc{
    text-align: right;
    display: block;
    font-size: 16px;
}
</style>

</head>
<body>
<%@include file="/WEB-INF/views/user/header.jsp"%>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('resources/login/images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form:form class="login100-form validate-form" action="user/register.htm"
					modelAttribute="user">
					<span class="login100-form-title p-b-49"> Register </span>

					<div class="wrap-input100   m-b-23"
						data-validate="Username is reauired">
						<span class="label-input100">Fullname</span>
						<form:input path="fullname" class="input100" type="text"
							name="username" placeholder="Type your fullname" />

						<span class="focus-input100" data-symbol="&#9998;"></span>
					</div>
					<form:errors path="fullname"></form:errors>

					<div class="wrap-input100  " data-validate="Password is required">
						<span class="label-input100">Email</span>
						<form:input path="email" class="input100" type="text" name="pass"
							placeholder="Type your email" />

						<span class="focus-input100" data-symbol="&#9993;"></span>
					</div>
					<form:errors path="email"></form:errors>
					
					<div class="wrap-input100   m-b-23"
						data-validate="phone is reauired">
						<span class="label-input100">Phone</span>
						<form:input path="phone" class="input100" type="text"
							name="phone" placeholder="Type your phone" />

						<span class="focus-input100" data-symbol="&#x260E;"></span>
					</div>
					<form:errors path="phone"></form:errors>
					
					<div class="wrap-input100   m-b-23"
						data-validate="Username is reauired">
						<span class="label-input100">Username</span>
						<form:input path="user_name" class="input100" type="text"
							name="username" placeholder="Type your username" />

						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
					<form:errors path="user_name"></form:errors>
					<div class="wrap-input100  " data-validate="Password is required">
						<span class="label-input100">Password</span>
						<form:input path="password" class="input100" type="password"
							name="pass" placeholder="Type your password" />

						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
					<form:errors path="password"></form:errors>
					<div class="wrap-radio100 ">
						<span class="label-input100">Gender</span>
						<div class="wrap-radio">
							<div class="radio-choise">
								<span class="genderName">Nam </span>
								<form:radiobutton path="gender" value="True" />
							</div>
							<div class="radio-choise">
								<span class="genderName">Nữ </span>
								<form:radiobutton path="gender" value="False" />
							</div>
						</div>

						<form:errors path="gender"></form:errors>

					</div>


					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<form:button class="login100-form-btn">
								Sign in
							</form:button>
						</div>
					</div>
					
					<span id="message.errors">${message}</span>
					
					<div class="flex-col-c p-t-15">
						<a href="user/login.htm" class="loginAcc"> Login </a>
					</div>
					
					<div class="txt1 text-center p-t-54 p-b-20">
						<span> Sign Up Using </span>
					</div>

					<div class="flex-c-m">
						<a href="#" class="login100-social-item bg1"> <i
							class="fa fa-facebook"></i>
						</a> <a href="#" class="login100-social-item bg2"> <i
							class="fa fa-twitter"></i>
						</a> <a href="#" class="login100-social-item bg3"> <i
							class="fa fa-google"></i>
						</a>
					</div>
					

				</form:form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>

	
</body>
</html>