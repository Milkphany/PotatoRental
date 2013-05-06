<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky, Monstika
  Date: 5/6/13
  Time: 2:02 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Edit Account</title>
</head>
<body>
<form:form modelAttribute="editForm" cssClass="form-signup" action="editaccount" method="put">
    <form:input path="firstName" cssErrorClass="error" id="name" type="text" placeholder="First Name" autofocus="autofocus"/>&nbsp;
    <form:input path="lastName" cssErrorClass="error" id="name" type="text" placeholder="Last Name"/>
    <form:input path="email" cssErrorClass="error" type="email" placeholder="Email Address"/>
    <form:input path="address" cssErrorClass="error" type="text" placeholder="Address"/>
    <form:input path="zipCode" cssErrorClass="error" type="text" placeholder="Zip Code"/>
    <form:input path="telephone" cssErrorClass="error" type="text" placeholder="Telephone Number"/>
    <form:input path="ssn" cssErrorClass="error" type="text" placeholder="Social Security Number"/>
    <form:password path="pass" cssErrorClass="error" placeholder="Password"/>
    <form:password path="pass" cssErrorClass="error" placeholder="Confirm Password"/>
</form:form>
</body>
</html>