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



    <center> <span class="header2"><a id="prev3" class="prev" href="#">&lt;</a>
            Comedy <a id="next3" class="next" href="#">&gt;</a></span></center>
    <hr>
    <div class="image_carousel" >
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
        </div></div>




</body>
</html>