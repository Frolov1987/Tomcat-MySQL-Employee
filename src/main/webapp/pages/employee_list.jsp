<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employees List</title>
    <style>
   .greenButton {
               box-shadow:inset 0px 1px 0px 0px #caefab;
               	background:linear-gradient(to bottom, #77d42a 5%, #5cb811 100%);
               	background-color:#77d42a;
               	border-radius:6px;
               	border:1px solid #268a16;
               	display:inline-block;
               	cursor:pointer;
               	color:#306108;
               	font-family:Arial;
               	font-size:15px;
               	font-weight:bold;
               	padding:6px 24px;
               	text-decoration:none;
               	text-shadow:0px 1px 0px #aade7c;
               }
               .greenButton:hover {
               	background:linear-gradient(to bottom, #5cb811 5%, #77d42a 100%);
               	background-color:#5cb811;
               }
               .greenButton:active {
               	position:relative;
               	top:1px;
        }
        .redButton {
           box-shadow:inset 0px 1px 0px 0px #f29c93;
           	background:linear-gradient(to bottom, #fe1a00 5%, #ce0100 100%);
           	background-color:#fe1a00;
           	border-radius:6px;
           	border:1px solid #d83526;
           	display:inline-block;
           	cursor:pointer;
           	color:#ffffff;
           	font-family:Arial;
           	font-size:15px;
           	font-weight:bold;
           	padding:6px 24px;
           	text-decoration:none;
           	text-shadow:0px 1px 0px #b23e35;
           }
           .redButton:hover {
           	background:linear-gradient(to bottom, #ce0100 5%, #fe1a00 100%);
           	background-color:#ce0100;
           }
           .redButton:active {
           	position:relative;
           	top:1px;
        }
    </style>
</head>
<body>
    <center>
        <h1>Employees List</h1>
        <h3>
        <!-- <a href="<%=request.getContextPath()%>/new">Add New Employee</a> -->
            <a href="<%=request.getContextPath()%>/new" class="greenButton">Add Employee</a>
            &nbsp;&nbsp;&nbsp;
            <a href="<%=request.getContextPath()%>/list">List Employees</a>
        </h3>
    </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Employees</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Position</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="employee" items="${listEmployee}">
                <tr>
                    <td><c:out value="${employee.id}" /></td>
                    <td><c:out value="${employee.name}" /></td>
                    <td><c:out value="${employee.position}" /></td>
                    <td><c:out value="${employee.phone}" /></td>
                    <td>
                        <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${employee.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${employee.id}' />" class="redButton">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>