<%-- 
    Document   : test
    Created on : Nov 23, 2016, 1:42:42 PM
    Author     : ANIK
--%>

<%@page import="com.project.entities.Demo"%>
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
            
            String value=request.getParameter("value1");
            String value2=request.getParameter("value2");
            
            Demo demo=new Demo();
            demo.setId(value);
            demo.setName(value2);
            pm.addInDb(demo);
        %>
    </body>
</html>
