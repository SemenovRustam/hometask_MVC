<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>
<h3>All Users</h3>
<div>
    <table border="1px">
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Date of birth</th>
            <th>Operations</th>
        </tr>
        <c:forEach var="users" items="${allUsers}">

            <c:url var="updateButton" value="/api/updateInfo">
                <c:param name="userId" value="${users.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/api/deleteUser">
                <c:param name="userId" value="${users.id}"/>
            </c:url>

            <tr>
                <td>${users.fullName}</td>
                <td>${users.email}</td>
                <td>${users.phone}</td>
                <td>${users.address}</td>
                <td>${users.dateOfBirth}</td>
                <td>
                    <input type="button" value="Update" onclick="window.location.href = '${updateButton}'"/>
                    <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"/>
                </td>
            </tr>
        </c:forEach>
    </table>
    <input type="button" value="add new user"
    onclick="window.location.href= 'addUser'"/>
</div>
</body>
</html>