<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">
<head>

<meta charset="utf-8">
<title>All-Jobs</title>
<meta name="description" content="Website to help People">
<meta name="author" content="Alli Pierre Yotti">


<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="//fonts.googleapis.com/css?family=Raleway:400,300,600"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">


<link rel="stylesheet" href="/static/css/normalize.css">
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
#companyIndustry, #companyLocation, #companySize {
	display: none;
}

.pull-right {
	float: right;
}

.button.button-primary, button.button-primary, input[type="submit"].cancel.button-primary,
	input[type="reset"].button-primary, input[type="button"].button-primary
	{
	background-color: rgb(255, 255, 255) !important;
	border-color: rgb(167, 167, 167) !important;
	color: rgb(0, 0, 0) !important;
}

.cancel:hover {
	color: rgb(0, 0, 0) !important;
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

thead{
background: rgb(49, 163, 221) !important;
}
/*    */
html {
	background: rgba(182, 184, 187, 0.22) !important;
}

.header {
	margin-top: 14rem !important;
}

.headertable{
color: rgb(255, 255, 255) !important;
}
th{
text-align: center !important;
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

.ui-widget-header {
	border: 1px solid rgb(221, 221, 221);
	background: rgb(34, 125, 188) !important;
	color: rgb(255, 255, 255) !important;
	font-weight: bold;
}

.ui-state-default, .ui-widget-content .ui-state-default,
	.ui-widget-header .ui-state-default, .ui-button, html .ui-button.ui-state-disabled:hover,
	html .ui-button.ui-state-disabled:active {
	border: 1px solid rgb(197, 197, 197) !important;
	background: rgb(49, 163, 221) !important;
	font-weight: normal;
	color: rgb(255, 255, 255) !important;
}

#sub1 {
	color: rgb(255, 255, 255) !important;
	background-color: red !important;
	border-color: red !important;
}
</style>


<link rel="icon" type="image/png" href="images/favicon.png">

</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="container ner">
		<section class="header">
			<h3>
				Get a <strong>website</strong> created <strong>for</strong> your
				business for as low
			</h3>
		</section>
	</div>


	<div class="container text-center" id="tasksDIV">
		
		<hr>
		<div class="table-responsive">
			<table id="users" class="table table-striped table-bordered, u-full-width">
				<thead>
					<tr class="headertable">
						<th>Id</th>
						<th>Category</th>
						<th>Title</th>
						<th>Date Created</th>
						<th>Contract</th>
						<th>Experience</th>
						<th>action</th>
						<th>action</th>
						<th>action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="jobs" items="${jobs}">
						<tr>
							<td>${jobs.id}</td>
							<td>${jobs.category}</td>
							<td>${jobs.title}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
									value="${jobs.published}" /></td>
									<td>${jobs.contrat}</td>
							<td>${jobs.minimumExperienceYears}</td>
							<td><a class="button button-primary" href="#">Anchor button</a></td>
							<td><a class="button button-primary" href="#">Anchor button</a></td>
							<td><a class="button button-primary" href="#">Anchor button</a></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>




</body>


<%@ include file="footer.jsp"%>





<script>
$(function(){
$("#header").load("header.html");
});
document.addEventListener("DOMContentLoaded", function(){
	Typed.new(".price", {
		strings: ["GHC 500", "<strong>GHC 299</strong>"],
		typeSpeed: 1,
		loop: true
	});
});

$( "#industryInput" ).change(function() {  $( "#companyIndustry").val($(this).val()); });
$( "#countryInput" ).change(function() {  $( "#companyLocation").val($(this).val()); });
$( "#sizeInput" ).change(function() {  $( "#companySize").val($(this).val()); });

</script>
<script type="text/javascript" src="/static/js/file.js"></script>
<script type="text/javascript" src="/static/js/typed.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
</html>
