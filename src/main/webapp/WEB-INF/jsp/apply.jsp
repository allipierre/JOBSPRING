<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="en">
<head>

<meta charset="utf-8">
<title>All-Jobs</title>
<meta name="description" content="Website to help People">
<meta name="author" content="Alli Pierre Yotti">


<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="//fonts.googleapis.com/css?family=Raleway:400,300,600"
	rel="stylesheet" type="text/css">


<link rel="stylesheet" href="/static/css/normalize.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css">
<link rel="stylesheet" href="/static/css/skeleton.css">
<link rel="stylesheet" href="/static/css/style.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet">
<script type="json/javascript" src="/static/js/file.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="/static/js/site.js"></script>


<style>
.pull-right {
	float: right;
}

.panel, .panel-heading {
	-webkit-border-radius: 0 !important;
	-moz-border-radius: 0 !important;
	border-radius: 0 !important;
	-moz-background-clip: padding;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
}

.panel-light-content {
	border-color: rgb(224, 225, 229);
}

.hidden-sm {
	display: block !important;
}

.panel-light-content>.panel-heading {
	color: rgb(102, 102, 102);
	background-color: rgb(255, 255, 255);
	border-color: rgb(224, 225, 229);
}
#container {
  margin: 20px;
  width: 200px;
  height: 200px;
}
#image {
	background-color: red;
	border-color: red !important;
}

input[type="email"], input[type="number"], input[type="search"], input[type="text"],
	input[type="tel"], input[type="url"], input[type="password"], textarea,
	select {
	height: 38px;
	padding: 6px 100px !important;
	background-color: rgb(209, 209, 209) !important;
	border: none !important;
	border-radius: 4px;
	box-shadow: none;
	box-sizing: border-box;
	/* visibility: visible; */
	/* display: none; */
}

label, legend {
	display: inline !important;
	margin-bottom: .5rem;
	font-weight: 600;
}

body {
	background-color: rgba(182, 184, 187, 0.22) !important;
}

.panel-heading {
	padding: 10px 15px;
	border-bottom: 1px solid rgba(0, 0, 0, 0);
}

.text-muted {
	color: rgb(153, 153, 153);
}

.small, .small {
	font-size: 85%;
}

#job-search-content .panel-heading .headline3 {
	margin: 0 0 10px 0;
}

body h1, body .h1, body h2, body .h2, body h3, body .h3, body h4, body .h4,
	body h5, body .h5, body .headline1, body .headline2, body .headline3,
	body .headline4, body .headline5, body .headline6 {
	color: rgb(44, 44, 44);
	font-family: 'open_sansregular', Helvetica, Arial, sans-serif,
		"Zawgyi-One", "noto_sans_sinhalaregular";
}

a {
	color: rgb(34, 125, 188);
}

#job-search-content .panel-heading .headline3 small {
	color: rgb(166, 176, 178);
}

small, .small {
	font-size: 85%;
}

#job-search-content .panel-footer {
	padding: 10px 10px;
	border-top: 0;
}

.panel-light-content .panel-footer {
	background-color: rgb(255, 255, 255);
}

.fa-dot-circle-o {
	color: red;
}

.panel-footer {
	padding: 10px 15px;
	background-color: rgb(245, 245, 245);
}

.clearfix:before, .clearfix:after {
	content: " ";
	display: table;
}

.list-inline {
	margin: 0;
}

.list-inline {
	padding-left: 0;
	list-style: none;
}

#job-search-content .panel-footer .panel-footer-icon-wrapper {
	font-size: 12px;
}

#job-search-content .panel-footer li {
	padding-top: 6px;
	color: rgb(166, 176, 178);
}

.list-inline>li {
	display: inline-block;
	padding-left: 5px;
	padding-right: 5px;
}

.icon {
	font-family: 'intjobs';
	display: inline-block;
	min-width: 1em;
	text-align: center;
	cursor: inherit;
	font-weight: 400;
}

job-search-content .panel-footer li:last-child {
	padding-top: 0;
	padding-right: 0;
}

#job-search-content .panel-footer li {
	padding-top: 6px;
	color: rgb(166, 176, 178);
}

#job-search-content .panel-footer .btn {
	min-width: 130px;
}

.btn:active, .btn:focus, .btn:hover, .btn:visited {
	outline: none !important;
}

.wrap .btn {
	font-weight: 600;
}

.wrap .btn {
	font-weight: 600;
}

.btn-submit, .btn-info, .save {
	background-color: rgb(5, 114, 206) !important;
	color: rgb(255, 255, 255) !important;
	border: 0;
	padding: 8px 12px;
	border-width: .1rem;
	border-color: rgb(4, 100, 181);
}

.fa-eye {
	padding-top: 2px;
}

/*    */
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

.utx {
	background: rgb(49, 163, 221) !important;
	padding-left: 20px !important;
	padding-top: 10px !important;
	padding-right: 25px !important;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
}

.pagination



 



a






:hover






:not



 



(
.active



 



)
{
background-color






:



 



#ddd






;
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

a {
	text-decoration: none !important;
}

#sub1 {
	color: rgb(255, 255, 255) !important;
	background-color: red !important;
	border-color: red !important;
}

.headline3 a {
	text-decoration: none !important;
}

.dl-horizontal dt {
	float: left;
	overflow: show;
	text-overflow: clip;
	white-space: pre-wrap;
	width: 160px;
	clear: left;
	text-align: left;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	text-transform: capitalize;
}

.dl-horizontal dd {
	margin-left: 160px;
}
</style>


<link rel="icon" type="image/png" href="images/favicon.png">

</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container ner">
		<input type="hidden" value="blackground_logo.jpg" id="userimage">

		<section class="header">
			<h3>
				Get a <strong>website</strong> created <strong>for</strong> your
				business for as low
			</h3>
		</section>
	</div>



	<!-- #job Apply -->
	<div class="container">
		<div class="row">
			<div class="six columns">
				<!-- job details -->
				<h4 class="dl-title">Apply for this job</h4>
				<div class="divider"></div>
				<dl class="dl-horizontal">
					<dt>Job title:</dt>
					<dd id="title" style="color: rgb(49, 163, 221);">${job.title}</dd>
					<dt>Company name:</dt>
					<dd id="compname" style="color: rgb(49, 163, 221);">${job.company.companyName}</dd>
				</dl>
				<!-- #job details -->
			</div>
			<div class="five columns">
				<!-- company details -->
				<h4 class="dl-title">Your contact information</h4>
				<div class="divider"></div>
				<dl class="dl-horizontal">
					<dt>Email address:</dt>
					<dd id="userfrom">${pageContext.request.userPrincipal.name}</dd>
					<dt>Email address:</dt>
					<dd id="userto">${job.company.user.username}</dd>
				</dl>
				<!-- #company details -->
			</div>
		</div>
	</div>

	<div class="container">
		<label for="about">Enter a cover letter</label>
		<form method="POST" action="sendmail">
			<textarea style="background: white !important; min-height: 200px;"
				class="u-full-width" placeholder="Enter Message here..." id="covere"
				name="covere"></textarea>
			<input class="u-full-width" type="hidden" name="title"
				value="${job.title}"> <input class="u-full-width"
				type="hidden" name="username"
				value="${pageContext.request.userPrincipal.name}"> <input
				class="u-full-width" type="hidden" name="usernameto"
				value="${job.company.user.username}"> <input
				class="button-primary" type="submit" value="Send"> <input
				type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
		<a onclick="void(0);" type="submit" class="bts button button-primary"
			id="vuta">Send</a>
	</div>







</body>


<%@ include file="footer.jsp"%>
<script>
"use strict";
	sendMessage();
</script>





<script type="text/javascript" src="/static/js/file.js"></script>
<script type="text/javascript" src="/static/js/typed.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js"></script>
</html>
