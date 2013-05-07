<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="rightside">
    <div id="topnav">
        <sec:authorize access="isAuthenticated()">
            <sec:authentication property="principal.username" var="userid" />
            <a id="userid" href="/account">${userid}</a> |
        </sec:authorize>
        <sec:authorize access="isAnonymous()"><a id="loginlink" href="#">Log In</a> |</sec:authorize>
        <sec:authorize access="isAnonymous()"><a id="signuplink" href="signup">Sign up</a> |</sec:authorize>
        <sec:authorize access="isAuthenticated()"><a href="logout">Log Out</a> |</sec:authorize>
        <a href="help">Help</a>
    </div>
    <br/>

    <form class="form-wrapper cf">
        <input type="text" placeholder="Search for movies, actors, or genres..." required>
        <button type="submit">Search</button>
    </form>

</div>

<div id="header">
    <div id="mainnav" class="breadcrumb flat">
        <a id="logo" href="/"><img src="/images/logo4.png"/></a>

        <a class="headermenu" href="/movies">Browse</a>
        <sec:authorize access="hasRole('ROLE_USER')"><a class="headermenu" href="/account/queue" >Queue</a></sec:authorize>
        <sec:authorize access="isAuthenticated()"><a class="headermenu" href="/account" >Settings</a></sec:authorize>
    </div>
</div>

<div id="subheader"></div>

<div id="login">
    <%--<form class="form-login" action="checkLogin" method="post">
        <input type="text" placeholder="Email Address">
        <input type="password" placeholder="Password">
        <button type="submit">Submit</button>
    </form>--%>
    <form:form modelAttribute="loginForm" cssClass="form-login" method="post" action="loginCheck">
        <input type="text" name="username" placeholder="Email Address"/>
        <input type="text" name="password" placeholder="Password"/>
        <button type="submit">Submit</button>
    </form:form>
</div>

<div id="padheader"></div>