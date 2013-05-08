<%--
  Created by IntelliJ IDEA.
  User: Milky, Monstika
  Date: 5/3/13
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
    <head>
        <c:import url="head.jsp" />
        
  
        <sec:authentication property="principal.username" var="userid" />
        <title>${userid}'s Queue</title>
    </head>
    <body>           
        <c:import url="header.jsp" />

    <div class="content">
        <span class="header1">Manage Your Queue</span><br/>
        <hr>
        <p>Drag and drop movie titles in the order that you'd like to receive them.</p>

        <%--<ul id="sortable">--%>
            <%--<li class="ui-state-default toolteep" title="<a href='#'>Remove?</a>">The Dark Knight</li>--%>
            <%--<li class="ui-state-default toolteep" title="<a href='#'>Remove?</a>">The Shawshank Redemption</li>--%>
            <%--<li class="ui-state-default toolteep" title="<a href='#'>Remove?</a>">Amelie</li>--%>
            <%--<li class="ui-state-default toolteep" title="<a href='#'>Remove?</a>">Star Wars</li>--%>
            <%--<li class="ui-state-default toolteep" title="<a href='#'>Remove?</a>">Toy Story</li>--%>
            <%--<li class="ui-state-default toolteep" title="<a href='#'>Remove?</a>">Dr Strangelove or: How I learned to--%>
                <%--Stop worrying and love the bomb--%>
            <%--</li>--%>
        <%--</ul>--%>
        <ul id="sortable">
            <c:forEach var="movie" items="${moviequeue}">
                <li class="ui-state-default toolteep" title="<a href='#'>Remove?</a>">${movie.name}</li>
            </c:forEach>
        </ul>

    </div>


</div>


</body>
</html>
