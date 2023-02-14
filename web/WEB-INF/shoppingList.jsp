<%-- 
    Document   : shoppingList
    Created on : 14-Feb-2023, 9:53:42 AM
    Author     : Xavier
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        Hello, ${sessionUser} <a href="shoppinglist?logout">Logout</a>
        <h3>List</h3>
        
        <form action="" method="post">
            Add Item: <input type="text" name="itemToAdd">
            <input type="submit" value="Add Item">
            <input type="hidden" name="action" value="add">
        </form> 
        
        <form action="" method="post">
            <ul>
                <c:forEach var="item" items="${list}">
                    <li>
                        <input type="radio" name="item" value="${item}"> ${item}
                    </li>
                </c:forEach>
            </ul>
            
            <input type="submit" value="Delete Item">
            <input type="hidden" name="action" value="delete">
        </form>
        
    </body>
</html>
