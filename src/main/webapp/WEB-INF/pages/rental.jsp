<%--
  Created by IntelliJ IDEA.
  User: milky
  Date: 5/6/13
  Time: 4:43 PM
--%>
<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="head.jsp" />
        <title>Order History</title>
    </head>
    <body>
        <div id="wrap">
            <jsp:include page="header.jsp" />
            <div id="moviepagebody"><div class="content">

                    <span class="header1">Order History</span>
                     <form class="form-wrapper cf">
                        <input type="text" placeholder="Search order history.." required>
                        <button type="submit">Search</button>
                    </form>
                    <hr>

                   

                    <table id="orderhistory" style="width: 90%">
                        <tr>
                            <th>Date Placed</th>
                            <th>Titles Rented</th>
                            <th>Status</th>
                        </tr>

                        <tr>
                            <td>April 30, 2013</td>
                            <td><a href="django.jsp">Django</a><br/><a href="#">The Dark Knight</a></td>
                            <td><span class="red">CURRENTLY HELD</span>
                                <br/>
                                <a href="#">(Click here to return)</a>
                            </td>
                        </tr>
                        <tr>
                            <td>April 1, 2012</td>
                            <td><a href="#">Borat</a></td>
                            <td>RETURNED</td>
                        </tr>
                        <tr>
                            <td>January 2, 1900</td>
                            <td><a href="#">Twilight</a></td>
                            <td>RETURNED</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>