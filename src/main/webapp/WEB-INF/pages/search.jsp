<%-- 
    Document   : search
    Created on : May 9, 2013, 8:02:22 AM
    Author     : monika
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp"/>
        <title>Search Results</title>
    </head>
    <body>
    <body>
        <div id="wrap">
            <jsp:include page="header.jsp"/>
            <div id="moviepagebody">

                <div class="content">

                    <span class="header1">Search Results for 'action'</span> <hr>

                    <h2>Genres</h2>
                    <a href="#">See all action movies</a>
                    <div class="filmresults">
                        <c:forEach var="movie" items="${movies}" begin="0" end="3">
                            <div>
                                <a href="/movies/${movie.id}"><img  width="200" height="300"  src="/images/posters/${movie.id}.jpg"/></a>
                                <a href="/movies/${movie.id}">${movie.name}</a>
                            </div>
                        </c:forEach>

                    </div>


                    <h2>Actors</h2>


                    <h2>Movies</h2>
                    <table class="searchresults">
                        <c:forEach var="movie" items="${movies}" begin="0" end ="5">
                            <tr>

                                <td><a href="/movies/${movie.id}">
                                        <img width="200" height="300" src="/images/posters/${movie.id}.jpg"/></a></td>
                                <td><span class="header1"><a href="/movies/${movie.id}">${movie.name}</a></span>
                                    <br>
                                    <p>
                                        <strong>${movie.type}</strong>
                                        <br>
                                        <strong>Rating: </strong> ${movie.rating}
                                        <br>
                                        <strong>Starring:</strong>
                                        <a href="/actors/${movieactors[0].id}">${movieactors[0].name}</a>,
                                        <a href="/actors/${movieactors[1].id}">${movieactors[1].name}</a>,
                                        <a href="/actors/${movieactors[2].id}">${movieactors[2].name}</a> |
                                        <a href="/movies/${movie.id}#cast">See full cast</a>
                                        <br>
                                    </p>
                                    <sec:authorize access="hasRole('ROLE_USER')" >
                                        <c:choose>
                                            <c:when test="${hasMovie}" >
                                                <form action="/account/queue/remove/${movie.id}">
                                                    <button id="removebutton" type="submit">Remove</button>
                                                </form>
                                            </c:when>
                                            <c:otherwise>
                                                <form action="/account/queue/add/${movie.id}">
                                                    <button id="submitbutton" type="submit">Add to Queue</button>
                                                </form>
                                            </c:otherwise>
                                        </c:choose>
                                    </sec:authorize>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>



                </div>
            </div>
        </div>

    </body>
</html>
