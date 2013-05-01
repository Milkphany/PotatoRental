<%--
  Created by IntelliJ IDEA.
  User: milky
  Date: 4/29/13
  Time: 5:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
    <html>
    <head>
        <title>forms | mvc-showcase</title>
    </head>
    <body>
<div id="formsContent">
    <h2>Forms</h2>
    <p>
        See the <code>org.springframework.samples.mvc.form</code> package for the @Controller code
    </p>
    <form:form id="form" method="post" modelAttribute="formBean" cssClass="cleanform">
        <div class="header">
            <h2>Form</h2>
            <c:if test="${not empty message}">
                <div id="message" class="success">${message}</div>
            </c:if>
            <s:bind path="*">
                <c:if test="${status.error}">
                    <div id="message" class="error">Form has errors</div>
                </c:if>
            </s:bind>
        </div>
        <fieldset>
            <legend>Personal Info</legend>
            <form:label path="firstName">
                Name <form:errors path="firstName" cssClass="error" />
            </form:label>
            <form:input path="firstName" />

            <form:label path="zipCode">
                ZipCode <form:errors path="zipCode" cssClass="error" />
            </form:label>
            <form:input path="zipCode" />

            <form:label path = "email" >
                Email <form:errors path="email" cssClass="error" />
            </form:label>
            <form:input path="email" />

            <form:label path="telephone">
                Telepohone <form:errors path="telephone" cssclass="error" />
            </form:label>
            <form:input path="telephone" />

        </fieldset>
        <p><button type="submit">Submit</button></p>
    </form:form>
</div>
    </body>
    </html>
