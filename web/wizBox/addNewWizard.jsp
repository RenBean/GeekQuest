<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ari
  Date: 7/29/16
  Time: 9:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <style>
        table {  margin-left:auto;  margin-right:auto; color: darkblue }
        h1 {  text-align: center;  }
        body {text-align:center;  }
        *{  background-color: lightsteelblue; opacity: 0.9; text-align: center; color:midnightblue; font-weight: 500  }
        a:hover{  text-decoration: none;  color:rebeccapurple; font-weight: 500 }
        a{  text-decoration: none;  color:darkblue; font-weight: 500 }
        img {max-height: 220px}
    </style>
    <title>Join Us Wizard!</title>
    <link rel="shortcut icon" href="/wizBox/HogwartsColor.png" type="image/x-icon" />
</head>
<body>
Join Us Wizard!
<br><br>
<div>
    <form name="newWizardForm" method="POST" action="/Wiz/saveNewWizard">
        First Name: <input type="text" name="firstName" value="<c:out value="${wizard.firstName}" />" /><br>
        Last Name: <input type="text" name="lastName" value="<c:out value="${wizard.lastName}" />" /><br>
        <br>
        Your Hogwarts House <br>Crest: <select name="wizardCrestType">
        <c:forEach var="wCrestType" items="${wizardCrestTypes}">
        <option value="<c:out value="${wCrestType}"/>"><c:out value="${wCrestType}"/> </option>
        </c:forEach><br>
        </select><br><br>

            Choose your "Deathly Hallow":<br>
        ~an unbeatable wand, <br>a stone to bring the dead to life, <br>
        and a cloak of invisibility:<br><select name="deathlyHallow">
            <c:forEach var="dHallow" items="${deathlyHallow}">
                <option value="<c:out value="${dHallow}"/>"><c:out value="${dHallow}"/> </option>
            </c:forEach><br>
        </select><br><br>
            What is your favorite every flavor Jelly Bean? <br>
            <input type="text" name="bean" value="<c:out value="${wizard.bean}" />"/><br><br>
        <input type="submit">
    </form>
</div>
<img src="/wizBox/Hogwarts.png"/><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/">HOME</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/Wiz/viewAllWizards">All Wizards</a>
</body>
</html>
