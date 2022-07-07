<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fror" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE>
<html>
<body>
<h2> User Info</h2>

<br>

<form:form action="saveUser" modelAttribute="user">

    <form:hidden path="id"/>

    Full name <form:input path="fullName"/>
    <form:errors path="fullName"/>
    <br>
    <br>
    email <form:input path="email"/>
    <fror:errors path="email"/>
    <br>
    <br>
    phone <form:input path="phone"/>
    <from:errors path="phone"/>
    <br>
    <br>
   address <form:input path="address"/>
    <from:errors path="address"/>

    <br>
    <br>
    Date of Birth <form:input path="dateOfBirth"/>
    <from:errors path="dateOfBirth"/>
    <br>
    <br>
    <input type="submit" value="OK">

</form:form>
</body>
</html>