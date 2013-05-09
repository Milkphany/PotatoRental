<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/9/13
  Time: 7:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="head.jsp" />
    <title></title>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="moviepagebody">
    <div class="content">
        <span class="header1">Users</span>
        <hr>
        <table>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td><a href="/users/${user.email}">${user.firstName}</a></td>
                    <td>${user.lastName}</td>
                    <td>${user.email}</td>
                    <td>${user.telephone}</td>
                    <td>${user.zipCode}</td>
                    <td>${user.rating}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>