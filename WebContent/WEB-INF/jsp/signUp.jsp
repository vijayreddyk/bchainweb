<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@include file="/commonLibraries.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>signUp</title>
</head>
<body>
	<div class="container-fluid">
		<div class="col-md-4 col-sm-4"></div>
		<div class="col-md-4 col-sm-4">
			<form onsubmit="doSignUp()">
			<table class="table table-bordered">
				<tr>
					<td colspan="2">Sign Up</td>
				</tr>
				<tr>
					<td><b>user name</b></td>
					<td>
						<spring:bind path="${commandObject.userName}">
							<input type="text" class="form-control" id="uname" name="uname"/>
						</spring:bind>
					</td>
				</tr>
				<tr>
					<td><b>user Id</b></td>
					<td>
						<spring:bind path="${commandObject.userId}">
							<input type="text" class="form-control" id="userid" name="userid"/>
						</spring:bind>
					</td>
				</tr>
				<tr>
					<td><b>Password</b></td>
					<td>
						<spring:bind path="${commandObject.password}">
							<input type="password" class="form-control" id="password" name="password"/>
						</spring:bind>
					</td>
				</tr>
				<tr>
					<td><b>gender</b></td>
					<td>
						<spring:bind path="${commandObject.password}">
							<input type="text" class="form-control" id="gender" name="gender"/>
						</spring:bind>
					</td>
				</tr>
				<tr>
					<td><b>Age</b></td>
					<td>
						<spring:bind path="${commandObject.age}">
							<input type="text" class="form-control" id="age" name="age"/>
						</spring:bind>
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="button" id="signup" name="signup"/></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	function doSignUp() {
		document.forms[0].action = "signupController.htm";
		document.forms[0].method = "POST";
		document.forms[0].submit();
	}
</script>
</html>