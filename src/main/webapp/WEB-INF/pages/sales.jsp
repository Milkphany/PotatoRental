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
        <jsp:include page="head.jsp" />
        <title>Sales</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div id="moviepagebody"><div class="content">
                <span class="header1">Sales</span>
                <hr>
                <table id="planlist">
                    <tr >
                        <th id="oderhistory">User</th>
                        <th id="oderhistory">Account Type</th>
                        <th id="oderhistory">Movie</th>
                        <th id="oderhistory">Order</th>
                    </tr>
                    <c:forEach var="map" items="${queue}">
                        <tr id="orderhistory">
                            <td><a href="/users/${map.key.email}">${map.key.email}</a></td>
                            <c:forEach var="account" items="${map.value}">
                            <form action="/sales/order" method="get">
                                <td>${account.key.type}</td>
                                <td><a href="/movies/${account.value.id}">${account.value.name}</a></td>
                                <td><a href="/sales/order?accountid=${map.key.email}&movieid=${account.value.id}">Order</a></td>
                            </c:forEach>
                            </tr>
                        </c:forEach>
                </table>
            </div></div>
    </body>
</html>