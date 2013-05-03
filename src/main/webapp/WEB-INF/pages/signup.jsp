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
<head><c:import url="head.jsp"/></head>

<body style="background:url('') no-repeat fixed center;">
<div id="wrap">
    <c:import url="header.jsp"/>
    <div id="signuppagebody">
        <div class="contentsignup">
            <form:form modelAttribute="signupForm" cssClass="form-signup" id="form-table" action="signup">
                <c:if test="${not empty message}">
                    <div class="errorblock">
                        <div class="error">Error: ${message}</div>
                        <form:errors path="firstName" element="div"/>
                        <form:errors path="lastName" element="div"/>
                        <form:errors path="email" element="div"/>
                        <form:errors path="address" element="div"/>
                        <form:errors path="zipCode" element="div"/>
                        <form:errors path="telephone" element="div"/>
                        <form:errors path="ssn" element="div"/>
                    </div>
                </c:if>

                <form:input path="firstName" cssErrorClass="error" id="name" type="text" placeholder="First Name"/>&nbsp;
                <form:input path="lastName" cssErrorClass="error" id="name" type="text" placeholder="Last Name"/>
                <form:input path="email" cssErrorClass="error" type="text" placeholder="Email Address"/>
                <form:input path="address" cssErrorClass="error" type="text" placeholder="Address"/>
                <form:input path="zipCode" cssErrorClass="error" type="text" placeholder="Zip Code"/>
                <form:input path="telephone" cssErrorClass="error" type="text" placeholder="Telephone Number"/>
                <form:input path="ssn" cssErrorClass="error" type="text" placeholder="Social Security Number"/>

                <button type="submit">Sign Up</button>
            </form:form>
        </div>
        <div class="potatoleft">
            <img id="potatocat" src="images/potatocat2.png" width="350"/>

            <p>Movies delivered right to your door for as low as $10/month.
                <br/>
                <a href="#">Find out more</a></p>
        </div>
    </div>

</div>
</body>
</html>