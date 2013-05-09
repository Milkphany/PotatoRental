<%--
&lt;%&ndash;Use the following code block to test for customer or employee&ndash;%&gt;
<sec:authorize access="hasRole('ROLE_USER')">
    You are a customer
    &lt;%&ndash;Secret ${user.rating}&ndash;%&gt;
</sec:authorize>
<sec:authorize access="hasRole('ROLE_MANAGER') && hasRole('ROLE_STAFF')" >
    You are a manager
    &lt;%&ndash; Secret ${user.id} | ${user.hourlyRate} | &ndash;%&gt;
</sec:authorize>
<sec:authorize access="hasRole('ROLE_STAFF') && !hasRole('ROLE_MANAGER')" >
    You are an employee
</sec:authorize>--%>
<h1>${user.firstName} ${user.lastName}</h1>
${user.firstName} | ${user.lastName} | ${user.ssn} | ${user.pass} </br>
${user.telephone} | ${user.address} | ${user.email} | ${user.zipCode}
<sec:authorize access="hasRole('ROLE_STAFF')">
    | ${user.startDate}
</sec:authorize>