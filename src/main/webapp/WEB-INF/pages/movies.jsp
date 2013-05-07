<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  User: milky
  Date: 5/6/13
  Time: 8:02 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <jsp:include page="head.jsp" />
    <title>Movies</title>
</head>
<body>
<jsp:include page="header.jsp" />
<c:forEach var="movies" items="${movies}" >
    Title: ${movies.name} </br>
</c:forEach>
</body>
</html>