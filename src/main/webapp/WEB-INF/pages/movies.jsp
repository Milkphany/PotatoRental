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
    <jsp:include page="head.jsp"/>
    <title>Movies</title>

</head>
<body>
<jsp:include page="header.jsp"/>
<div class="movielist">

    <c:forEach var="movie" items="${movies}">
        <a href="/movies/${movie.id}">
        <img class="toolmeow" id="${movie.id}"
             title="<div class='movtt'><div class='header1'>${movie.name}</div>
                        <br>${movie.type}<br>
                        <p>Set in the South two years before the Civil War, Django Unchained 
                    stars Jamie Foxx as Django, a slave whose brutal history with his
                    former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                    (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                    and only Django can lead him to his bounty.</p>
                       </div>"
             alt="${movie.name}" src="/images/posters/${movie.id}.jpg"/>
            </a>
    </c:forEach>

</div>


</body>
</html>