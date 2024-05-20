<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@include file="assets/all_css.jsp" %>
<style>
*{
padding: 0;
margin: 0;
}
body{

}
   #main_div {
   /*  background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(86, 24, 122, 1) 100%); */
   background-image: url("image/home-img.jpg");
   
	/* height: 100vh;
	width: 98.9vw; */
	background-repeat: no-repeat;
	background-size: cover;
    height: 100vh;
    width: 100vw;
    display: flex;
    justify-content: center;
    align-items: center;
}

#box{
    background: rgba(255, 255, 255, 0.2);
    box-shadow: 0 4px 30px rgba(225, 225, 225, 0.1);
    border-radius: 10px;
    width: 28rem;
    height: 27rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 2rem;
}
#box>h3{
color:white;
margin-top: 1rem;
}

.ins_box{
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
}

.label{
    font-weight: 700;
    font-family: sans-serif;
    font-size: 1rem;
    color: white;
    padding-left:1rem;
   
}

.ins_box>input{
    background: rgba(255, 255, 255, 0.2);
    box-shadow: 0 4px 30px rgba(225, 225, 225, 0.1);
    border-radius: 20rem;
    height: 3rem;
    width: 23rem;
    border: none;
    color: #ffffff;
    padding: 0 1rem;
    font-size: 1rem;
    font-weight: 500;
}

#button{
    box-shadow: 0 4px 30px rgba(190, 190, 190, 0.183);
     background: rgba(255, 255, 255, 0.2);
   /*  background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(86, 24, 122, 1) 100%); */
    padding: 1rem 3rem;
   /*  color: #ffffff; */
    border: 1px solid white;
    border-radius: 40px;
    font-weight: 600;
    font-family: sans-serif;
    font-size: 1rem;
    cursor: pointer;
}

#button:hover{
    transform: scale(1.05);
}

</style>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">	
<div id="main_div">
                <form action="login" method="post">
                    <div id="box">
                      <h3>Login</h3>
                        <div  class="ins_box">
                            <label for="email" class="label"><i class="fa-solid fa-circle-user"></i> Email</label>
                            <input type="email" name="email" id="email" placeholder="abc@gmail.com" required />
                        </div>
                        <div class="ins_box">
                            <label for="password" class="label" ><i class="fa-solid fa-lock"></i> Password</label>
                            <input type="password" name="password" id="password" placeholder="Enter Password" required  />
                        </div>
                        <button id="button" type="submit">SUBMIT</button>
                         <p class="text-white">Don't have an account ? <a href="signup.jsp" class="text-decoration-none">SIGN UP</a></p>
                    </div>
                   
                </form>
            </div>
            
            	<script type="text/javascript">
  var status=document.getElementById("status").value;
 
  if(status == "invalid"){
	  swal("sorry","Invalid email & password .","error");
  }

 

</script>
            
</body>
</html>