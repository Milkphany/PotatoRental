<%-- 
    Document   : search
    Created on : May 9, 2013, 8:02:22 AM
    Author     : monika
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div class="filmography">
                        <c:forEach var="movie" items="${movies}" begin="0" end="3">
                            <div>
                                <a href="/movies/${movie.id}"><img  width="200" height="300"  src="/images/posters/${movie.id}.jpg"/></a>
                                <a href="/movies/${movie.id}">${movie.name}</a>
                            </div>
                        </c:forEach>
                        <div style="color:white">.</div>
                    </div>
                    
                    
                    
                    <h2>Actors</h2>
                    
                    <h2>Movies</h2>


                </div>
            </div>
        </div>
  
    </body>
</html>
