<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navbar</title>
<%@include file="all_css.jsp" %>
<style type="text/css">
.nav-item>a:hover{
    transform: scale(1.05);
}
#profile_name>h5{
  font-size: 1rem;
}
#profile_name{
   
}

.navbar{
    font-family:sans-serif;
}

.signin_form{
    padding-left: 75%;
    display: flex;
    gap:0.5rem;
} 
.signin_form div a{
    border-radius: 5px;
    border : 1px solid white;
    font-weight: 700;
    font-size: 0.9rem;
    background-color: transparent !important;
    color:white;
}
 .signin_form div a:hover{
    
    color:#e6e6e6;
    border-radius: 5px;
    border : 1px solid #1aa3ff;
    font-weight: 700;
    font-size: 0.9rem;
} 
.thead{
   background-color: #5cc3f7;    
}
</style>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand text-light" href="#"><i class="fa-brands fa-unity text-light pl-5"></i> <b>EMS</b></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <% if(session.getAttribute("name")==null){%>
     
         <form class="form-inline my-2 my-lg-0 signin_form ml-5">
            <div><a class="btn " href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i> LOG IN</a></div>
            <div><a class="btn" href="signup.jsp"><i class="fa-regular fa-user"></i> SIGN UP</a></div>
         </form>
      <%  }else{ %>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active"><a class="nav-link text-light" href="home.jsp" ><i class="fa-solid fa-house-chimney"></i> Home</a></li>
      </ul>
      <div id="profile_name">
         <h5 class="btn border border-light rounded-pill text-light mt-1"><%=session.getAttribute("name")%> <i class="fa-solid fa-circle-user"></i></h5>
      </div>
      <%  } %>
  </div>
</nav> 

<script type="text/javascript">
  <%@ include file="js/navbar.js" %>
</script>
</body>
</html>
