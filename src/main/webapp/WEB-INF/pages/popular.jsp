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
        <title>PotatoCat: Popular Movies</title>

    </head>
    <body>
        <jsp:include page="header.jsp" />  

        <div class="movielist">
    
            <c:forEach var="movies" items="${popular}" >
                
                <img class="toolmeow" id ="${movies.id}"  
                     title="<div class='movtt'><div class='header1'>${movies.name}</div>
                        <br>${movies.type}<br>
                        <p>Set in the South two years before the Civil War, Django Unchained 
                    stars Jamie Foxx as Django, a slave whose brutal history with his
                    former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                    (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                    and only Django can lead him to his bounty.</p>
                        <center><a href='#'>+QUEUE</a></center></div>" 
                     alt="${movies.name}" src="/images/posters/${movies.id}.jpg"/>

            </c:forEach>

        </div>


    </body>
</html>