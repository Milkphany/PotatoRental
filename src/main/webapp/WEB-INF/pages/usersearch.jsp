<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/6/13
  Time: 3:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
    <head>
        <jsp:include page="head.jsp" />
        <title>Search users</title>
    </head>
    <body>
        <div id="wrap">
            <jsp:include page="header.jsp" />
            <div id="moviepagebody">
                <div class="content">
                    Search the user, this could be a subheader for all employee pages
                    </br>
                    <a href="<spring:url value="/users/cats@cats.com" htmlEscape="true" />">Value</a>

                </div></div></div>
    </body>
</html>