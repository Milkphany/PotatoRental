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
                        <img class="movieposter" src="http://i.imgur.com/FOTCPbD.jpg" height="420"/>
                        <p><strong>Rating: </strong>${actor.rating}</p>
                        <p><strong>Age: </strong>${actor.age}</p>
                        <p><strong>Gender:</strong>${actor.mf}</p>

                    </div>
                    <h2>Movies starring ${actor.name}:</h2>

                    
                    <div class="filmography">
                        <c:forEach var="movie" items="${actormovies}">
                            <div>
                                <a href="/movies/${movie.id}"><img  width="200" height="300"  src="/images/posters/${movie.id}.jpg"/></a>
                                <a href="/movies/${movie.id}">${movie.name}</a>
                            </div>
                        </c:forEach>
                        <div style="color:white">.</div>
                    </div>





                </div>
            </div>
        </div>
    </div>
</body>
</html>
