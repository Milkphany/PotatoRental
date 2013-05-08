<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/8/13
  Time: 7:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <jsp:include page="head.jsp" />
    <title>${movie.name}</title>
</head>
<body>
<jsp:include page="header.jsp" />
${movie.name} |
${movie.type} |
${movie.id} |
${movie.rating} |
${movie.distrFee} |
${movie.numCopies} |
</br>
<c:forEach var="actor" items="${movieactors}">
    <a href="/actors/${actor.id}">${actor.name}</a> ${actor.mf}</br>
</c:forEach>
</body>
</html>