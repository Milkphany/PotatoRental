
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
                    <span class="header1">Help Center</span>
                    <hr>
                    <h2>General</h2>
                    
                    <dl class ="accordion">
                        
                        <dt><a href="#">How does PotatoCat work?</a><br/></dt>
                        <dd>meow</dd>
                        <dt><a href="#">What is the selection like?</a></dt>
                        <dd>We have thousands of movies in stock, including new releases, classics, kids' movies, and foreign films. Click <a href="#">here</a> to browse our entire collection.</dd>
                        <dt><a href="#">How much does this service cost?</a><br/></dt>
                        <dd>
                            There are four different plans to choose from. You can pick the one that works for you.<br/>
                            <table id ="planlist">
                                <tr>
                                    <th>Plan</th>
                                    <th>Movies out at a time</th>
                                    <th>Movies per month</th>
                                    <th>Cost</th>
                                </tr>
                                <td>Limited</td>
                                <td>1</td>
                                <td>2</td>
                                <td>$10/month</td>
                                <tr>
                                    <td>Unlimited#1</td>
                                    <td>1</td>
                                    <td>Unlimited</td>
                                    <td>$15/month</td>
                                </tr>
                                <tr>
                                    <td>Unlimited#2</td>
                                    <td>2</td>
                                    <td>Unlimited</td>
                                    <td>$20/month</td>
                                </tr>
                                <tr>
                                    <td>Unlimited#3</td>
                                    <td>3</td>
                                    <td>Unlimited</td>
                                    <td>$25/month</td>
                                </tr>
                            </table>

                        </dd>
                        
                        <h2>Account</h2>
                        <dt><a href="#">How do I change my password?</a></dt>
                        <dd>Meow first.</dd>
                        
                        <dt><a href="#">How do I update my account information?</a><br/></dt>
                        <dd>ANSWER HERE</dd>
                        
                        <dt><a href="#">What is the queue and how does it work?</a></dt>
                        <dd>The queue allows you to keep track of movies you would like to rent in the future. 
                            When you return a movie, the next movie(s) in your queue are automatically shipped out to you.<br/>
                            
                            You can add, delete, and rearrange the movies in your queue.
                        </dd>
                        <a href="#">How many movies can I rent per month?</a><br/>
                        <a href="#">Can I downgrade/upgrade my account?</a><br/>
                        <a href="#">How do I cancel my account?</a><br/>

                        <h2>Orders</h2>
                        <a href="#">How can I view my order history?</a><br/>
                        <a href="#">How do I cancel an order?</a><br/>
                        <a href="#">How can I report a problem with my rental?</a><br/>
                        <a href="#"></a><br/>
                        <a href="#"></a><br/>

                    </dl>
                
                </div>


            </div>


        </div>



    </body>
</html>
