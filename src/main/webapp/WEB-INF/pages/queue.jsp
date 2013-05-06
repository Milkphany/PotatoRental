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
        <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
        <script>
            $(function() {
                $( "#sortable" ).sortable({
                    placeholder: "ui-state-highlight"
                });
                $( "#sortable" ).disableSelection();
            });
        </script>



        <sec:authentication property="principal.username" var="userid" />
        <title>${userid}'s Queue</title>
    </head>
    <body>           
        <c:import url="header.jsp" />

        <div id ="moviepagebody">

            <div class="content">
                <span class="header1">Manage Your Queue</span><br/>
                <hr>
                <p>Drag and drop movie titles in the order that you'd like to receive them.</p>

                <ul id="sortable">
                    <li class="ui-state-default">Django<span class ="removelink"> remove?</span></li>
                    <li class="ui-state-default">Meow<strong><span class ="removelink"> REMOVE?</span></strong></li>
                    <li class="ui-state-default">Item 3<strong><span class ="removelink"> REMOVE?</span></strong></li>
                    <li class="ui-state-default">Item 4<strong><span class ="removelink"> REMOVE?</span></strong></li>
                    <li class="ui-state-default">Item 5<strong><span class ="removelink"> REMOVE?</span></strong></li>
                    <li class="ui-state-default">Item 6<strong><span class="removelink"> REMOVE?</span></strong></li>
                    <li class="ui-state-default">Item 7<strong><span class ="removelink"> REMOVE?</span></strong></li>
                </ul>

            </div>


        </div>




    </body>
</html>