<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/9/13
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="head.jsp"/>
    <title>Staff</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="moviepagebody">
    <div class="content">
        <span class="header1">Employees</span>
        <hr>
        <table id="planlist">
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Email</th>
                <th>Rate</th>
                <th>Social</th>
                <th>Address</th>
                <th>Start</th>
            </tr>
            <c:forEach var="user" items="${users}" varStatus="stat">
                <tr>
                    <td>${stat.count}</td>
                    <td><a href="/staffs/${user.email}" >${user.firstName} ${user.lastName}</a></td>
                    <td>${user.email}</td>
                    <td>${user.hourlyRate}</td>
                    <td>${user.ssn}</td>
                    <td>${user.address}</td>
                    <td>${user.startDate}</td>
                <tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>