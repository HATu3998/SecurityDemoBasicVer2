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


<p>Welcome, ${pageContext.request.userPrincipal.name}!</p>


<c:if test="${pageContext.request.userPrincipal != null}">
    <c:if test="${pageContext.request.isUserInRole('ROLE_employee')}">
        <!-- Display content only for "employee" role -->
        <p>This content is only visible to employees.</p>
    </c:if>
    
    <c:if test="${pageContext.request.isUserInRole('ROLE_manager')}">
        <!-- Display content only for "manager" role -->
        <p>This content is only visible to managers.</p>
    </c:if>
    
    <c:if test="${pageContext.request.isUserInRole('ROLE_admin')}">
        <!-- Display content only for "admin" role -->
        <p>This content is only visible to admins.</p>
    </c:if>
</c:if>
<hr>
<form:form action="${pageContext.request.contextPath}/logout" method="post" >
  
        <input type="submit" value="Logout">

</form:form>
</body>
</html>