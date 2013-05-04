<%--
  Created by IntelliJ IDEA.
  User: Milky, Monstika
  Date: 5/3/13
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <c:import url="head.jsp" />
    <title>Profile | ${userid}</title>
</head>
<body>
<c:import url="header.jsp" />
<h2>${message}</h2>
<h1>${userid} | Profile Settings</h1>
${user.address} | ${user.email} | ${user.firstName} | ${user.lastName}


</body>
</html>