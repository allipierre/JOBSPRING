<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<title>Home</title>
<meta name="description" content="Website to help People">
<meta name="author" content="Alli Pierre Yotti">


<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="//fonts.googleapis.com/css?family=Raleway:400,300,600"
	rel="stylesheet" type="text/css">


<link rel="stylesheet" href="/static/css/normalize.css">
<link rel="stylesheet" href="/static/css/skeleton.css">
<link rel="stylesheet" href="/static/css/style.css">
<link rel="stylesheet" href="/static/css/style1.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="/static/js/site.js"></script>

</head>
<style>
html {
	background: rgba(182, 184, 187, 0.22) !important;
}

.header {
	margin-top: 14rem !important;
}

aa {
	
}

.ner {
	max-width: 800px !important;
	padding-top: 50px !important;
}

.header {
	text-align: center;
	margin-bottom: 4em;
}

.navbar-list {
	float: right !important;
}

.one.column {
	padding-top: 23px;
}

@media ( max-width : 750px) {
	.two.columns {
		padding-top: 14px !important;
	}
}

.button.button-primary, button.button-primary, input[type="submit"].button-primary,
	input[type="reset"].button-primary, input[type="button"].button-primary
	{
	color: rgb(255, 255, 255);
	background-color: rgb(49, 163, 221) !important;
	border-color: rgb(49, 163, 221) !important;
}

#lb1, #lb2 {
	color: rgb(255, 255, 255) !important;
}

#sub1 {
	color: rgb(255, 255, 255) !important;
	background-color: red !important;
	border-color: red !important;
}
</style>


<link rel="icon" type="image/png" href="images/favicon.png">


<body>
	<nav class="navbar">
		<div class="container">
			<div class="four columns twoc">
				<a href="/"><img src="/static/images/blackground_jobs-01.png"
					class="u-max-full-width"></a>
			</div>
			<ul class="navbar-list" id="pana">
				<li class="navbar-item"><a class="navbar-link" href="/">Home</a></li>
				<li class="navbar-item"><a class="navbar-link" href="#"
					data-popover="#codeNavPopover">Code</a>
					<div id="codeNavPopover" class="popover">
						<ul class="popover-list">
							<li class="popover-item"><a class="popover-link" href="list">Dynamic
									List</a></li>
							<li class="popover-item"><a class="popover-link"
								href="datatable">Datatable</a></li>
							<li class="popover-item"><a class="popover-link"
								href="chart">Charts</a></li>
						</ul>
					</div></li>
				<li class="navbar-item"><a class="navbar-link" href="#examples">Examples</a></li>
				<li class="navbar-item"><a class="navbar-link" href="#"
					data-popover="#moreNavPopover">Employees</a>
					<div id="moreNavPopover" class="popover">
						<ul class="popover-list">
							<li class="popover-item"><a class="popover-link"
								href="company">Create profile</a></li>
							<li class="popover-item"><a class="popover-link" href="post">Post
									a Job</a></li>
							<li class="popover-item"><a class="popover-link"
								href="createcountries">Admin</a></li>
						</ul>
					</div></li>
				<li class="navbar-item"><a class="navbar-link" href="#"
					data-popover="#moreNavPopovere">${pageContext.request.userPrincipal.name}</a>
					<div id="moreNavPopovere" class="popover">
						<ul class="popover-list">


							<li class="popover-item"><a class="popover-link"
								href="myjob">My Job</a></li>
							<li class="popover-item"><a class="popover-link"
								onclick="document.forms['logoutForm'].submit()">Logout</a></li>
						</ul>
					</div></li>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<form id="logoutForm" method="POST" action="${contextPath}/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</c:if>
			</ul>
		</div>
	</nav>






</body>









<script type="text/javascript" src="/static/js/file.js"></script>

</html>
