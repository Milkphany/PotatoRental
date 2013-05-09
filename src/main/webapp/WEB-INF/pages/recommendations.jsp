<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/9/13
  Time: 1:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <jsp:include page="head.jsp" />
    <title>PotatoCat: Recommendations</title>

</head>
<body>
<jsp:include page="header.jsp" />

<div class="movielist">

    <c:forEach var="movie" items="${recommendations}" >

        <img class="toolmeow" id ="${movie.id}"
             title="<div class='movtt'><div class='header1'>${movie.name}</div>
                        <br>${movie.type}<br>
                        <p>Set in the South two years before the Civil War, Django Unchained
                    stars Jamie Foxx as Django, a slave whose brutal history with his
                    former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                    (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                    and only Django can lead him to his bounty.</p>
                        </div>"
             alt="${movie.name}" src="/images/posters/${movie.id}.jpg"/>

    </c:forEach>

</div>


</body>
</html>