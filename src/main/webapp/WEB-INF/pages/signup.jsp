<%--
    Document   : signup
    Created on : May 1, 2013, 9:12:55 PM
    Author     : monika
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <c:import url="head.jsp"/>
        <title>Signup</title>
    </head>

    <body style="background:url('') no-repeat fixed center;">
        <div id="wrap">
            <c:import url="header.jsp"/>
            <div id="signuppagebody">
                <div class="contentsignup">
                    <form:form modelAttribute="signupForm" cssClass="form-signup" id="form-table" action="signup" method = "post">
                        <c:if test="${not empty message}">
                            <div class="errorblock">
                                <div class="error">Error: ${message}</div>
                                <form:errors path="firstName" element="div"/>
                                <form:errors path="lastName" element="div"/>
                                <form:errors path="email" element="div"/>
                                <form:errors path="address" element="div"/>
                                <form:errors path="zipCode" element="div"/>
                                <form:errors path="telephone" element="div"/>
                                <form:errors path="ssn" element="div"/>
                                <form:errors path="pass" element="div"/>
                            </div>
                        </c:if>

                        <form:input path="firstName" cssErrorClass="error" id="name" type="text" placeholder="First Name" autofocus="autofocus"/>&nbsp;
                        <form:input path="lastName" cssErrorClass="error" id="name" type="text" placeholder="Last Name"/>
                        <form:input path="email" cssErrorClass="error" type="email" placeholder="Email Address"/>
                        <form:input path="address" cssErrorClass="error" type="text" placeholder="Address"/>
                        <input name="city" type="text" placeholder="City" />
                        <form:input path="zipCode" cssErrorClass="error" id ="zip" type="text" placeholder="Zip Code"/>
                        <select name="state">
                            <option value="">Select state..</option>
                            <option value="AK">AK</option>
                            <option value="AL">AL</option>
                            <option value="AR">AR</option>
                            <option value="CA">CA</option>
                            <option value="CO">CO</option>
                            <option value="CT">CT</option>
                            <option value="DC">DC</option>
                            <option value="DE">DE</option>
                            <option value="FL">FL</option>
                            <option value="GA">GA</option>
                            <option value="HI">HI</option>
                            <option value="IA">IA</option>
                            <option value="ID">ID</option>
                            <option value="IL">IL</option>
                            <option value="KS">KS</option>
                            <option value="KY">KY</option>
                            <option value="LA">LA</option>
                            <option value="MA">MA</option>
                            <option value="MD">MD</option>
                            <option value="ME">ME</option>
                            <option value="MI">MI</option>
                            <option value="MN">MN</option>
                            <option value="MO">MO</option>
                            <option value="MS">MS</option>
                            <option value="MT">MT</option>
                            <option value="NE">NE</option>
                            <option value="NH">NH</option>
                            <option value="NJ">NJ</option>
                            <option value="NV">NV</option>
                            <option value="NY">NY</option>
                            <option value="VA">VA</option>
                      
                        </select>
                        

                        <form:input path="telephone" cssErrorClass="error" type="text" placeholder="Telephone Number"/>
                        <form:input path="ssn" cssErrorClass="error" type="text" placeholder="Social Security Number"/>
                        <form:password path="pass" cssErrorClass="error" placeholder="Password"/>
                        <form:password path="pass" cssErrorClass="error" placeholder="Confirm Password"/>

                        <button type="submit">Sign Up</button>
                    </form:form>
                </div>
                <div class="potatoleft">
                    <img id="potatocat" src="/images/potatocat2.png" width="350"/>

                    <p>Movies delivered right to your door for as low as $10/month.
                        <br/>
                        <a href="#">Find out more</a></p>
                </div>
            </div>

        </div>
    </body>
</html>