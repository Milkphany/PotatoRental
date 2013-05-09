<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table id="planlist" >
    <tr style="color:black; font-size:11pt">
        <th>Name</th>
        <th>Genre</th>
        <th>Rating</th>
        
        </tr>
    <c:forEach items="${movies}" var="movie">
        
        <tr style="color:black; font-size:11pt">
            <td><a href="/movies/${movie.id}">${movie.name}</a></td>
            <td>${movie.type}</td>
            <td>${movie.rating}</td>
            
        </tr>
    </c:forEach>

</table>