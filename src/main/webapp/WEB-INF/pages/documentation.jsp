
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
                <h2>Programmer's Guide</h2>

                <dl class ="accordion">

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
