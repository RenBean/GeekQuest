<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ari
  Date: 7/29/16
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        table.center {  margin-left:auto;  margin-right:auto;  }
        h1 {  text-align: center;  }
        body {text-align:center;  }
        *{  background-color: lightsteelblue; text-align: center;  }
        a:hover{  text-decoration: none;  color:rebeccapurple; font-weight: 500  }
        a{  text-decoration: none;  color:darkblue; font-weight: 500  }
        img {max-height: 400px}
    </style>
    <title>View All Wizards</title>
    <link rel="shortcut icon" href="/wizBox/HogwartsColor.png" type="image/x-icon" />
</head>
<body>
View All Wizards
<table class="center">
    <tr>
        <th>Wizard Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>House Crest</th>
        <th>Deathly Hallow</th>
        <th>Jelly Bean</th>
    </tr>
    <c:forEach items="${wizards}" var="wizard">
        <tr>
            <td>
                <a href="/Wiz/viewWizard?wizardId=${wizard.wizardId}">
                    <c:out value="${wizard.wizardId}" />
                </a>
            </td>
            <td><c:out value="${wizard.firstName}" /></td>
            <td><c:out value="${wizard.lastName}" /></td>
            <td><c:out value="${wizard.wizardCrestType}" /></td>
            <td><c:out value="${wizard.deathlyHallow}" /></td>
            <td><c:out value="${wizard.bean}" /></td>
        </tr>
    </c:forEach>
</table>
<a href="Wiz/addNewWizard"><h1> Join Our Wizards Pool </h1></a>
<img src="/wizBox/mottos.jpg"/>
<br><br>
<a href="/">HOME</a>
</body>
</html>
