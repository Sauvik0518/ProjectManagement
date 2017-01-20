<%-- 
    Document   : timescale2
    Created on : Dec 15, 2016, 8:48:42 PM
    Author     : ANIK
--%>

<%@page import="java.text.ParseException"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.project.entities.ProjectstatusPmt"%>
<%@page import="java.util.List"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.project.myproject.PMLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PMT</title>

    </head>
    <body>
        <form name="searchForm2" action="timescale3.jsp">
                &emsp;<input type="text" placeholder="project name" name="search_name" id="search_box" />
                <input type="submit" name="submitForm" value="Search" class="search_button"/>
        </form>
    </body>
</html>
