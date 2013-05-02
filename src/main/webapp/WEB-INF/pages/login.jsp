<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/1/13
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form:form modelAttribute="login" cssClass="loginForm" id="login" method="post" action="checkLogin">
    Login <input type="text" name="username" />
    Password <input type="text" name="password" />
    <input type="submit" />
</form:form>
${message} is ready!
</body>
</html>