<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/8/13
  Time: 2:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp"/>
        <title>Actors </title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div id="moviepagebody">
            <div class="content">
                <span class="header1">Actors</span>
                <hr>
                <table id="orderhistory">

                    <c:forEach var="actor" items="${actors}" >
                        <tr>
                            <td>
                                <a href="/actors/${actor.id}">${actor.name}</a>
                            </td>
                            <td>
                                ${actor.rating}
                            </td>
                        <tr>
                        </c:forEach>
                </table>
            </div></div>
    </body>
</html>