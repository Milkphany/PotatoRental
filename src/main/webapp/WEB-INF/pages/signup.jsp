<%--
  User: Milky
  Date: 4/22/13
  Time: 12:50 AM
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="false" %>
<html>
<head>
    <title>Sign up</title>
    <c:import url="head.jsp"/>
</head>
<body>
<c:import url="header.jsp"/>
<div>
    <fieldset>
        <form:form modelAttribute="signupForm" cssClass="table" id="table">
            <form:label path="firstName">First Name</form:label>
            <form:input path="firstName"/>
            <form:errors path="firstName" cssClass="error"/>
            </br>

            <form:label path="lastName">Last Name</form:label>
            <form:input path="lastName"/>
            <form:errors path="lastName" cssClass="error"/>
            </br>

            <form:label path="address">Address</form:label>
            <form:input path="address"/>
            <form:errors path="address" cssClass="error"/>
            </br>

            <form:label path="zipCode">ZipCode</form:label>
            <form:input path="zipCode"/>
            <form:errors path="zipCode" cssClass="error"/>
            </br>

            <form:label path="telephone">Telephone</form:label>
            <form:input path="telephone"/>
            <form:errors path="telephone" cssClass="error"/>

            </br>

            <form:label path="ssn">Social Security Number</form:label>
            <form:input path="ssn"/>
            <form:errors path="ssn" cssClass="error"/>
            </br>

            <form:label path="email">Email</form:label>
            <form:input path="email"/>
            <form:errors path="email" cssClass="error"/>
            </br>

            <button type="submit">Submit</button>
        </form:form>
    </fieldset>
</div>
</body>
</html>