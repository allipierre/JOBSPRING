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

.pull-right {
	float: right;
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





thead{
background: rgb(49, 163, 221) !important;
}

body {
    background: rgb(255, 255, 255) !important;
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



.button.button-primary.edit, button.button-primary.edit, input[type="submit"].button-primary.edit, input[type="reset"].button-primary.edit, input[type="button"].button-primary.edit {
    color: rgb(255, 255, 255) !important;
    background-color: rgb(92, 184, 92) !important;
    border-color: rgb(92, 184, 92) !important;
}

.button.button-primary.delete, button.button-primary.delete, input[type="submit"].button-primary.delete, input[type="reset"].button-primary.delete, input[type="button"].button-primary.delete {
   color: rgb(255, 255, 255) !important;
    background-color: rgb(217, 83, 79) !important;
    border-color: rgb(217, 83, 79) !important;
}

.show{
    color: rgb(255, 255, 255) !important;
}






#lb1, #lb2 {
	color: rgb(255, 255, 255) !important;
}





#sub1 {
	color: rgb(255, 255, 255) !important;
	background-color: red !important;
	border-color: red !important;
}

th, td {
    border: 1px solid rgb(225, 225, 225) !important;
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
		
			<table id="users" class="u-full-width">
				<thead>
					<tr class="headertable">
						<th>Id</th>
						<th>Category</th>
						<th>Title</th>
						<th>Date Created</th>
						<th>Contract</th>
						<th>Experience</th>
						<th></th>
						<th></th>
						<th></th>
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
							<td><a class="button button-primary show" href="#">show</a></td>
							<td><a class="button button-primary edit" href="#">edit</a></td>
							<td><a class="button button-primary delete" href="#">delete</a></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>

		
	</div>




</body>


<%@ include file="footer.jsp"%>






<script type="text/javascript" src="/static/js/file.js"></script>
<script type="text/javascript" src="/static/js/typed.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</html>
