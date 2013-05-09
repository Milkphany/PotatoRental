<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: milky
  Date: 5/6/13
  Time: 4:43 PM
--%>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="head.jsp"/>
    <title>Order History</title>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp"/>
    <div id="moviepagebody">
        <div class="content">
            <span class="header1">Order History</span>

            <form class="form-wrapper cf">
                <input type="text" placeholder="Search order history.." required>
                <button type="submit">Search</button>
            </form>
            <hr>

            <table id="orderhistory" style="width: 90%">
                <tr>
                    <th>Date Placed</th>
                    <th>Titles Rented</th>
                    <th>Status</th>
                </tr>
                <c:forEach var="purchase" items="${rentalhistory}">
                    <tr>
                        <td><fmt:formatDate value="${purchase.key.dateTime}" pattern="yyyy-MM-dd"/></td>
                        <td><a href="/movies/${purchase.value.id}">${purchase.value.name}</a></td>
                        <td>
                            <c:choose>
                                <c:when test="${empty purchase.key.returndate}">
                                    Not returned yet
                                </c:when>
                                <c:otherwise>
                                    Returned on: <fmt:formatDate value="${purchase.key.returndate}" pattern="yyyy-MM-dd"/>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>