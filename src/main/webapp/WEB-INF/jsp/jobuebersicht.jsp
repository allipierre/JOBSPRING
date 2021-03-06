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

	<!-- job heading -->
	<div class="container">
		<div class="row">
			<div class="four columns">
				<img src="" class="u-max-full-width " id="image"
					alt="Jumia jobs in Cameroon" style="height: 200px;">
			</div>
			<script>
				var token = 'b2ulUPeeUAAAAAAAAAAAQrusldDcAXOq5w4WNSDGsDMERuJ8lDm5z-chDTODRg4O';
				var actu = '${job.company.file}';
				var xhr = new XMLHttpRequest();
				xhr.responseType = 'blob';
				xhr.onreadystatechange = function() {
					if (xhr.readyState === 4 && xhr.status === 200) {
						var imageUrl = (window.URL || window.webkitURL)
								.createObjectURL(xhr.response);

						document.getElementById('image').src = imageUrl;

						var a = document.createElement('a');
					}
				};
				xhr.open('GET',
						'https://content.dropboxapi.com/2/files/download');
				xhr.setRequestHeader('Authorization', 'Bearer ' + token);
				xhr.setRequestHeader('Dropbox-API-Arg', JSON.stringify({
					path : '/blackground/' + actu
				}));
				xhr.send();
			</script>
			<div class="seven columns">
				<h3>${job.title}</h3>
				<h4>
					<a href="/en/employer/jumia.html">Jumia</a>
				</h4>
				<p>
					<a class="hidden-print" href="/en/employer/jumia.html"> <i
						class="icon icon-home"></i> View company profile
					</a>
				</p>
				<a class="button button-primary" href="apply?id=${job.id}">Apply now</a>
			</div>
			
		</div>
		<div class="row">
			<div class="col-xs-12">
				<p>
					Reference: <strong>JBLB793566</strong><br> Start date: <strong>03
						July 2017</strong>
				</p>
				<p></p>
				<p></p>
			</div>
		</div>
	</div>

	<!-- #job heading -->
	<div class="container">
		<div class="row">
			<div class="five columns">
				<!-- job details -->
				<h4 class="dl-title">Job Details</h4>
				<div class="divider"></div>
				<dl class="dl-horizontal">
					<dt>City:</dt>
					<dd>${job.company.city}</dd>
					<dt>Job Location:</dt>
					<dd>Cameroon</dd>
					<dt>Contract Type:</dt>
					<dd>Internship</dd>
					<dt>Job category:</dt>
					<dd>Customer Support</dd>
				</dl>
				<!-- #job details -->
			</div>
			<div class="five columns">
				<!-- company details -->
				<h4 class="dl-title">Company Details</h4>
				<div class="divider"></div>
				<dl class="dl-horizontal">
					<dt>Company industry:</dt>
					<dd>Retail</dd>
					<dt>No. of Employees:</dt>
					<dd>21-50</dd>
				</dl>
				<!-- #company details -->
			</div>
		</div>
	</div>

	<!-- #job Description -->
	<div class="container">
		<div class="row">
			<div class="eleven columns">
				<!-- job details -->
				<h4 class="dl-title">Job Description</h4>
				<div class="divider"></div>
				<dl class="dl-horizontal">
					<dt>Description:</dt>
					<dd>${job.description}</dd>
					<dt>Job Location:</dt>
					<dd>Cameroon</dd>
					<dt>Contract Type:</dt>
					<dd>Internship</dd>
					<dt>Job category:</dt>
					<dd>Customer Support</dd>
				</dl>
				<!-- #job details -->
			</div>
		</div>
	</div>


	<!-- #job Description -->
	<div class="container">
		<div class="row">
			<div class="eleven columns">
				<!-- job details -->
				<h4 class="dl-title">Position Requirements</h4>
				<div class="divider"></div>
				<dl class="dl-horizontal">
					<dt>Requirements:</dt>
					<dd>${job.position}</dd>
					<dt>Job Location:</dt>
					<dd>Cameroon</dd>
					<dt>Contract Type:</dt>
					<dd>Internship</dd>
					<dt>Job category:</dt>
					<dd>Customer Support</dd>
				</dl>
				<!-- #job details -->
			</div>
		</div>
	</div>
	<div class="container">
		<a class="button button-primary" href="apply?id=${job.id}">Apply now</a>
	</div>





</body>


<%@ include file="footer.jsp"%>






<script type="text/javascript" src="/static/js/file.js"></script>
<script type="text/javascript" src="/static/js/typed.js"></script>
</html>
