<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%@ include file="commonLibraries.jsp" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<div class="fluid-container">
		<div class="row">
			<form>
				<input type=submit onclick="opensignup()" class="button btn-success" value="Sign Up" style="text-align: right;"/>
			</form>
		</div>
		<div class="row">
			<form onsubmit="doLogin()">
			<div class="col-md-4 col-sm-4"></div>
			<div class="col-md-4 col-sm-4">
				<table class="table table-bordered">
					<thead><tr><td colspan="2">Login</td></tr></thead>
					<tbody>
						<tr>
							<td>
								<b>User Name</b>
							</td>
							<td>
								<input class="form-control" type="text" id="uname" name="uname"/>
							</td>
						</tr>
						<tr>
							<td>
								<b>password</b>
							</td>
							<td>
								<input class="form-control" type="text" id="password" name="password"/>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" class="form-control" id="login"/>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="col-md-4 col-sm-4"></div>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	function doLogin() {
		document.forms[1].action="loginController.htm";
		document.forms[1].method = "POST";
		document.forms[1].submit();
	}
	function opensignup(){
		document.forms[0].action="signupController.htm";
		document.forms[0].method = "POST";
		document.forms[0].submit();
	}
</script>
</html>