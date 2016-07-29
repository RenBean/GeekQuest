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
        table.center {
            margin-left:auto;
            margin-right:auto;
        }
        h1 {
            text-align: center;
        }
        body {text-align:center;

        }

        *{

            background-color: aliceblue;
            text-align: center;
        }
        a:hover{
            text-decoration: none;
            color:gold;

        }
        a{
            text-decoration: none;
            color:dimgrey;

        }
    </style>
    <title>View Wizard</title>
    <link rel="shortcut icon" href="/wizBox/Hogwarts.png" type="image/x-icon" />
</head>
<body>

View Wizard
<br><br>
<table>
    <tr>
        <td>Wizard ID:</td>
        <td><c:out value="${wizard.wizardId}" /></td>
    </tr>
    <tr>
        <td>First Name:</td>
        <td><c:out value="${wizard.firstName}" /></td>
    </tr>
    <tr>
        <td>Last Name:</td>
        <td><c:out value="${wizard.lastName}" /></td>
    </tr>
    <tr>
        <td>House Crest:</td>
        <td><c:out value="${wizard.wizardCrestType}" /></td>
    </tr>
    <tr>
        <td>Deathly Hallow:</td>
        <td><c:out value="${wizard.deathlyHallow}" /></td>
    </tr>
    <tr>
        <td>Jelly Bean:</td>
        <td><c:out value="${wizard.bean}" /></td>
    </tr>
</table>
<br><br>
<a href="/">HOME</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/Wiz/viewAllWizards">All Wizards</a>



</body>
</html>
