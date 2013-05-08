<%--
  Created by IntelliJ IDEA.
  User: Milky, Monstika
  Date: 5/3/13
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
    <head>
        <c:import url="head.jsp" />
        <title>Settings | ${user.email}</title>
        <script>
            function loadpg (url) {
                
                $('.accountmain').load(url);
            }
        </script>
    </head>
    <body>
        <div id="wrap">

            <c:import url="header.jsp" />
            <div id="moviepagebody">

                <div class="content" style="min-height:500px">
                    <%--This page does not have to display all user details, just what they can do, editing user detail will be another page--%>
                    <span class="header1">${message}</span>
                    <hr>
                    <table id="accountpage"><tr>
                            <td>
                                <div class="accountsidebar">
                                    <a href="#">Main</a><br>
                                    <sec:authorize access="hasRole('ROLE_USER')" >
                                        <a href="<spring:url value="/account/rental" />">Rental</a><br/>
                                        <a href="<spring:url value="/account/queue" />">Queue</a><br/>
                                    </sec:authorize>
                                    <%--Employee code here--%>
                                    <sec:authorize access="hasRole('ROLE_STAFF')">
                                        <a href="<spring:url value="/users" />">Search Users</a><br/>
                                        <a href="<spring:url value="/record" />">Record Order</a><br/>
                                        <a href="<spring:url value="/mailing" />">Mail</a><br/>
                                        <a href="<spring:url value="/suggest" />">Suggest</a><br/>

                                    </sec:authorize>
                                    <br/>
                                    <a onclick="loadpg('/accountinfo')">Main</a><br/>
                                    <a onclick="loadpg('/users')">Search Users</a><br/>
                                </div>
                            </td>
                            <td>
                                <div class ="accountmain">
                                    <c:import url="/accountinfo"/>
                                    <br>
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
                                </div></td>
                        </tr></table>

                    <%--Documentation on why spring url is used here:
                    http://static.springsource.org/spring/docs/3.2.x/spring-framework-reference/html/spring.tld.html#spring.tld.url

Long story short, it has scoping features
                    --%>


                </div></div></div>

    </body>
</html>
