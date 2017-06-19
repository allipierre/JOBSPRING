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



a {
	color: rgb(34, 125, 188);
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

.button.button-primary.deletee, button.button-primary.deletee, input[type="submit"].button-primary.deletee, input[type="reset"].button-primary.deletee, input[type="button"].button-primary.deletee {
   color: rgb(255, 255, 255) !important;
    background-color: rgb(217, 83, 79) !important;
    border-color: rgb(217, 83, 79) !important;
}

.show{
    color: rgb(255, 255, 255) !important;
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
							<td><a class="button button-primary deletee" href="#">delete</a></td>
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
