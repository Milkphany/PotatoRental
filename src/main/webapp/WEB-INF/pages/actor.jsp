<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
    <jsp:include page="head.jsp"/>
    <title>Actor | ${actor.name}</title>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp"/>
    <div id="moviepagebody">

        <div class="content">
            <div class="mainactor">
                <span class="header1">${actor.name}</span>
                <sec:authorize access="hasRole('ROLE_MANAGER')">
                    <a style="float:right" href="#">Edit</a>
                </sec:authorize>

                <hr>
                <img class="movieposter" src="http://i.imgur.com/FOTCPbD.jpg" height="200"/>

                <p><strong>Rating: </strong>${actor.rating}</p>

                <p>
                    <strong>Age: </strong>${actor.age}
                </p>

                <p>
                    <strong>Gender:</strong>${actor.mf}
                </p>


            </div>
            <h2>Movies in stock starring Morgan Freeman:</h2>

            <div class="cast">
                <img height="50" src="http://i.imgur.com/vmJboMa.jpg"/>
                <a href="#">The Shawshank Redemption</a>
            </div>

            <div class="cast">
                <img height="50" src="http://i.imgur.com/vmJboMa.jpg"/>
                <a href="#">The Shawshank Redemption</a>
            </div>
            <div class="cast">
                <img height="50" src="http://i.imgur.com/vmJboMa.jpg"/>
                <a href="#">The Shawshank Redemption</a>
            </div>
            <div class="cast">
                <img height="50" src="http://i.imgur.com/vmJboMa.jpg"/>
                <a href="#">The Shawshank Redemption</a>
            </div>
        </div>

    </div>


</div>


</div>


</body>
</html>
