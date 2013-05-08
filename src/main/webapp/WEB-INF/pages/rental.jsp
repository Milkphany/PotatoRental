<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:include page="head.jsp" />
        <title>Order History</title>
    </head>
    <body>
        <div id="wrap">
            <jsp:include page="header.jsp" />
            <div id="moviepagebody"><div class="content">
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
                        <c:forEach var="movie" items="${rentalhistory}">
                            <tr>
                                <td>date placeholder</td>
                                <td><a href="/movies/${movie.id}">${movie.name}</a></td>
                                <td>RETURNED</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>