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
<p>day la h</p>
<p>User ID: ${pageContext.request.userPrincipal.name}</p>
<p>Role: <c:forEach items="${pageContext.request.userPrincipal.authorities}" var="authority">${authority.authority}</c:forEach></p>

<hr>
<form:form action="${pageContext.request.contextPath}/logout" method="post" >
  
        <input type="submit" value="Logout">

</form:form>
</body>
</html>