<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
       
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>login</h1>
<c:if test="${param.error!=null}"> 
<p>user pass invalid</p>
</c:if>
<c:if test="${param.logout!=null}"> 
<p>you have logout</p>
</c:if>
<form action="${pageContext.request.contextPath}/loginUser" method="post" modelAttribute="user">
  <p>
  Name: <input type="text"  name="username"/>
  </p>
  <p>
  Pass: <input type="password"  name="password"/>
  </p>
  
        <input type="submit" value="Login">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>


</body>
</html>