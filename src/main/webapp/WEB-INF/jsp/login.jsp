<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<title>Login</title>
<meta name="description" content="Website to help People">
<meta name="author" content="Alli Pierre Yotti">


<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">


<link rel="stylesheet" href="/static/css/normalize.css">
<link rel="stylesheet" href="/static/css/skeleton.css">
<link rel="stylesheet" href="/static/css/style.css">
<link rel="icon" type="image/png" href="images/favicon.png">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<style>
footer {
	margin-top: 0rem !important;
}

.nersr {
	max-width: 800px !important;
	padding-top: 150px !important;
	padding-bottom: 40px !important;
}

.sern {
	background:
		url(https://cdn.lynda.com/static/images/signin-background.jpg) center
		center no-repeat fixed;
	background-size: cover;
}

.crt a {
	color: rgb(30, 174, 219);
	text-decoration: none;
	font-size: 2rem;
}

.bser {
	margin-top: 12px !important;
}

.hrt {
	color: rgb(255, 255, 255);
}

.lab {
	color: rgb(255, 255, 255);
}
</style>



<body>
	<%@ include file="header.jsp"%>


	<div class="sern">
		<div class="container nersr">
			<form method="POST" action="${contextPath}/login" class="form-signin">
				<h2 class="form-heading hrt">Log in</h2>
				<div class="form-group ${error != null ? 'has-error' : ''}">
					<div class="row">
						<div class="six columns">
							<label class="lab" for="exampleEmailInput">Email</label> <span>${message}</span>
							<input class="u-full-width" type="email"  name="username"
								placeholder="test@mailbox.com" id="exampleEmailInput" autofocus="true">
						</div>
					</div>

					<div class="row">
						<div class="six columns">
							<label class="lab" for="exampleEmailInput">Password</label> <input
								class="u-full-width" type="password" name="password" placeholder="Password"
								id="exampleEmailInput"> <span>${error}</span> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</div>
					</div>
					<button class="bser button-primary">Log In</button>
					<h4 class="text-center crt">
						<a href="${contextPath}/registration">Create an account</a>
					</h4>
				</div>
			</form>


		</div>
	</div>



</body>


<%@ include file="footer.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="/static/js/site.js"></script>
<script type="text/javascript" src="/static/js/file.js"></script>
</html>
