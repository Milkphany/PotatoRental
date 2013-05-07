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
        <script type="text/javascript" src="/js/jquery.tooltipster.min.js"></script>
        <script>
            $(document).ready(function() {
                $('.toolmeow').tooltipster({
                    animation: 'fade',
                    arrow: true,
                    arrowColor: '',
                    content: '',
                    delay: 200,
                    fixedWidth: 300,
                    maxWidth: 300,
                    functionBefore: function(origin, continueTooltip) {
                        continueTooltip();
                    },
                    functionReady: function(origin, tooltip) {},
                    functionAfter: function(origin) {},
                    icon: '(?)',
                    iconDesktop: false,
                    iconTouch: false,
                    iconTheme: '.tooltipster-icon',
                    interactive: true,
                    interactiveTolerance: 650,
                    offsetX: 0,
                    offsetY: -40,
                    onlyOne: true,
                    position: 'top',
                    speed: 350
                });
            });
        </script>

    </head>
    <body>
        <jsp:include page="header.jsp" />  



    <center> <span class="header2"><a id="prev3" class="prev" href="#">&lt;</a>
            Comedy <a id="next3" class="next" href="#">&gt;</a></span></center>
    <hr>

    <div class="image_carousel" >
        <center>
            <div id="foo3">
                <c:forEach var="movies" items="${movies}" >
                    <c:if test="${movies.type == 'Comedy'}">
                        <img class="poster toolmeow " title="<div class='movtt'><div class='header1'>${movies.name}</div><br>${movies.type}</div>" alt="${movies.name}" src="/images/posters/${movies.id}.jpg"/>
                    </c:if>
                </c:forEach>

            </div>
        </center>

        <div class="movielist">

            <c:forEach var="movies" items="${movies}" >
                
                <img class="toolmeow" id ="${movies.id}"  
                     title="<div class='movtt'><div class='header1'>${movies.name}</div>
                        <br>${movies.type}<br>
                        <p>Set in the South two years before the Civil War, Django Unchained 
                    stars Jamie Foxx as Django, a slave whose brutal history with his
                    former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                    (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                    and only Django can lead him to his bounty.</p>
                        <center><a href='#'>+ Queue</a></center></div>" 
                     alt="${movies.name}" src="/images/posters/${movies.id}.jpg"/>

            </c:forEach>

        </div>


    </body>
</html>