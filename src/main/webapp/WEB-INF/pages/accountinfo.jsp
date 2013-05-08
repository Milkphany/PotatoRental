
<%--Use the following code block to test for customer or employee--%>
<sec:authorize access="hasRole('ROLE_USER')">
    You are a customer
    <%--Secret ${user.rating}--%>
</sec:authorize>
<sec:authorize access="hasRole('ROLE_STAFF')" >
    You are an employee
    <%-- Secret ${user.id} | ${user.hourlyRate} | --%>
</sec:authorize>
<h1>${user.firstName} ${user.lastName}</h1>
${user.firstName} | ${user.lastName} | ${user.ssn} | ${user.pass} </br>
${user.telephone} | ${user.address} | ${user.email} | ${user.zipCode}
<sec:authorize access="hasRole('ROLE_STAFF')">
    | ${user.startDate}
</sec:authorize>