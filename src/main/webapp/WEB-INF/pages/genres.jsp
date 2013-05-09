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



    <center> <span class="header2"><a id="prev0" class="prev" href="#">&lt;</a>
            Action <a id="next0" class="next" href="#">&gt;</a></span></center>
    <hr>

    <div class="image_carousel" >
        <div id="foo0" >
            <c:forEach var="movie" items="${movies}" >
                <c:if test="${movie.type == 'Action'}">
                    <img class="poster toolmeow" src="/images/posters/${movie.id}.jpg"
                         id="${movie.id}"
                         title="<div class='movtt'><div class='header1'>${movie.name}</div>
                         <br>${movie.type}<br>
                         <p>Set in the South two years before the Civil War, Django Unchained 
                         stars Jamie Foxx as Django, a slave whose brutal history with his
                         former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                         (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                         and only Django can lead him to his bounty.</p>
                         </div>" 
                         />
                </c:if>
            </c:forEach>
        </div></div>
    <br/>
    
    
    <center> <span class="header2"><a id="prev1" class="prev" href="#">&lt;</a>
            Adventure <a id="next1" class="next" href="#">&gt;</a></span></center>
    <hr>

    <div class="image_carousel" >
        <div id="foo1" >
            <c:forEach var="movie" items="${movies}" >
                <c:if test="${movie.type == 'Adventure'}">
                    <img class="poster toolmeow" src="/images/posters/${movie.id}.jpg"
                         id="${movie.id}"
                         title="<div class='movtt'><div class='header1'>${movie.name}</div>
                         <br>${movie.type}<br>
                         <p>Set in the South two years before the Civil War, Django Unchained 
                         stars Jamie Foxx as Django, a slave whose brutal history with his
                         former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                         (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                         and only Django can lead him to his bounty.</p>
                         </div>" 
                         />
                </c:if>
            </c:forEach>
        </div></div>
    <br/>
    

    <center> <span class="header2"><a id="prev2" class="prev" href="#">&lt;</a>
            Animation <a id="next2" class="next" href="#">&gt;</a></span></center>
    <hr>

    <div class="image_carousel" >
        <div id="foo2" >
            <c:forEach var="movie" items="${movies}" >
                <c:if test="${movie.type == 'Animation'}">
                    <img class="poster toolmeow" src="/images/posters/${movie.id}.jpg"
                         id="${movie.id}"
                         title="<div class='movtt'><div class='header1'>${movie.name}</div>
                         <br>${movie.type}<br>
                         <p>Set in the South two years before the Civil War, Django Unchained 
                         stars Jamie Foxx as Django, a slave whose brutal history with his
                         former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                         (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                         and only Django can lead him to his bounty.</p>
                         </div>" 
                         />
                </c:if>
            </c:forEach>
        </div></div>
    <br/>

    
    <center> <span class="header2"><a id="prev3" class="prev" href="#">&lt;</a>
            Biography <a id="next3" class="next" href="#">&gt;</a></span></center>
    <hr>

    <div class="image_carousel" >
        <div id="foo3" >
            <c:forEach var="movie" items="${movies}" >
                <c:if test="${movie.type == 'Biography'}">
                    <img class="poster toolmeow" src="/images/posters/${movie.id}.jpg"
                         id="${movie.id}"
                         title="<div class='movtt'><div class='header1'>${movie.name}</div>
                         <br>${movie.type}<br>
                         <p>Set in the South two years before the Civil War, Django Unchained 
                         stars Jamie Foxx as Django, a slave whose brutal history with his
                         former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                         (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                         and only Django can lead him to his bounty.</p>
                         </div>" 
                         />
                </c:if>
            </c:forEach>
        </div></div>
    <br/>

    <center> <span class="header2"><a id="prev4" class="prev" href="#">&lt;</a>
            Comedy <a id="next4" class="next" href="#">&gt;</a></span></center>
    <hr>

    <div class="image_carousel" >
        <div id="foo4" >
            <c:forEach var="movie" items="${movies}" >
                <c:if test="${movie.type == 'Comedy'}">
                    <img class="poster toolmeow" src="/images/posters/${movie.id}.jpg"
                         id="${movie.id}"
                         title="<div class='movtt'><div class='header1'>${movie.name}</div>
                         <br>${movie.type}<br>
                         <p>Set in the South two years before the Civil War, Django Unchained 
                         stars Jamie Foxx as Django, a slave whose brutal history with his
                         former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                         (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                         and only Django can lead him to his bounty.</p>
                         </div>" 
                         />
                </c:if>
            </c:forEach>
        </div></div>
    <br/>
    
</body>
</html>