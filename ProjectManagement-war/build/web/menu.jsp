<%-- 
    Document   : menu
    Created on : Dec 28, 2016, 6:45:30 PM
    Author     : ANIK
--%>

<%@page import="com.project.entities.Menu"%>
<%@page import="java.util.List"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.project.myproject.PMLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="template1.css">

        <title></title>
    </head>
    <body>
        <%
           PMLocal pm=null;
           String name = request.getUserPrincipal().getName();
            try{
            InitialContext context = new InitialContext();
                pm = (PMLocal) context.lookup("java:global/ProjectManagement/ProjectManagement-ejb/PM");
            }
            catch(Exception e){
                e.printStackTrace();
            }
           
            List<Menu> listx = pm.getMenuByUsername(name);
        %>
        
         <ul>
            <%                int i = 0;
                for (Menu mn : listx) {
                    i++;
            %>
            <li><a href="<%=mn.getFilename()%>"><b><%=mn.getMenuDescription()%></b></a></li>
                        <%
                            }
                        %>
        </ul>
    </body>
</html>

