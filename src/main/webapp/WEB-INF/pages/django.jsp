
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head><jsp:include page="head.jsp"/></head>


    <body>
        <div id="wrap">
            <jsp:include page="header.jsp" />



            <div id ="moviepagebody">

                <div class="content">
                    <div class="mainmovie">
                        <span class="header1">Django Unchained (2012)</span>
                        <a style="float:right" href="#">Edit</a>

                        <hr>
                        <img class="movieposter" src="images/posters/49.jpg" height="420"  />
                        <p>
                            <input name="star1" type="radio" class="star"/>
                            <input name="star1" type="radio" class="star"/>
                            <input name="star1" type="radio" class="star"/>
                            <input name="star1" type="radio" class="star"/>
                            <input name="star1" type="radio" class="star"/>
                        </p>
                        Set in the South two years before the Civil War, Django Unchained 
                        stars Jamie Foxx as Django, a slave whose brutal history with his
                        former owners lands him face-to-face with German-born bounty hunter Dr. King Schultz
                        (Christoph Waltz). Schultz is on the trail of the murderous Brittle brothers,
                        and only Django can lead him to his bounty. Honing vital hunting skills, Django
                        remains focused on one goal: finding and rescuing Broomhilda (Kerry Washington),
                        the wife he lost to the slave trade long ago. Django and Schultz's search ultimately
                        leads them to Calvin Candie (Leonardo DiCaprio), the proprietor of "Candyland," an 
                        infamous plantation. Exploring the compound under false pretenses, Django and Schultz
                        arouse the suspicion of Stephen (Samuel L. Jackson), Candie's trusted house slave.
                        <p>
                            <strong>Starring:</strong> 
                            <a href="#">Jamie Foxx</a>,
                            <a href="#">Christoph Waltz</a>,
                            <a href="#">Leonardo DiCaprio</a> | 
                            <a href="#">See full cast</a>
                        </p> 
                        <p>
                            <strong>Genre:</strong> <a href="#">Adventure</a>
                        </p>

                        <form action="">
                            <button id="submitbutton" type="submit">+QUEUE</button>
                        </form>
                    </div>
                    <h2>Cast</h2>
                    <div class="cast">
                        <img height="50" src="http://i.imgur.com/vmJboMa.jpg"/>
                        <a href="#">Morgan Freeman</a>
                    </div>
                    
                    <div class="cast">
                        <img height="50" src="http://i.imgur.com/vmJboMa.jpg"/>
                        <a href="#">Morgan Freeman</a>
                    </div>
                    
                    <div class="cast">
                        <img height="50" src="http://i.imgur.com/vmJboMa.jpg"/>
                        <a href="#">Morgan Freeman</a>
                    </div>
                    
                    <div class="cast">
                        <img height="50" src="http://i.imgur.com/vmJboMa.jpg"/>
                        <a href="#">Morgan Freeman</a>
                    </div>
                </div>

            </div>


        </div>


    </div>



</body>
</html>
