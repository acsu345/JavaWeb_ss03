<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%--
  Created by IntelliJ IDEA.
  User: phuch
  Date: 4/7/2026
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    
    <c:forEach var="employee" items="${employees}">
        <p>${employee.id} - ${employee.name} - ${employee.position} - ${employee.salary}  </p>
    </c:forEach>
</body>
</html>
