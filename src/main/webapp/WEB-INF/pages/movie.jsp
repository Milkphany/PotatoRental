<%--
  Created by IntelliJ IDEA.
  User: Milky, Monika
  Date: 5/8/13
  Time: 7:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <div id="wrap">
            <jsp:include page="header.jsp"/>
            <div id="moviepagebody">

                <div class="content">
                    <div class="mainmovie">
                        <span class="header1">${movie.name}</span>
                        <sec:authorize access="hasRole('ROLE_MANAGER')">
                            <a style="float:right" href="/movies/${movie.id}/edit">Edit</a>
                        </sec:authorize>

                        <hr>
                        <img class="movieposter" src="/images/posters/${movie.id}.jpg" height="420"/>

                        
                        
                        <p>
                            <strong>Starring:</strong>
                            <a href="/actors/${movieactors[0].id}">${movieactors[0].name}</a>,
                            <a href="/actors/${movieactors[1].id}">${movieactors[1].name}</a>,
                            <a href="/actors/${movieactors[2].id}">${movieactors[2].name}</a> |
                            <a href="#cast">See full cast</a>
                        </p>

                        <p>
                            <strong>Genre:</strong> <a href="#">${movie.type}</a>
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
                    </div>
                    <h2><a style="color:inherit" name="cast">Cast</a></h2>
                    <c:forEach var="actor" items="${movieactors}">
                        <div class="cast">
                            <img height="80" src="/images/actors/${actor.id}.jpg" />
                            <a href="/actors/${actor.id}">${actor.name}</a></br>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>


    </div>


</body>
</html>
