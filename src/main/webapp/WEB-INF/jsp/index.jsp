<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <title>Home</title>
  <meta name="description" content="Website to help People">
  <meta name="author" content="Alli Pierre Yotti">


  <meta name="viewport" content="width=device-width, initial-scale=1">


  <link href="//fonts.googleapis.com/css?family=Raleway:400,300,600" rel="stylesheet" type="text/css">


  <link rel="stylesheet" href="/static/css/normalize.css">
  <link rel="stylesheet" href="/static/css/skeleton.css">
  <link rel="stylesheet" href="/static/css/style.css">
  <link rel="stylesheet" href="/static/css/style1.css">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
   <script type="json/javascript"  src="/static/js/file.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <script src="/static/js/site.js"></script>


<style>
.premium-job{
background: rgb(255, 255, 255);
}
html{
  background: rgba(182, 184, 187, 0.22) !important;
}

.header{
  margin-top: 14rem !important;
}
aa{

}

.ner{
  max-width: 800px !important;
  padding-top: 50px !important;
}

.header {

    text-align: center;
    margin-bottom: 4em;
}


.navbar-list{
  float: right !important;
}
.utx{
background: rgb(49, 163, 221) !important;
    padding-left: 20px !important;
    padding-top: 10px !important;
    padding-right: 25px !important;
}
.one.column{
padding-top: 23px;
}

@media (max-width: 750px){

.two.columns {
    padding-top: 14px !important;
}
}
.button.button-primary, button.button-primary, input[type="submit"].button-primary, input[type="reset"].button-primary, input[type="button"].button-primary {
    color: rgb(255, 255, 255);
    background-color: rgb(49, 163, 221) !important;
    border-color: rgb(49, 163, 221) !important;
}
#lb1,#lb2{
color: rgb(255, 255, 255) !important;
}

#sub1{
    color: rgb(255, 255, 255) !important;
    background-color: red !important;
    border-color: red !important;
}
</style>

 
  <link rel="icon" type="image/png" href="images/favicon.png">

</head>
<body>
<%@ include file = "header.jsp" %>
    <div class="container ner">
        <section class="header">
          <h3>Get a <strong>website</strong> created <strong>for</strong> your business for as low as <span class="price"><strong>GHC 299</strong></span><span class="typed-cursor"></span> per year.</h3>
          <a class="button button-primary">Get yours now</a>
          <a class="button">Know more</a>

          <p>Note: This offer is valid until 30th June, 2017</p>

        </section>
      </div>
<div class="container utx">
<form action="/allejob" method="get">
  <div class="row">
    <div class="five columns">
      <label id="lb1" for="whatInput">Was</label>
      <input class="u-full-width" type="text" placeholder="(Jobtitel, Firmenname oder ID)" id="whatInput" name="title">
    </div>
    <div class="five columns">
      <label id="lb2" for="whereInput">Wo</label>
      <input class="u-full-width" type="text" placeholder="(Ort oder 5-stellige PLZ)" id="whereInput" name="location">
    </div>
    <div class="one column">
    <label for="exampleEmailInput"></label>
  <%-- <a class=" sub1 button button-primary" href="allejob" id="sub1"><span class=" fa fa fa-eye"></span> Suchen</a> --%>
  <button class="sub1 button-primary" type="submit" id="sub1"><span class=" fa fa fa-eye"></span> Suchen</button>
  </div>
  </div>
  
</form>
</div>

 <!-- Sponsored ads -->
    <div class="container" style="margin-top: 2em; margin-bottom: 2em;">
       
       <div class="row">
          
          <!-- Premium job 1 -->
          <div class="one-half column premium-job" id="premium-job-1">
             
              <div class="container job-container">
                 
                  <div class="row">
                      <!-- Description -->
                      <div class="two-thirds column">
                          <h5 class="ad-title">Lead Software Developer</h5>
                          <em>Blackground Labs, Koforidua</em>
                          <p>$1,200</p>
                          <a href="" class="button">Details</a>
                      </div>
                      
                      <!-- Company logo -->
                      <div class="one-third column">
                          
                          <img src="/static/images/blackground_logo.jpg" class="u-max-full-width">
                          
                      </div>
                  </div>
              
              </div>
              
          </div>
          
          <!-- Premium job 2 -->
          <div class="one-half column premium-job" id="premium-job-2">
              <div class="container job-container">
                 <c:forEach var="jobhome" items="${jobhome}">
                  <div class="row">
                      <!-- Description -->
                      <div class="two-thirds column">
                          <h5 class="ad-title">Human Resource Manager</h5>
                          <em>${jobhome.company.companyName}, New York</em>
                          <p>$8,200</p>
                          <a href="" class="button">Details</a>
                      </div>
                      
                      <!-- Company logo -->
                      <div class="one-third column">
                          
                          <img src="/static/images/campaigners_icon.png" class="u-max-full-width">
                          
                      </div>
                  </div>
              </c:forEach>
              </div>
          </div>
           
       </div>
        </div>

  

</body>

<%@ include file = "footer.jsp" %>






<script>
var mq = window.matchMedia('@media all and (max-width: 850px)');
if(mq.matches) {
	document.addEventListener("DOMContentLoaded", function(){
		Typed.new(".price", {
			strings: ["GOOD JOBS", "<strong>FREE JOBS</strong>"],
			typeSpeed: 1,
			loop: true
		});
	});
} else {
	document.addEventListener("DOMContentLoaded", function(){
		Typed.new(".price", {
			strings: ["GOOD JOBS", "<strong>FREE JOBS</strong>"],
			typeSpeed: 1,
			loop: false
		});
	});
}


</script>
 <script type="text/javascript"  src="/static/js/file.js"></script>
 <script type="text/javascript"  src="/static/js/typed.js"></script>
 </html>
