<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <jsp:include page="head.jsp"/>
        <title>PotatoCat!</title>
    </head>

    <body>
        <div id="">
            <jsp:include page="header.jsp"/>

            <div id="wrap">
                <div class="header2 message">
                    ${message}</div>
            </div>

            <div class="">
                <center> <span class="header2"><a id="prev2" class="prev" href="#">&lt;</a>
                        Popular Movies <a id="next2" class="next" href="#">&gt;</a></span></center>
                <hr>

                <div class="image_carousel" >
                    <center>
                        <%--<div id="foo2">
                            <img class="poster" src="/images/posters/dark.png"/>
                            <img class="poster" id="django" src="/images/posters/django.png"/>
                            <img class="poster" src="/images/posters/fightclub.png"/>
                            <img class="poster" src="/images/posters/future.png"/>
                            <img class="poster" src="/images/posters/godfather.png" />
                            <img class="poster" src="/images/posters/goodbad.png" />
                            <img class="poster" src="/images/posters/inception.png" />
                            <img class="poster" src="/images/posters/pulpfiction.png" />
                            <img class="poster" src="/images/posters/seven.png" />
                            <img class="poster" src="/images/posters/shawshank.png" />
                        </div>--%>
                        <div id="foo2" >
                            <c:forEach var="movie" items="${popular}" >
                                <img class="poster toolmeow" src="/images/posters/${movie.id}.jpg"
                                     id="${movie.id}"
                                     title="<div class='movtt'><div class='header1'>${movie.name}</div>
                                     <br>${movie.type}<br>
                                     <p>Set in the South two years before the Civil War, Django Unchained 
                                     stars Jamie Foxx as Django, a slave whose brutal history with his
                                     former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                                     (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                                     and only Django can lead him to his bounty.</p>
                                     <center><a href='#'>+QUEUE</a></center></div>" 
                                     />
                            </c:forEach>
                        </div>

                    </center>
                </div>
            </div>
            <h1>Popular movie list: Movies with ratings equal to 5, displaying 30</h1>
            <c:forEach var="movie" items="${popular}" >
                ${movie.name}</br>
            </c:forEach>
        </div>

    </body>
</html>
