<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <jsp:include page="head.jsp"/>
    <title>PotatoCat!</title>
</head>

<body>
<div id="wrap">
    <jsp:include page="header.jsp"/>
    <div id="">
        ${message}

        <div class="content">
            <center> <span class="header2"><a id="prev2" class="prev" href="#">&lt;</a>
                Popular Movies <a id="next2" class="next" href="#">&gt;</a></span></center>
            <hr>

            <div class="image_carousel" id="content">
                <center>
                <div id="foo2">
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
                </div>
                </center>
            </div>
        </div>

    </div>
</div>
</body>
</html>
