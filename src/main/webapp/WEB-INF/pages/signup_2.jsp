<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Milky
  Date: 5/8/13
  Time: 2:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <form:form modelAttribute="locationForm" cssClass="form-signup" id="form-table" action="/signup/signup_2"
                       method="post">
                <c:if test="${not empty message}">
                    <div class="errorblock">
                        <div class="error">Error: ${message}</div>
                        <form:errors path="zipCode" element="div" cssClass="error"/>
                        <form:errors path="city" element="div" cssClass="error"/>
                        <form:errors path="state" element="div" cssClass="error"/>
                    </div>
                </c:if>
                <input name="address" type="text" autofocus="autofocus" placeholder="Address" />
                <form:input path="city" cssErrorClass="error" type="text" id="name" placeholder="City"/>
                <form:select path="state" cssErrorClass="error" type="text" placeholder="State">
                    <form:option value="">Select state..</form:option>
                    <form:option value="AK">AK</form:option>
                    <form:option value="AL">AL</form:option>
                    <form:option value="AR">AR</form:option>
                    <form:option value="CA">CA</form:option>
                    <form:option value="CO">CO</form:option>
                    <form:option value="CT">CT</form:option>
                    <form:option value="DC">DC</form:option>
                    <form:option value="DE">DE</form:option>
                    <form:option value="FL">FL</form:option>
                    <form:option value="GA">GA</form:option>
                    <form:option value="HI">HI</form:option>
                    <form:option value="IA">IA</form:option>
                    <form:option value="ID">ID</form:option>
                    <form:option value="IL">IL</form:option>
                    <form:option value="KS">KS</form:option>
                    <form:option value="KY">KY</form:option>
                    <form:option value="LA">LA</form:option>
                    <form:option value="MA">MA</form:option>
                    <form:option value="MD">MD</form:option>
                    <form:option value="ME">ME</form:option>
                    <form:option value="MI">MI</form:option>
                    <form:option value="MN">MN</form:option>
                    <form:option value="MO">MO</form:option>
                    <form:option value="MS">MS</form:option>
                    <form:option value="MT">MT</form:option>
                    <form:option value="NE">NE</form:option>
                    <form:option value="NC">NC</form:option>
                    <form:option value="ND">ND</form:option>
                    <form:option value="NH">NH</form:option>
                    <form:option value="NJ">NJ</form:option>
                    <form:option value="NM">NM</form:option>
                    <form:option value="NV">NV</form:option>
                    <form:option value="NY">NY</form:option>
                    <form:option value="OH">OH</form:option>
                    <form:option value="OK">OK</form:option>
                    <form:option value="OR">OR</form:option>
                    <form:option value="PA">PA</form:option>
                    <form:option value="RI">RI</form:option>
                    <form:option value="SC">SC</form:option>
                    <form:option value="SD">SD</form:option>
                    <form:option value="TN">TN</form:option>
                    <form:option value="TX">TX</form:option>
                    <form:option value="VA">VA</form:option>
                    <form:option value="WA">WA</form:option>
                    <form:option value="WI">WI</form:option>
                    <form:option value="WV">WV</form:option>
                    <form:option value="WY">WY</form:option>
                </form:select>
                <form:input path="zipCode" cssErrorClass="error" type="text" id="name" placeholder="Zip Code"/>
                <select name="account">
                    <option value="lim">Limited</option>
                    <option value="one">One</option>
                    <option value="two">Two</option>
                    <option value="three">Three</option>
                </select>
                <button type="submit">Sign Up</button>
            </form:form>
        </div>
        <div class="potatoleft">
            <img id="potatocat" src="/images/potatocat2.png" width="350"/>

            <p>Movies delivered right to your door for as low as $10/month.
                <br/>
                <a href="/help">Find out more</a></p>
        </div>
    </div>
</div>
</body>
</html>