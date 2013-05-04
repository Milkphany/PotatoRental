<%--
  Created by IntelliJ IDEA.
  User: Milky, Monstika
  Date: 5/3/13
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <c:import url="head.jsp" />
    <sec:authentication property="principal.username" var="userid" />
    <title>${userid} Queue</title>
</head>
<body>
<c:import url="header.jsp" />
<h1>This is going to be ${userid}'s queue.</h1>
</body>
</html>