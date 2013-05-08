<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
    <jsp:include page="head.jsp"/>
    <title>Actor | ${actor.name}</title>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp"/>
    <div id="moviepagebody">

        <div class="content">
            <div class="mainactor">
                <span class="header1">${actor.name}</span>
                <sec:authorize access="hasRole('ROLE_MANAGER')">
                    <a style="float:right" href="#">Edit</a>
                </sec:authorize>

                <hr>
                <img class="movieposter" src="http://i.imgur.com/FOTCPbD.jpg" height="200"/>
                <p><strong>Rating: </strong>${actor.rating}</p>
                <p><strong>Age: </strong>${actor.age}</p>
                <p><strong>Gender:</strong>${actor.mf}</p>

            </div>
            <h2>Movies starring ${actor.name}:</h2>

            <c:forEach var="movie" items="${actormovies}">
                <div class="cast">
                    <img height="90" src="/images/posters/${movie.id}.jpg"/>
                    <a href="/movies/${movie.id}">${movie.name}</a>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</div>
</body>
</html>
