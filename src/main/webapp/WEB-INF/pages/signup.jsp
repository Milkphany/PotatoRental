<%--
    Document   : signup
    Created on : May 1, 2013, 9:12:55 PM
    Author     : monika
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <c:import url="head.jsp"/>
    <title>Signup</title>
</head>

<body style="background:url('') no-repeat fixed center;">
<div id="wrap">
    <c:import url="header.jsp"/>
    <div id="signuppagebody">
        <div class="contentsignup">
            <form:form modelAttribute="signupForm" cssClass="form-signup" id="form-table" action="/signup/signup_1" method="post">
            <c:if test="${not empty message}">
                <div class="errorblock">
                    <div class="error">Error: ${message}</div>
                    <form:errors path="firstName" element="div"/>
                    <form:errors path="lastName" element="div"/>
                    <form:errors path="email" element="div"/>
                    <form:errors path="pass" element="div"/>
                    <form:errors path="ssn" element="div"/>
                </div>
            </c:if>
                <form:input path="firstName" cssErrorClass="error" id="name" type="text" autofocus="autofocus" placeholder="First Name"/>&nbsp;
                <form:input path="lastName" cssErrorClass="error" id="name" type="text" placeholder="Last Name" />
                <form:input path="email" cssErrorClass="error" type="email" placeholder="Email Address" />
                <form:input path="telephone" csserrorclass="error" type="text" placeholder="Telephone" />
                <form:input path="ssn" cssErrorClass="error" type="text" placeholder="Social Security Number"/>
                <form:password path="pass" cssErrorClass="error" placeholder="Password"/>
                <form:password path="pass" cssErrorClass="error" placeholder="Confirm Password"/>

                <button type="submit">Sign Up</button>
            </form:form>
        </div>
        <div class="potatoleft">
            <img id="potatocat" src="/images/potatocat2.png" width="350"/>

            <p>Movies delivered right to your door for as low as $10/month.
                <br/>
                <a href="/help">Find out more</a></p>
        </div>
    </div>
</div>
</body>
</html>