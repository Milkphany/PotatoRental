<%--
  Created by IntelliJ IDEA.
  User: Milky, Monstika
  Date: 5/3/13
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <c:import url="head.jsp"/>
    <title>Settings | ${user.email}</title>
    <script>
        function loadpg(url) {
            $('.accountmain').load(url);
        }
    </script>
</head>
<body>
<div id="wrap">

    <c:import url="header.jsp"/>
    <div id="moviepagebody">

        <div class="content" style="min-height:500px">
            <%--This page does not have to display all user details, just what they can do, editing user detail will be another page--%>
            <span class="header1">Account Settings</span>
            <hr>
            <table id="accountpage">
                <tr>
                    <td>
                        <div class="accountsidebar">
                           
                            <sec:authorize access="hasRole('ROLE_USER')">
                                <a href="<spring:url value="/account/rental" />">History</a><br/>
                                <a href="<spring:url value="/account/queue" />">Queue</a><br/>
                            </sec:authorize>
                            <%--Employee code here--%>
                            <sec:authorize access="hasRole('ROLE_STAFF')">
                                
                                <a href="<spring:url value="/sales/" />">Record Order</a><br/>
                                <a href="<spring:url value="/account/mailing" />">Mail</a><br/>
                                <a href="<spring:url value="/suggest" />">Suggest</a><br/>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <a href="/movies/movielist">Movie List</a>
                                <a href="#">Get Movie Rental</a>
                            </sec:authorize>
                            <br/>
                            <%--Monika:
                            For this section if you can send a ajax request, I can provide a response body to fill --%>
                            
                            
                            
                        </div>
                    </td>
                    <td>
                        <div class="accountmain">
                            <%@include file="accountinfo.jsp"%>
                        </div>
                    </td>
                </tr>
            </table>

            <%--Documentation on why spring url is used here:
            http://static.springsource.org/spring/docs/3.2.x/spring-framework-reference/html/spring.tld.html#spring.tld.url

Long story short, it has scoping features
            --%>


        </div>
    </div>
</div>

</body>
</html>
