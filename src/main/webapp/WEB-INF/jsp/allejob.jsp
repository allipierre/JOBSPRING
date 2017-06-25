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
.fa-dot-circle-o{
color:red;
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

.pagination a:hover:not(.active) {background-color: #ddd;}

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

.headline3 a {
	text-decoration: none !important;
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

	<div class="container utx">
		<form action="/allejob" method="get">
			<div class="row">
				<div class="five columns">
					<label id="lb1" for="exampleEmailInput">Was</label> <input
						class="u-full-width" type="text"
						placeholder="(Jobtitel, Firmenname oder ID)"
						id="exampleEmailInput" name="title">
				</div>
				<div class="five columns">
					<label id="lb2" for="exampleEmailInput">Wo</label> <input
						class="u-full-width" type="text"
						placeholder="(Ort oder 5-stellige PLZ)" id="exampleEmailInput" name="location">
				</div>
				<div class="one column">
					<label for="exampleEmailInput"></label>
					<button class="sub1 button-primary" type="submit" id="sub1"><span class=" fa fa fa-eye"></span> Suchen</button>
				</div>
			</div>

		</form>


	</div>


	<div class="container">
		<c:forEach var="task" items="${taskse}">
			<div class="panel panel-light-content hidden-xs hidden-sm "
				data-automation="jobseeker-jobs">
				<div class="panel-heading">
					<small class="text-muted"> ${task.published}</small>


					<p class="headline3">

						<strong><a
							href="/en/employer/groupe-agri-revolution/recherche-dun-technicien-agricole.html">${task.title}

						</a></strong>
						<c:forEach var="contract" items="${contract}">
							<c:if test="${contract.id == task.contrat}">
								<small>(${contract.coname})</small>
							</c:if>
						</c:forEach>
					</p>




				</div>
				<div class="panel-footer clearfix">
					<c:forEach var="company" items="${company}">
						<c:if test="${company.id == task.company.id}">
							<ul class="list-inline">

								<li class="panel-footer-icon-wrapper"><i class="fa fa-dot-circle-o" aria-hidden="true"></i> <a
									href="/en/employer/groupe-agri-revolution.html" target="_blank"
									class="js-company-name">${company.companyName}</a></li>



								<li class="panel-footer-icon-wrapper"><i class="fa fa-map-marker" aria-hidden="true"></i>${company.city}</li>
								<c:forEach var="tasksen" items="${tasksen}">
									<c:if test="${tasksen.id == task.category}">
										<li class="panel-footer-icon-wrapper"><i class="fa fa-bookmark-o" aria-hidden="true"></i>${tasksen.industryName}</li>
									</c:if>
								</c:forEach>
								<li class="pull-right"><a
									href="/en/employer/groupe-agri-revolution/recherche-dun-technicien-agricole.html"
									class="btn btn-info pull-right icon-eye"><span
										class=" fa fa fa-eye"></span> View Job</a></li>

							</ul>
						</c:if>
					</c:forEach>

				</div>
			</div>
		</c:forEach>
	</div>
	
	<div class="container">
	<div class="pagination">
		<c:if test="${currentPage != 1}">
			<a href="allejob?page=${currentPage - 1}">Previous</a>
		</c:if>
		<c:forEach begin="1" end="${noOfPages}" var="i">
			<c:choose>
				<c:when test="${currentPage eq i}">
					<a class="active">${i}</a>
				</c:when>
				<c:otherwise>
					<a href="allejob?page=${i}">${i}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${currentPage lt noOfPages}">
			<a href="allejob?page=${currentPage + 1}">Next</a>
		</c:if>
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

</script>
<script type="text/javascript" src="/static/js/file.js"></script>
<script type="text/javascript" src="/static/js/typed.js"></script>
</html>
