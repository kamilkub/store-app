<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <link href="https://fonts.googleapis.com/css?family=Lobster|Open+Sans:400,700&amp;subset=latin-ext" rel="stylesheet" />
   <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" />
   <link href="<c:url value="/resources/bootstrap/css/login.css" />" rel="stylesheet" /> 
   <title>Spring Security Shop</title>
</head>
<body>
  <!--  <div id="top">
  </div> -->
           <div id="container">
                     <h1>Login!</h1>
                 <form action="${pageContext.request.contextPath}/login" method="POST" >
          <label>Email</label>
                  <br>
                  <input type="text" name="username" id="username" />
                  <br>
          <label>Password</label>
                  <br>
                  <input type="password" name="password" id="password" />
                  <br>
                  <c:if test="${not empty error}">
                      <h2 style="color:red;">${error}</h2>
                  </c:if>
                  <input type="submit" name="click" value="Sign in" />
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                 </form>

      <br><br><br><br>  <br><br><br>
      <p>@Copyright 2018 . Privacy . Terms</p>

           </div>

    <div id="bottom"></div>
</body>
</html>
