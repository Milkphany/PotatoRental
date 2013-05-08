<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/1/13
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <c:import url="head.jsp"/>
    <title>Login page</title>
</head>
<body>
<div id="wrap">
    <c:import url="header.jsp"/>
    <div id="moviepagebody">
        <div class="content">

            <span class="header1">PotatoCat Login</span>
            <hr>
            <c:if test="${not empty sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}" >
                <p><span class="red">The username or password you entered is incorrect.</span></p>
            </c:if>
            <form:form modelAttribute="loginForm" cssClass="form-login" method="post" action="loginCheck">
                <input type="text" name="username" autofocus="autofocus" placeholder="Email Address"/>
                <input type="text" name="password" placeholder="Password"/>
                <input id="submitbutton" type="submit"/>
            </form:form>
            <p>
            </p>
        </div>
    </div>
</div>
</body>
</html>