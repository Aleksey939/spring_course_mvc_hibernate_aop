<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!Doctype html>
<html>
<body>
<h2>Employee info</h2>
<br>
<form:form action="saveEmployee" modelAttribute="employee">

    <form:hidden path="id" />
    Name <form:input path="name"/>
    <br>
    Surname <form:input path="surname"/>
    <br>
    Departament <form:input path="departament"/>
    <br>
    Salary <form:input path="salary"/>
    <br>
    <input type="submit" value="ok">
</form:form>
</body>
</html>
