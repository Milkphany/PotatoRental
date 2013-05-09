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
            ${message}
        </div>
    </div>

    <div class="">
        <center> <span class="header2">
                        Popular Movies </center>
        <hr>

        <div class="image_carousel">
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
                <div id="foopop">
                    <c:forEach var="movie" items="${popular}">
                        <img class="poster toolmeow" src="/images/posters/${movie.id}.jpg"
                             id="${movie.id}"
                             title="<div class='movtt'><div class='header1'>${movie.name}</div>
                                     <br>${movie.type}
                                     
                                     </div>"
                                />
                    </c:forEach>
                </div>

            </center>
        </div>
                
        <c:if test="${not empty recommended}" >
            <br><br>
            <center><span class="header2">Personal Recommendations</span></center>
            <hr>
            <div class="image_carousel">
                <div id="foorec">
                    <c:forEach var="movie" items="${recommended}">
                        <img class="poster toolmeow" src="/images/posters/${movie.id}.jpg"
                             id="${movie.id}"
                             title="<div class='movtt'><div class='header1'>${movie.name}</div>
                                     <br>${movie.type}
                                     
                                     </div>"
                                />
                    </c:forEach>
                </div>
            </div>
        </c:if>
    </div>
    
</div>

</body>
</html>
