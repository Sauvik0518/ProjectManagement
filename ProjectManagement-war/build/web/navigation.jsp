<%-- 
    Document   : navigation
    Created on : Dec 29, 2016, 12:00:18 AM
    Author     : ANIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="template1.css">
        <title></title>
    </head>
    <body>
        <div id="navigationbar">
            <%= request.getUserPrincipal().getName() %> 
            <div id="logout">  
            <a href="Logout">Log out</a>
            </div>
			
            
	</div>
    </body>
</html>
