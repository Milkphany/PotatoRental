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

<span class="header2">${user.firstName} ${user.lastName}</span><br>
<p>
    

<table>
    <tr>
        <td><strong>First Name:&nbsp;&nbsp; </strong></td>
        <td>${user.firstName}</td>
    </tr>
    <tr>
        <td><strong>Last Name:&nbsp;&nbsp; </strong></td>
        <td>${user.lastName}</td>
    </tr>
     <tr>
        <td><strong>SSN: &nbsp;&nbsp;</strong></td>
        <td>${user.ssn}</td>
    </tr>
     <tr>
        <td><strong>Password: &nbsp;&nbsp;</strong></td>
        <td>${user.pass}</td>
    </tr>
     <tr>
        <td><strong>Telephone #:&nbsp;&nbsp; </strong></td>
        <td>${user.telephone}</td>
    </tr>
     <tr>
        <td><strong>Address:&nbsp;&nbsp;</strong></td>
        <td>${user.address}</td>
    </tr>
     <tr>
        <td><strong>Email: &nbsp;&nbsp;</strong></td>
        <td>${user.email}</td>
    </tr>
     <tr>
        <td><strong>Zipcode: &nbsp;&nbsp;</strong></td>
        <td>${user.zipCode}</td>
    </tr>
    <sec:authorize access="hasRole('ROLE_STAFF')">
        <tr>
            <td><strong>Start Date: </strong></td>
            <td>${user.startDate}</td>
        </tr>
    </sec:authorize>
</table>
