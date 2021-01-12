<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
		<title>Search</title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="./css/bootstrap.min.css">
    	<link rel="stylesheet" href="./css/rangeslider.css">
    	<link rel="stylesheet" href="./css/style.css">
    	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/loading.css" />
 		<script type="text/javascript" src="./JS/loading.js"></script>
 		 <script type="text/javascript" src="./JS/Search.js"></script>
      
    <script type="text/javascript">

        function showMain()
        {
        	document.getElementById("over").style.visibility ="visible";
        	document.getElementById("thediv").style.display = "block";
        
        }
        
    </script>
</head>



<body data-aos-easing="slide" data-aos-duration="800" data-aos-delay="0">
	<div class="site-wrap" style="display:block" >
		  <div class="site-blocks-cover overlay aos-init aos-animate" style="background-image: url(./img/financeBlur.png); background-position: 50% -25px;" data-aos="fade" data-stellar-background-ratio="0.5">
		  	  <div class="container">
		  	  	<div class="row align-items-center justify-content-center text-center">
		  	  		<div class="col-md-12">
		  	  			<div class="row justify-content-center mb-4">
		  	  				<div class="col-md-8 text-center">
		  	  					<h1 class="aos-init aos-animate" data-aos="fade-up">Search any financial things In The World</h1>
               					 <p data-aos="fade-up" data-aos-delay="100" class="aos-init aos-animate">You can search, surf for anything you want.</p>
		  	  				</div>
		  	  			</div>
							  	  			
		  	  			<div class="form-search-wrap aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
		  	  				<form action='${requestUri}' method='get'  accept-charset="UTF-8"  >
		  	  					<div class="row align-items-center">
		  	  						<div class="col-lg-12 mb-4 mb-xl-0 col-xl-4">
		  	  							<input type="text" name='keyword' class="form-control rounded" placeholder="What are you looking for?">
		  	  						</div>
		  	  					
		  	  						<div class="col-lg-12 col-xl-2 ml-auto text-right">
		  	  							<input type="submit" class="btn btn-primary btn-block rounded" value="Search" id="bt" onclick="return showMain()"  >
		  	  						</div>
		  	  						<div id="over" class="over" style="visibility:hidden" ></div>
									<div class="thediv" id="thediv" style="display:none">
	<div class="wrapper">
  <div class='rainbow'>
    <span></span>
  </div>
  <div class='nyan-cat'>
    <div class='feet'></div>
    <div class='tail'>
      <span></span>
    </div>
    <div class='body'></div>
    <div class='head'></div>
  </div>
  <div class='stars'>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
  </div>
</div>
</div>
		  	  					</div>
		  	  				</form>
		  	  			</div>
		  	  			
		  	  		</div>
		  	  	</div>
		  	  </div>
		  </div>
	</div>

	<div class="wrapper" style="display:none">
  <div class='rainbow'>
    <span></span>
  </div>
  <div class='nyan-cat'>
    <div class='feet'></div>
    <div class='tail'>
      <span></span>
    </div>
    <div class='body'></div>
    <div class='head'></div>
  </div>
  <div class='stars'>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
    <div class='star'>
      <span></span>
    </div>
  </div>

</div>
</body>
</html>