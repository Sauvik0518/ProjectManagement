<%-- 
    Document   : updatePassword2
    Created on : Dec 29, 2016, 6:53:41 AM
    Author     : ANIK
--%>

<%@page import="com.project.entities.Users"%>
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
            
            
            String name = request.getUserPrincipal().getName();
            String newPassword = request.getParameter("inputPassword");

            String hashPassword = pm.generateHashPassword(newPassword);
            Users userTable = new Users();
            
            userTable.setUsername(name);
            userTable.setEmail(name);
            userTable.setPassword(hashPassword);
            pm.changePassword(userTable);
                            %>
                            
                            <jsp:include page="updatePassword3.jsp" />
                            
    </body>
</html>
