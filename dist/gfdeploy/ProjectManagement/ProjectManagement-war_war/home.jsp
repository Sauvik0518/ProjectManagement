<%-- 
    Document   : home
    Created on : Dec 26, 2016, 1:47:13 PM
    Author     : ANIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>HomePage</title>
<link rel="stylesheet" type="text/css" href="template1.css">
</head>

<body>
    <div id="main">
	<jsp:include page="header.jsp" />


        <jsp:include page="navigation.jsp" />


        <jsp:include page="menu.jsp" />


        <jsp:include page="contentPage.jsp" />

           
        <jsp:include page="footer.jsp" />
    </div>
</body>
</html>
