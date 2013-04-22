<%--
  User: Milky
  Date: 4/22/13
  Time: 12:50 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>${title}</title>
</head>
<body>

<p>Is: <c:if test="${not empty message}">${messsage}</c:if></p>
<fieldset>
<form:form modelAttribute="signupForm" cssClass="table" id="table">
    <form:label path="firstName">
        First Name <form:errors path="firstName" cssClass="error"/>
    </form:label>
    <form:input path="firstName" />

    <form:label path="lastName">
        Last Name <form:errors path="lastName" cssClass="error"/>
    </form:label>
    <form:input path="lastName" />

    <form:label path="address">
        Address <form:errors path="address" cssClass="error"/>
    </form:label>
    <form:input path="address"/>

    <form:label path="zipCode">
        Zipcode <form:errors path="zipCode" cssClass="error"/>
    </form:label>
    <form:input path="address" />

    <form:label path="telephone">
        Telephone <form:errors path="telephone" cssClass="error"/>
    </form:label>
    <form:input path="telephone" />

    <form:label path="ssn">
        Social Security Number <form:errors path="ssn" cssClass="error"/>
    </form:label>
    <form:input path="ssn" />

    <form:label path="email">
        Email <form:errors path="email" cssClass="error"/>
    </form:label>
    <form:input path="email" />

    <button type="submit" >Submit</button>
</form:form>
</fieldset>
</body>
</html>