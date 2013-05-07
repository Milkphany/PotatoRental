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
                $('.toolmeow').tooltipster();
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
                        <img class="poster" title="${movies.type}" alt="${movies.name}" src="/images/posters/${movies.id}.jpg"/>
                    </c:if>
                </c:forEach>

            </div>
        </center>

        <div class="movielist">

            <c:forEach var="movies" items="${movies}" >
                
                <img class="toolmeow" id ="${movies.id}"  title="${movies.name}" alt="${movies.name}" src="/images/posters/${movies.id}.jpg"/>

            </c:forEach>

        </div>


    </body>
</html>