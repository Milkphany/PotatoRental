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
        <title>All Movies</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <div id="moviepagebody"><div class="content">
                <span class="header1">All Movies</span>
                <hr>
                <table id="planlist">
                    <tr >
                        <th id="oderhistory">Name</th>
                        <th id="oderhistory">Genre</th>
                        <th>Rating</th>

                    </tr>
                    <c:forEach var="movies" items="${movies}">
                        <tr >
                            <td>
                                <a href="/movies/${movies.id}">${movies.name}</a>
                            </td>
                            <td>${movies.type}</td>
                            <td>${movies.rating}</td>
                    </tr>
                </c:forEach>
            </table>
        </div></div>
</body>
</html>