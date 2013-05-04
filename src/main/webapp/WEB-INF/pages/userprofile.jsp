<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
    <c:import url="head.jsp" />
    <title>${userid}</title>
</head>
<body>
<c:import url="header.jsp" />
<h1>${message}</h1>
</body>
</html>