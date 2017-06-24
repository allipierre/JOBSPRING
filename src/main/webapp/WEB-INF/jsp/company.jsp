<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html lang="en">
<head>

    <meta charset="utf-8">
    <title>All-Jobs</title>
    <meta name="description" content="Website to help People">
    <meta name="author" content="Alli Pierre Yotti">


    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">


    <link rel="stylesheet" href="/static/css/normalize.css">
    <link rel="stylesheet" href="/static/css/skeleton.css">
    <link rel="stylesheet" href="/static/css/style.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <script type="json/javascript" src="/static/js/file.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="/static/js/site.js"></script>


    <style>
    
        #usernameInput {
            background: rgb(47, 171, 77) !important;
            color: rgb(255, 255, 255) !important;
            font-size: 2rem !important;
            font-weight: bold !important;
        }

        #companyIndustry, #companyLocation, #companySize {
            display: none;
        }

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

        .panel-light-content > .panel-heading {
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

        body h1, body .h1, body h2, body .h2, body h3, body .h3, body h4, body .h4, body h5, body .h5, body .headline1, body .headline2, body .headline3, body .headline4, body .headline5, body .headline6 {
            color: rgb(44, 44, 44);
            font-family: 'open_sansregular', Helvetica, Arial, sans-serif, "Zawgyi-One", "noto_sans_sinhalaregular";
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

        .list-inline > li {
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

        .one.column {
            padding-top: 23px;
        }
        
        
.custom-file-input::-webkit-file-upload-button {
  visibility: hidden;
}
.custom-file-input::before {
  content: 'Upload';
  color: black;
  display: inline-block;
  background: -webkit-linear-gradient(top, #f9f9f9, #e3e3e3);
  border: 1px solid #999;
  border-radius: 3px;
  padding: 5px 8px;
  outline: none;
  white-space: nowrap;
  -webkit-user-select: none;
  cursor: pointer;
  text-shadow: 1px 1px #fff;
  font-weight: 700;
  font-size: 10pt;
}
.custom-file-input:focus{
  outline:none !important
}
.custom-file-input:hover::before {
  border-color: black;
}
.custom-file-input:active {
  outline: 0 !important;
  outline: none !important;
}

.custom-file-input:active {
    outline: 0 !important;
}
.custom-file-input:active::before {
  background: -webkit-linear-gradient(top, #e3e3e3, #f9f9f9); 
}



        @media (max-width: 750px) {

            .two.columns {
                padding-top: 14px !important;
            }
        }

        .button.button-primary, button.button-primary, input[type="submit"].button-primary, input[type="reset"].button-primary, input[type="button"].button-primary {
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

</head>
<body>
<%@ include file="header.jsp" %>
<div class="container ner">
    <section class="header">
        <h3>Get a <strong>website</strong> created <strong>for</strong> your business for as low</h3>
    </section>
</div>

<div class="container">

    <form method="POST" action="company" name="newsletter">
        <div class="row">
            <div class="six columns">
                <label for="companyNameInput">Company Name</label>
                <input class="u-full-width" type="text" placeholder="Company Name" id="companyNameInput"
                       name="companyName"
                       value="${company.companyName}">
            </div>
            <div class="six columns">
                <label for="countryInput">Country</label>
                <select class="u-full-width" id="countryInput" name="countryId">
                    <option value="" disabled="disabled" selected="selected">Select the Country</option>
                    <c:forEach var="country" items="${countries}">
                        <c:choose>
                            <c:when test="${country.id == company.countryId}">
                                <option id="countryID" value="${country.id}" selected="selected">${country.name}</option>
                            </c:when>
                            <c:when test="${country.id != company.countryId}">
                                <option id="countryID" value="${country.id}">${country.name}</option>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="six columns">
                <label for="cityNameInput">City Name</label>
                <input class="u-full-width" type="text" placeholder="City Name" id="cityNameInput" name="city"
                       value="${company.city}">
            </div>
            <div class="six columns">
                <label for="sizeInput">Size</label>
                <select class="u-full-width" id="sizeInput" name="sizeId">
                    <option value="" disabled="disabled" selected="selected">Select the Company Size (No. of
                        employees)
                    </option>
                    <c:forEach var="companySize" items="${companySize}">
                        <c:choose>
                            <c:when test="${company.companySize.id == companySize.id}">
                                <option value="${company.companySize.id}" selected="selected">${companySize.value}</option>
                            </c:when>
                            <c:when test="${company.companySize.id != companySize.id}">
                                <option value="${companySize.id}">${companySize.value}</option>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                </select>
            </div>
        </div>


        <div class="row">
            <div class="six columns">
                <label for="websiteInput">Website</label>
                <input class="u-full-width" type="text" placeholder="Website" id="websiteInput" name="website"
                       value="${company.website}">
            </div>
            <div class="six columns">
                <label for="industryInput">Industry</label>
                <select class="u-full-width" id="industryInput" name="industryId">
                    <option disabled="disabled" selected="selected">Select the Company Industry</option>
                    <c:forEach var="industry" items="${industries}">
                        <c:choose>
                            <c:when test="${industry.id == company.industry.id}">
                                <option value="${company.industry.id}"
                                        selected="selected">${industry.industryName}</option>
                                <!-- skip -->
                            </c:when>
                            <c:when test="${industry.id != company.industry.id}">
                                <option value="${industry.id}">${industry.industryName}</option>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                </select>
            </div>
        </div>
        <label for="about">About Us</label>
        <textarea class="u-full-width" placeholder="About Us" id="about" name ="about"  value ="${company.about}">${company.about}</textarea>
          <label for="icon">Upload Logo</label>
         <input type="file" name="file" id="file" onchange="uploadFile" class="custom-file-input">
        <div class="row">
            <div class="one columns">
                <input class="u-full-width" type="text" placeholder="company Industry" id="companyIndustry"
                       name="industryId" value="${company.industryId}">
            </div>

            <div class="one columns">
                <input class="u-full-width" type="text" placeholder="company Location" id="companyLocation"
                       name="location" value="${company.location}">
            </div>

            <div class="one columns">
                <input class="u-full-width" type="text" placeholder="company Size" id="companySize" name="numbere"
                       value="${company.numbere}">
            </div>
        </div>

        <input class="button-primary" type="submit" value="SAVE">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>


</div>


</body>


<%@ include file="footer.jsp" %>


<script>
    $(function () {
        $("#header").load("header.html");
    });
    document.addEventListener("DOMContentLoaded", function () {
        Typed.new(".price", {
            strings: ["GHC 500", "<strong>GHC 299</strong>"],
            typeSpeed: 1,
            loop: true
        });
    });

    $("#industryInput").change(function () {
        $("#companyIndustry").val($(this).val());
    });
    $("#countryInput").change(function () {
        $("#companyLocation").val($(this).val());
    });
    $("#sizeInput").change(function () {
        $("#companySize").val($(this).val());
    });
    $("#usernameInput").prop("disabled", true);


    var uploadFile = function(){
    	 
    	var xhr = new XMLHttpRequest();
    	var file = document.getElementById('file').files[0];
    	var dropboxToken = 'b2ulUPeeUAAAAAAAAAAAQrusldDcAXOq5w4WNSDGsDMERuJ8lDm5z-chDTODRg4O';
    	 
    	xhr.upload.onprogress = function(evt) {
    	  var percentComplete = parseInt(100.0 * evt.loaded / evt.total);
    	  // Upload in progress. Do something here with the percent complete.
    	};
    	 
    	xhr.onload = function() {
    	  if (xhr.status === 200) {
    	    var fileInfo = JSON.parse(xhr.response);
    	    // Upload succeeded. Do something here with the file info.
    	  }
    	  else {
    	    var errorMessage = xhr.response || 'Unable to upload file';
    	    // Upload failed. Do something here with the error.
    	  }
    	};
    	 
    	xhr.open('POST', 'https://content.dropboxapi.com/2/files/upload');
    	xhr.setRequestHeader('Authorization', 'Bearer ' + dropboxToken);
    	xhr.setRequestHeader('Content-Type', 'application/octet-stream');
    	xhr.setRequestHeader('Dropbox-API-Arg', JSON.stringify({
    	  path: '/blackground' +  file.name,
    	  mode: 'add',
    	  autorename: true,
    	  mute: false
    	}));
    	 
    	xhr.send(file);
      }

   
	document.forms.newsletter.addEventListener('submit', function cb(evt) {
		evt.preventDefault()
	
		// API key from here: https://dropbox.github.io/dropbox-api-v2-explorer/#files_upload
		// need to consider how this gets secured
		var TOKEN = 'b2ulUPeeUAAAAAAAAAAAQrusldDcAXOq5w4WNSDGsDMERuJ8lDm5z-chDTODRg4O'		
		var dir = 'blackground/'
		var file = document.getElementById('file').files[0]		
		var promise = new Promise(function (resolve, reject) {
	
			// Dropbox requires application/octet-stream
			var xhr = new XMLHttpRequest();
			
			xhr.onload = function() {
				if (xhr.status === 200) {
					resolve(JSON.parse(xhr.response));
				}
				else {
					reject(xhr.response || 'Unable to upload file');
				}
			};
			
			xhr.open('POST', 'https://content.dropboxapi.com/2/files/upload');
			xhr.setRequestHeader('Authorization', 'Bearer ' + TOKEN);
			xhr.setRequestHeader('Content-Type', 'application/octet-stream');
			xhr.setRequestHeader('Dropbox-API-Arg', JSON.stringify({
				path: '/' + dir + file.name,
				mode: 'add',
				autorename: true,
				mute: false
			}));
			
			xhr.send(file);
		})
		
		promise
		.then(function (result) {
			// Save dropbox response to form
			document.getElementById('dropbox').value = JSON.stringify(result)
			
			// Submit form on successful upload
			evt.target.submit()
		})
		.catch(function (err) {
			console.log('a');
		})
		
		return false
	})



    
</script>
<script type="text/javascript" src="/static/js/file.js"></script>
<script type="text/javascript" src="/static/js/typed.js"></script>
</html>
