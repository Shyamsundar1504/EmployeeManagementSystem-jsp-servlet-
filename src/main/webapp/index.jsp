



<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Management System</title>
<%@include file="assets/all_css.jsp"%>

<style type="text/css">
.image {
	background-image: url("image/home-img.jpg");
	height: 100vh;
	width: 98.9vw;
	background-repeat: no-repeat;
	background-size: cover;
	/*filter: blur(2px);*/
    /*-webkit-filter: blur(2px);*/
}
/* Media query for tablets */
@media only screen and (max-width: 768px) {
	.image {
		background-image: url("image/home-img.jpg");
	}
}

/* Media query for mobile phones */
@media only screen and (max-width: 480px) {
	.image {
		background-image: url("image/home-img.jpg");
	}
}
.content{
 padding: 180px 50px;
 
}
.content h1{
font-size: 90px;
 
}

</style>
</head>
<body>
	<div class="image">
		<%@include file="assets/navbar.jsp"%>
		
		
		<div class="content text-center text-light">
		   <h1 >Work Together.</h1>
		   <h5 >Everyday, thousands of teams all over the world depends on Flow to share tasks and keep track of what they need to get done. </h5>
		     <section class="mb-4 mt-3">
      <!-- Facebook -->
      <a
        class="btn btn-primary btn-floating m-1"
        style="background-color: #3b5998;border:none;"
        href="#!"
        role="button"
        ><i class="fab fa-facebook fa-2x"></i
      ></a>

      <!-- Twitter -->
      <a
        class="btn btn-primary btn-floating m-1"
        style="background-color: #55acee;border:none;"
        href="#!"
        role="button"
        ><i class="fab fa-twitter fa-2x"></i
      ></a>

      <!-- Google -->
      <a
        class="btn btn-primary btn-floating m-1"
        style="background-color: #dd4b39; border:none;"
        href="#!"
        role="button"
        ><i class="fab fa-google  fa-2x"></i
      ></a>

      <!-- Instagram -->
      <a
        class="btn btn-primary btn-floating m-1"
        style="background-color: #ac2bac; border:none;"
        href="#!"
        role="button"
        ><i class="fab fa-instagram  fa-2x"></i
      ></a>

      <!-- Linkedin -->
      <a
        class="btn btn-primary btn-floating m-1"
        style="background-color: #0082ca;  border:none;"
        href="#!"
        role="button"
        ><i class="fab fa-linkedin-in fa-2x"></i
      ></a>
      <!-- Github -->
      <a
        class="btn btn-primary btn-floating m-1"
        style="background-color: #333333;  border:none;"
        href="#!"
        role="button"
        ><i class="fab fa-github fa-2x"></i
      ></a>
    </section>
		</div>
	</div>

	
	<div style="width: 98.9vw;">
		<%@include file="assets/footer.jsp"%>
	</div>
</body>
</html>
