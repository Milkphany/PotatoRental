
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head><jsp:include page="head.jsp"/></head>

    <body>

        <jsp:include page="header.jsp" />

        <div id ="moviepagebody">



            <div class="content">

                <center>
                    <img id="potatocat" src="/images/potatocat2.png" width="350"/><br/>
                    <span class= "header2">PotatoCat Documentation</span>
                    <h2>Jason Chen & Monika Tuchowska</h2>
                </center>

              
                <hr>
                

                <dl class ="accordion">
                    <h2>User Guide: Customers</h2>
                    <dt><a href="#">Renting Movies</a></dt>
                    <dd></dd>
                    <dt><a href="#">Viewing Currently Held Movies</a></dt>
                    <dd></dd>

                    <dt><a href="#">Viewing Rental Queue</a></dt>
                    <dd></dd>
                    
                    <dt><a href="#">Account Settings</a></dt>
                    <dd></dd>

                    <dt><a href="#">Order History</a></dt>
                    <dd></dd>
                    
                    <dt><a href="#">Viewing Available Movies</a></dt>
                    <dd>
                        -particular type, particular keywords, actors
                    </dd>
                    
                    <dt><a href="#">Viewing Best-Selling Movies</a></dt>
                    <dd></dd>
                    
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
                    <dd></dd>

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
                    <dd></dd>

                    <dt><a href="#">Relational Model</a></dt>
                    
                    
                    
                    <dd><jsp:include page="tables.jsp"/></dd>

                    <dt><a href="#">Functional Dependencies</a></dt>
                    <dd></dd>

                    <dt><a href="#">Transactions</a></dt>
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
