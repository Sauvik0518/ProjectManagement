<%-- 
    Document   : deleteMeeting2
    Created on : Dec 24, 2016, 1:28:13 AM
    Author     : ANIK
--%>

<%@page import="javax.naming.InitialContext"%>
<%@page import="com.project.myproject.PMLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           PMLocal pm=null;
            try{
            InitialContext context = new InitialContext();
                pm = (PMLocal) context.lookup("java:global/ProjectManagement/ProjectManagement-ejb/PM");
            }
            catch(Exception e){
                e.printStackTrace();
            }

            String id = request.getParameter("mId");
            pm.deleteMeeting(id);
        %>
        
        <br/><br/><br/><br/>Meeting Information Deleted Successfully!
        
    </body>
</html>
