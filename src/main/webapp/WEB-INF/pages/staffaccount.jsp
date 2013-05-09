<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/9/13
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>

    <jsp:include page="head.jsp"/>
    <title>User Account</title>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp"/>
    <div id="moviepagebody">
        <div class="content">
            <span class="header1">Account information: <c:out value="${userid}" escapeXml="true"/></span>
            <hr>

            <form:form modelAttribute="editForm" cssClass="form-signup" action="/staffs/${userid}" method="post">
                <form:input path="firstName" cssErrorClass="error" id="name" type="text" value="${employee.firstName}"/>
                <form:input path="lastName" cssErrorClass="error" id="name" type="text" value="${employee.lastName}"/>
                <form:input path="address" cssErrorClass="error" type="text" value="${employee.address}"/>
                <form:input path="zipCode" cssErrorClass="error" type="text" value="${employee.zipCode}"/>
                <form:input path="telephone" cssErrorClass="error" type="text" value="${employee.telephone}"/>
                <form:input path="ssn" cssErrorClass="error" type="text" value="${employee.ssn}"/>
                <form:password path="pass" cssErrorClass="error" value="${employee.pass}"/>

                <form:button type="submit">Submit</form:button>
                <form:button type="submit" name="delete">DELETE</form:button>
            </form:form>
        </div>
    </div>
</div>

</body>
</html>