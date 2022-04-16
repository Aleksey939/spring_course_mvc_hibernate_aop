<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html>
<body>
<h2>All Employee</h2>

<table>
    <tr>

        <th>Name</th>
        <th>Surname</th>
        <th>Departament</th>
        <th>Salary</th>
        <th>Operation</th>
    </tr>
<c:forEach var ="emp" items="${allEmps}">
    <tr>
<c:url var ="updateButton" value="/updateInfo">
    <c:param name="empId" value="${emp.id}"/>
</c:url>
        <c:url var ="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <th>${emp.name}</th>
        <th>${emp.surname}</th>
        <th>${emp.departament}</th>
        <th>${emp.salary}</th>
       <td><input type="button" value="Update" onclick="window.location.href='${updateButton}'"/>
        <input type="button" value="Delete" onclick="window.location.href='${deleteButton}'"/></td>
    </tr>
</c:forEach>

</table>
<br/>
<input type="button" value="Add" onclick="window.location.href='addNewEmployee'"/>
</body>
</html>
