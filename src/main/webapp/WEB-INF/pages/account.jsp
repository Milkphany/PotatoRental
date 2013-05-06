<%--
  Created by IntelliJ IDEA.
  User: Milky, Monstika
  Date: 5/3/13
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <c:import url="head.jsp" />
    <title>Profile | ${user.email}</title>
</head>
<body>
<c:import url="header.jsp" />
<%--This page does not have to display all user details, just what they can do, editing user detail will be another page--%>
<h2>${message}</h2>
<%--Use the following code block to test for customer or employee--%>
<c:if test="${customer}">
    You are a customer
    <%--Secret ${user.rating}--%>
</c:if>
<c:if test="${employee}">
    You are an employee
    <%-- Secret ${user.id} | ${user.hourlyRate} | --%>
</c:if>
<h1>${user.firstName} ${user.lastName}</h1>
${user.firstName} | ${user.lastName} | ${user.ssn} | ${user.pass} </br>
${user.telephone} | ${user.address} | ${user.email} | ${user.zipCode}
<c:if test="${employee}">
    | ${user.startDate}
</c:if>
</body>
</html>