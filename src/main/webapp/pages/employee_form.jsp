<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Employees Store</title>
    <style>
        .greenButton {
            box-shadow: inset 0px 1px 0px 0px #caefab;
            background: linear-gradient(to bottom, #77d42a 5%, #5cb811 100%);
            background-color: #77d42a;
            border-radius: 6px;
            border: 1px solid #268a16;
            display: inline-block;
            cursor: pointer;
            color: #306108;
            font-family: Arial;
            font-size: 15px;
            font-weight: bold;
            padding: 6px 24px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #aade7c;
        }

        .greenButton:hover {
            background: linear-gradient(to bottom, #5cb811 5%, #77d42a 100%);
            background-color: #5cb811;
        }

        .greenButton:active {
            position: relative;
            top: 1px;
        }

        input[type="submit"] {
            box-shadow: inset 0px 1px 0px 0px #caefab;
            background: linear-gradient(to bottom, #3498db 5%, #2980b9 100%);
            background-color: #3498db;
            border-radius: 6px;
            border: 1px solid #268a16;
            display: inline-block;
            cursor: pointer;
            color: #ffffff;
            font-family: Arial;
            font-size: 15px;
            font-weight: bold;
            padding: 6px 24px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #aade7c;
            transition: background-color 0.3s, transform 0.3s;
        }

        input[type="submit"]:hover {
            background: linear-gradient(to bottom, #2980b9 5%, #3498db 100%);
            background-color: #2980b9;
        }

        input[type="submit"]:active {
            position: relative;
            top: 1px;
        }
    </style>
</head>
<body>
    <center>
        <h1>Employee Store</h1>
        <h3>
            <a href="<%=request.getContextPath()%>/list"  class="greenButton">List Employees</a>
        </h3>
    </center>
    <div align="center">
        <c:if test="${employee != null}">
            <form action="update" method="post">
        </c:if>
        <c:if test="${employee == null}">
            <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h3>
                    <c:if test="${employee != null}">
                        Edit Employees
                    </c:if>
                    <c:if test="${employee == null}">
                        Add New Employees
                    </c:if>
                </h3>
            </caption>
            <c:if test="${employee != null}">
                <input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
            </c:if>
            <tr>
                <th>Name: </th>
                <td>
                    <input type="text" name="name" size="45"
                            value="<c:out value='${employee.name}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Position: </th>
                <td>
                    <input type="text" name="position" size="45"
                            value="<c:out value='${employee.position}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Phone: </th>
                <td>
                    <input type="text" name="phone" size="45"
                            value="<c:out value='${employee.phone}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <form action="<%=request.getContextPath()%>/insert">
                        <!-- The "Save" button is now styled as blue -->
                        <input type="submit" value="Save" />
                    </form>
                </td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>
