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
						<spring:bind path="commandObject.userName">
							<input type="text" name="<c:out value='${status.expression}'/>"
										id="<c:out value='${status.expression}'/>"
										value="<c:out value='${status.value}'/>" class="form-control"/>
						</spring:bind>
					</td>
				</tr>
				<tr>
					<td><b>user id</b></td>
					<td>
						<spring:bind path="commandObject.userid">
							<input type="text" id="<c:out value='${status.expression}'/>"
										name="<c:out value='${status.expression}'/>" value="<c:out value='${status.value}'/>" class="form-control"/>
						</spring:bind>
					</td>
				<tr>
					<td><b>Password</b></td>
					<td>
						<spring:bind path="commandObject.password">
							<input type="password" id="<c:out value='${status.expression}'/>" 
												name="<c:out value='${status.expression}'/>" 
												value="<c:out value='${status.value}'/>" class="form-control"/>
						</spring:bind>
					</td>
				</tr>
				<tr>
					<td><b>gender</b></td>
					<td>
						<spring:bind path="commandObject.gender">
							<input type="text" id="<c:out value='${status.expression}'/>" 
												name="<c:out value='${status.expression}'/>" 
												value="<c:out value='${status.value}'/>" class="form-control"/>
						</spring:bind>
					</td>
				</tr>
				<tr>
					<td><b>Age</b></td>
					<td>
						<spring:bind path="commandObject.age">
							<input type="text" id="<c:out value='${status.expression}'/>" 
												name="<c:out value='${status.expression}'/>" 
												value="<c:out value='${status.value}'/>" class="form-control"/>
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