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
                            <a style="float:right" href="#">Edit</a>
                        </sec:authorize>

                        <hr>
                        <img class="movieposter" src="/images/posters/${movie.id}.jpg" height="420"/>

                        <sec:authorize access="hasRole('ROLE_USER')" >
                            <p>
                                <input name="star1" type="radio" class="star"/>
                                <input name="star1" type="radio" class="star"/>
                                <input name="star1" type="radio" class="star"/>
                                <input name="star1" type="radio" class="star"/>
                                <input name="star1" type="radio" class="star"/>
                            </p>
                        </sec:authorize>
                        Set in the South two years before the Civil War, Django Unchained
                        stars Jamie Foxx as Django, a slave whose brutal history with his
                        former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                        (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                        and only Django can lead him to his bounty. Honing vital hunting skills, Django
                        remains focused on one goal: finding and rescuing Broomhilda (Kerry Washington),
                        the wife he lost to the slave trade long ago. Django and Schultz's search ultimately
                        leads them to Calvin Candie (Leonardo DiCaprio), the proprietor of "Candyland," an
                        infamous plantation. Exploring the compound under false pretenses, Django and Schultz
                        arouse the suspicion of Stephen (Samuel L. Jackson), Candie's trusted house slave.
                        <p>
                            <strong>Starring:</strong>
                            <a href="/actors/${movieactors[0].id}">${movieactors[0].name}</a>,
                            <a href="/actors/${movieactors[1].id}">${movieactors[1].name}</a>,
                            <a href="/actors/${movieactors[2].id}">${movieactors[2].name}</a> |
                            <a href="#cast">See full cast</a>
                        </p>

                        <p>
                            <strong>Genre:</strong> <a href="#">Adventure</a>
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
                            <img height="50" src="/images/actors/${actor.id}.jpg" />
                            <a href="/actors/${actor.id}">${actor.name}</a></br>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>


    </div>


</body>
</html>
