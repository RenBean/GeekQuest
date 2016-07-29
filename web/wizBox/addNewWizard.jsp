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
    <title>Joun Us Wizard!</title>
    <link rel="shortcut icon" href="/wizBox/Hogwarts.png" type="image/x-icon" />
</head>
<body>
Joun Us Wizard!
<br><br>
    <form name="newWizardForm" method="POST" action="/Wiz/saveNewWizard">
        First Name: <input type="text" name="firstName" value="<c:out value="${wizard.firstName}" />" /><br>
        Last Name: <input type="text" name="lastName" value="<c:out value="${wizard.lastName}" />" /><br>

        Your Hogwarts House Crest: <select name="wizardCrestType">
        <c:forEach var="wCrestType" items="${wizardCrestTypes}">
        <option value="<c:out value="${wCrestType}"/>"><c:out value="${wCrestType}"/> </option>
        </c:forEach><br>
        </select><br>

            Choose your "Deathly Hallow":<br>
        —an unbeatable wand, a stone to bring the dead to life, <br>
        and a cloak of invisibility:<select name="deathlyHallow">
            <c:forEach var="dHallow" items="${deathlyHallow}">
                <option value="<c:out value="${dHallow}"/>"><c:out value="${dHallow}"/> </option>
            </c:forEach><br>
        </select><br>

            <%--<input type="radio" name="Deathly Hallow" value="wand" >an unbeatable wand<br/>--%>
            <%--<input type="radio" name="Deathly Hallow" value="stone" >a stone to bring the dead to life<br/>--%>
            <%--<input type="radio" name="Deathly Hallow" value="cloak" >a cloak of invisibility<br/>--%>

            What is your favorite every flavor Jelly Bean? <br>
            <input type="text" name="bean" value="<c:out value="${wizard.bean}" />"/><br><br>
        <input type="submit">
    </form>

<a href="/">HOME</a>
&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/Wiz/viewAllWizards">All Wizards</a>
</body>
</html>
