<%--
  Created by IntelliJ IDEA.
  User: Milky, Monstika
  Date: 5/3/13
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
    <head>
        <c:import url="head.jsp" />
        <title>Settings | ${user.email}</title>
    </head>
    <body>
        <div id="wrap">

            <c:import url="header.jsp" />
            <div id="moviepagebody">
                <div class="content">
                    <%--This page does not have to display all user details, just what they can do, editing user detail will be another page--%>
                    <span class="header1">${message}</span>
                    <hr>
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
                    </br>
                    <%--Documentation on why spring url is used here:
                    http://static.springsource.org/spring/docs/3.2.x/spring-framework-reference/html/spring.tld.html#spring.tld.url

Long story short, it has scoping features
--%>
<sec:authorize access="hasRole('ROLE_USER')" >
    <a href="<spring:url value="/account/rentals" />">Rentals</a>
    <a href="<spring:url value="/account/queue" />">Queue</a>
</sec:authorize>
<%--Employee code here--%>
<sec:authorize access="hasRole('ROLE_STAFF')">
    <a href="<spring:url value="/users" />">Search Users</a>
    <a href="<spring:url value="/record" />">Record Order</a>
    <a href="<spring:url value="/mailing" />">Mail</a>
    <a href="<spring:url value="/suggest" />">Suggest</a>
</sec:authorize>

                </div></div></div>

    </body>
</html>
