
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
                        <dd>Renting movies with PotatoCat is simple:
                        
                            <ol><strong>1.</strong>
                                Select a plan that works for you. 
                                We offer one limited and three different unlimited plans, starting at just $10/month.</ol>
                            <ol><strong>2.</strong>
                                Add movies you would like to see to your rental queue and we will send you your first DVD(s).
                               
                            </ol>
                            <ol><strong>3.</strong>
                                You can keep your rented DVDs for as long as you like. 
                                To rent a new movie, return your current order to us and we will send you the next movie in your queue.</ol>
                        
                        </dd>
                        <dt><a href="#">What is the selection like?</a></dt>
                        <dd>We have thousands of movies in stock, including new releases, classics, kids' movies, and foreign films. 
                            Click <a href="/movies">here</a> to browse our entire collection.</dd>
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
                        <dt><a href="#">How many movies can I rent per month?</a></dt>
                        <dd>This depends on which plan you've selected.
                        PotatoCat offers four plans to choose from. With the limited plan, you can rent up to two movies a month. 
                        The three unlimited plans are, well, unlimited and allow you to rent as many movies a month as you like. 
                        Click <a href="#">here</a> to read more about the plans we offer.</dd>
                        <dt><a href="#">Can I downgrade/upgrade my account?</a></dt>
                        <dd>Yes! You can make changes to your account by going into your <a href="#">account settings</a>.</dd>
                        <a href="#">How do I cancel my account?</a><br/>

                        <h2>Orders</h2>
                        <dt><a href="#">How can I view my order history?</a></dt>
                        <dd>You can view all of your orders by going to your <a href="#">account settings</a> and then clicking
                            <strong>Order History</strong>.</dd>
                        <dt><a href="#">How do I return an order?</a></dt>
                        <dd>To return your order, simply visit your <a href="#">order history</a> 
                            and click the return link next to the movies you'd like to send back to us.</dd>
                        <a href="#">How can I report a problem with my rental?</a><br/>
                        <a href="#"></a><br/>
                        <a href="#"></a><br/>

                    </dl>
                
                </div>


            </div>


        </div>



    </body>
</html>
