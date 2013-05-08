<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/8/13
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <form:form modelAttribute="locationForm" cssClass="form-signup" id="form-table" action="/signup/signup_2"
                       method="post">
                <c:if test="${not empty message}">
                    <div class="errorblock">
                        <div class="error">Error: ${message}</div>
                        <form:errors path="zipCode" element="div"/>
                        <form:errors path="city" element="div"/>
                        <form:errors path="state" element="div"/>
                    </div>
                </c:if>
                <form:input path="zipCode" cssErrorClass="error" id="name" type="text" autofocus="autofocus"
                            placeholder="Zip Code"/>&nbsp;
                <form:input path="city" cssErrorClass="error" id="name" type="text" placeholder="City"/>
                <form:input path="state" cssErrorClass="error" type="text" placeholder="State"/>
                <button type="submit">Sign Up</button>
            </form:form>
        </div>
        <div class="potatoleft">
            <img id="potatocat" src="/images/potatocat2.png" width="350"/>

            <p>Movies delivered right to your door for as low as $10/month.
                <br/>
                <a href="help">Find out more</a></p>
        </div>
    </div>
</div>
</body>
</html>