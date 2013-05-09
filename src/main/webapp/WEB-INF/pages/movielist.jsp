<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/9/13
  Time: 4:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="head.jsp"/>
    <title>All Movies</title>
</head>
<body>
<jsp:include page="header.jsp"/>

<div id="moviepagebody">
    <div class="content">
        <span class="header1">All Movies</span>
        <hr>
        <table id="planlist">
            <tr>
                <th id="orderhistory">#</th>
                <th id="orderhistory">Name</th>
                <th id="orderhistory">Genre</th>
                <th>Rating</th>

            </tr>
            <c:forEach var="movie" items="${movies}" varStatus="stat">
                <tr>
                    <td>${stat.count}</td>
                    <td>
                        <a href="/movies/${movie.id}">${movie.name}</a>
                    </td>
                    <td>${movie.type}</td>
                    <td>${movie.rating}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>