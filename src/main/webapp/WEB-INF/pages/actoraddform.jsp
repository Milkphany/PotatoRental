<%--
  User: milky
  Date: 5/9/13
  Time: 7:28 PM
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
            <form:form modelAttribute="addActor" cssClass="form-signup" id="form-table" action="/actors/addActor" method="post">
                <c:if test="${not empty message}">
                    <div class="errorblock">
                        <div class="error">Error: ${message}</div>
                    </div>
                </c:if>
                <form:input path="name" id="" cssErrorClass="error" type="text" autofocus="autofocus" placeholder="Name"/>&nbsp;
                <form:input path="age" cssErrorClass="error" type="text" placeholder="Age" />
                <form:input path="mf" csserrorclass="error" type="text" placeholder="M/F" />
                <form:input path="rating" cssErrorClass="error" type="text" placeholder="Rating"/>
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