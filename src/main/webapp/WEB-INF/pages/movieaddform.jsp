<%--
  User: milky
  Date: 5/9/13
  Time: 4:17 PM
--%>
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
            <form:form modelAttribute="addMovie" cssClass="form-signup" id="form-table" action="/movies/addMovie" method="post">
                <c:if test="${not empty message}">
                    <div class="errorblock">
                        <div class="error">Error: ${message}</div>
                    </div>
                </c:if>
                <form:input path="name" id="" cssErrorClass="error" type="text" autofocus="autofocus" placeholder="Movie Name"/>&nbsp;
                <form:input path="type" cssErrorClass="error" type="text" placeholder="Type" />
                <form:input path="rating" csserrorclass="error" type="text" placeholder="Rating" />
                <form:input path="distrFee" cssErrorClass="error" type="text" placeholder="Distribution Fee"/>
                <form:input path="numCopies" cssErrorClass="error" type="text" placeholder="Number of Copies" />
                <button type="submit">Sign Up</button>
            </form:form>
        </div>
        <div class="potatoleft">
            <img id="potatocat" src="/images/posters/1.jpg" width="350"/>
        </div>
    </div>
</div>
</body>
</html>