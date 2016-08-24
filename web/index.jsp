<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <style>
          table.center {  margin-left:auto;  margin-right:auto;  }
          h1 {  font-size: 100px;  text-align: center; }
          body {text-align:center;  background-image: url("/wizBox/Castle.jpg"); opacity: 0.9;
            background-size: cover ;  }
          *{  background-color: aliceblue; opacity: 0.9;  text-align: center;  }
          a:hover{  text-decoration: none;  color:gold;  }
          a{  text-decoration: none;  color:dimgrey; }
          p a{  color:dimgray;  text-decoration: none; font-weight: 500 }
          p a:hover{  text-decoration: none;  color:darkviolet; font-weight: 500  }
        span {font-size: 18px; font-weight: bold; background-image: url("/wizBox/Castle.jpg");}
    </style>
      <link rel="shortcut icon" href="/wizBox/HogwartsColor.png" type="image/x-icon" />
    <title>Hogwarts House of Wizards</title>
  </head>
  <body>
  <p><a href="Wiz/addNewWizard">Add New Wizard</a> || <a href="Wiz/viewAllWizards">View All Wizards</a></p>
  <span>Hogwarts House of Wizards Registry:</span>
  <a href="Wiz/viewAllWizards"><h1> Enter! </h1></a>
  </body>
  </html>
