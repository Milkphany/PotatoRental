<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/1/13
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:import url="head.jsp" />
    <title>Login page</title>
</head>
<body>
<c:import url="header.jsp" />
<div>
    <form:form modelAttribute="loginForm" cssClass="login-page" method="post" action="loginCheck">
        <input type="text" name="username" placeholder="Email Address"/>
        <input type="text" name="password" placeholder="Password"/>
        <input type="submit"/>
    </form:form>
    ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
    </br>
    ${message} is ready!
</div>
</body>
</html>