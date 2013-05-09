<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <jsp:include page="head.jsp"/>
</head>

<body>

<jsp:include page="header.jsp"/>

<div id="moviepagebody">


<div class="content">

<center>
    <img id="potatocat" src="/images/potatocat2.png" width="350"/><br/>
    <span class="header2">PotatoCat Documentation</span>
    <h2>Jason Chen & Monika Tuchowska</h2>
</center>

<hr>


<dl class="accordion">
<h2>User Guide: Customers</h2>

<dt><a href="#">Viewing Currently Held Movies</a></dt>
<dd>
    <p>
        1. Click on Settings link in navigation bar.<br/>
        2. Click on History.</p>


</dd>

<dt><a href="#">Viewing/Managing Rental Queue</a></dt>


<dd><p>
    <strong>View rental queue: </strong>Click on Queue link in navigation bar.<br/>
    <strong>Add movie to queue:</strong> Press +QUEUE button on a movie page or in movie list.<br/>
    <strong>Rearrange movies in queue:</strong> In Queue, click and drag movies into desired order.<br/>
    <strong>Remove movie from queue:</strong> In Queue, hover over movie to delete. Click on Remove link.
</p>
</dd>

<dt><a href="#">Account Settings</a></dt>
<dd><p>Click Settings in navigation bar.</p></dd>

<dt><a href="#">Order History</a></dt>
<dd><p>1. Click Settings in navigation bar.<br/>
    2. Click History in sidebar.</p>
</dd>

<dt><a href="#">Viewing Available Movies</a></dt>
<dd>
    -particular type, particular keywords, actors
</dd>

<dt><a href="#">Viewing Best-Selling Movies</a></dt>
<dd><p>
    1. Mouse over Browse link in navigation bar.<br/>
    2. Click on Popular link.
</p></dd>

<dt><a href="#">Viewing Movie Suggestions</a></dt>
<dd></dd>

<h2>User Guide: Customer Representatives</h2>
<dt><a href="#">Recording an Order</a></dt>
<dd></dd>

<dt><a href="#">Adding, Editing, and Deleting Customer Information</a></dt>
<dd></dd>

<dt><a href="#">Producing Customer Mailing Lists</a></dt>
<dd></dd>

<dt><a href="#">Producing Movie Suggestions</a></dt>
<dd></dd>

<h2>User Guide: Managers</h2>
<dt><a href="#">Adding, Editing, and Deleting Movies</a></dt>

<dd>
    <p>
        <strong>Adding Movies:</strong> <br/>
        <strong>Editing/Deleting Movies:</strong> Navigate to movie page. Click Edit in top left corner. Then click
        Delete to remove movie.
    </p>
</dd>

<dt><a href="#">Adding, Editing, and Deleting Employee Information</a></dt>
<dd></dd>

<dt><a href="#">Obtaining Sales Reports</a></dt>
<dd></dd>

<dt><a href="#">Comprehensive Movie Listing</a></dt>
<dd></dd>

<dt><a href="#">Viewing Movie Rentals</a></dt>
<dd></dd>

<dt><a href="#">Viewing Customer Activity</a></dt>
<dd></dd>

<dt><a href="#">Viewing Customer Representative Activity</a></dt>
<dd></dd>

<dt><a href="#">Viewing Most Popular Movies</a></dt>
<dd></dd>


<h2>Programmer Guide</h2>
<dt><a href="#">E-R Diagram</a></dt>
<dd><img src="/images/ER.png"/></dd>

<dt><a href="#">Relational Model</a></dt>


<dd>
    <jsp:include page="tables.jsp"/>
</dd>

<dt><a href="#">Functional Dependencies</a></dt>
<dd>

</dd>

<dt><a href="#">Transactions: Customers</a></dt>
<dd>
    <div id="code">
        <strong>Retrieve names customer’s currently held movies:</strong><br/>
                            <span class="grey">
                                where ? is the account id # (INTEGER)<br/></span>

        <p>
            SELECT m.name from movie m, rental r, purchase p<br/>
            WHERE m.id = r.movieid AND p.returndate is null AND accountid = ? AND p.id = r.purchid<br/></p>

        <strong>Customer’s movie queue:</strong>
                            <span class="grey">
                                <br/>
                                where ? is the account id # (INTEGER)<br/></span>

        <p>
            SELECT m.name from movie m, movieq q<br/>
            WHERE m.id = q.movieid AND accountid = ?<br/>
        </p>

        <strong>Modify account settings:</strong><br/>
                            <span class="grey">

                                where ? is the new account type (INTEGER)<br/></span>

        <p>
            ?? is the account id (INTEGER)<br/>
            UPDATE account<br/>
            SET type = ?<br/>
            WHERE id = ??<br/>
        </p>

        <strong>History of all current and past orders a customer has placed:</strong><br/>
                            <span class="grey">
                                where ? is the account id (INTEGER)<br/></span>

        <p>
            SELECT m.name, p.datetime, p.returndate, p.id<br/>
            FROM rental r, purchase p, movie m<br/>
            WHERE m.id = r.movieid AND p.id = r.purchid and r.accountid = ?<br/>
        </p>

        <strong>Movies available of particular type:</strong><br/>
                            <span class="grey">

                                where ? is the genre of the movie (CHAR (20))<br/></span>

        <p>
            SELECT name from movie<br/>
            WHERE type = ‘?’<br/>
        </p>

        <strong>Movies available with a particular keyword:</strong><br/>
                            <span class="grey">

                                where ? is the keyword (CHAR(20))<br/></span>

        <p>
            SELECT name FROM movie<br/>
            WHERE name like '%?%'<br/></p>

        <strong>
            Movies available starring a particular actor or group of actors:</strong><br/>
                            <span class="grey">

                                where ? is the actor name (CHAR(20))<br/></span>

        <p>
            SELECT m.name<br/>
            FROM movie m, actor a, appearedin x<br/>
            WHERE a.name = ‘?’ AND m.id = x.movieid AND a.id = x.actorid<br/>
        </p>

        <strong>
            Best-seller list of movies:</strong><br/>

        <p>
            SELECT name, count(*) AS copies ordered<br/>
            FROM rental r, movie m<br/>
            WHERE r.movieid = m.id<br/>
            GROUP BY name<br/>
            ORDER BY total DESC LIMIT 5<br/></p>

        <strong>
            Personalized movie suggestion list:</strong><br/>
                            <span class="grey">

                                where ? = account id (INTEGER)<br/></span>

        <p>
            (SELECT m.name, m.type<br/>
            FROM movie m, movierating r,<br/>
            WHERE r.accountid = ? AND r.movieid = m.id<br/>
            ORDER BY r.rating DESC LIMIT 5)<br/>
            UNION<br/>
            (SELECT name, type FROM<br/>
            (SELECT name, type, count(*)<br/>
            FROM rental r, movie m<br/>
            WHERE r.movieid = m.id<br/>
            GROUP BY name<br/>
            ORDER BY total DESC LIMIT 5)<br/>
        </p>


    </div>
</dd>

<dt><a href="#">Transactions: Customer Representatives</a></dt>
<dd>
    <div id="code">
        <strong>Record an order:</strong><br/>
        <span class="grey">Creates procedure to add an order by inserting into purchase and rental.</span>

        <p>
            PROCEDURE record_order (datetime DATETIME, returndate DATE, account_id INTEGER, employ_id INTEGER, movie_id
            INTEGER)<br/>
            BEGIN<br/>
            INSERT INTO Purchase (datetime, returndate) VALUES (datetime, returndate);<br/>
            INSERT INTO Rental VALUES (account_id, employ_id, movie_id, LAST_INSERT_ID());<br/>
            END<br/></p>


        <strong>Add, Edit, and Delete information for a customer:</strong><br/>
        <span class="grey">Updates the customer based on input values.</span>

        <p>
            where ? is the field to modify<br/>
            ?? is the new value (INTEGER or CHAR(20), depending on field)<br/>
            ??? is the customer’s SSN (INTEGER)<br/><br/>
            UPDATE Person JOIN Customer ON id = ssn
            SET ? = ??
            WHERE ssn = ???</p>


        <strong>Produce customer mailing list:</strong><br/>
        <span class="grey">Goes through all the customer and persons and gets their name and email address.</span>

        <p>
            SELECT firstname, lastname, email <br/>FROM customer, person <br/>WHERE ssn = id<br/>
        </p>


        <strong>Produce a list of movie suggestions for a given customer:</strong><br/>
                            <span class="grey">The algorithm gets the top genre the customer likes and join with the best seller and recommends it to the customer.

                                <br/>where ? = account id (INTEGER)</span><br/>

        <p>
            (SELECT m.name, m.type <br/>
            FROM movie m, movierating r,<br/>
            WHERE r.accountid = ? AND r.movieid = m.id<br/>
            ORDER BY r.rating DESC LIMIT 5)<br/>
            UNION<br/>
            (SELECT name, type FROM<br/>
            (SELECT name, type, count(*)<br/>
            FROM rental r, movie m<br/>
            WHERE r.movieid = m.id<br/>
            GROUP BY name<br/>
            ORDER BY total DESC LIMIT 5))<br/>
        </p>

    </div>

</dd>

<dt><a href="#">Transactions: Managers</a></dt>
<dd></dd>

<dt><a href="#">UI Implementation</a></dt>
<dd></dd>

<dt><a href="#"></a></dt>
<dd></dd>

<dt><a href="#"></a></dt>
<dd></dd>


</dl>

</div>


</div>


</body>
</html>
