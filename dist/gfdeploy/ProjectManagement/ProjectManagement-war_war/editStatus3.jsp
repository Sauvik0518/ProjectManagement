<%-- 
    Document   : editStatus3
    Created on : Dec 24, 2016, 1:43:08 AM
    Author     : ANIK
--%>

<%@page import="com.project.entities.ProjectstatusPmt"%>
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
            
            String projectName = request.getParameter("pname");
            String projectId = request.getParameter("pid");
            String projectManager = request.getParameter("pmanager");
            String projectClient = request.getParameter("pclient");
            String projectStartingdate = request.getParameter("pstartingdate");
            String projectDeadline = request.getParameter("pdeadline");
            
            String srsMembers = request.getParameter("srs_members");
            String srsStartingdate = request.getParameter("srs_startingdate");
            String srsDeadline = request.getParameter("srs_deadline");
            
            String designMembers = request.getParameter("design_members");
            String designStartingdate = request.getParameter("design_startingdate");
            String designDeadline = request.getParameter("design_deadline");
            
            String devMembers = request.getParameter("dev_members");
            String devStartingdate = request.getParameter("dev_startingdate");
            String devDeadline = request.getParameter("dev_deadline");
            
            String testingMembers = request.getParameter("testing_members");
            String testingStartingdate = request.getParameter("testing_startingdate");
            String testingDeadline = request.getParameter("testing_deadline");
            
            String docMembers = request.getParameter("doc_members");
            String docStartingdate = request.getParameter("doc_startingdate");
            String docDeadline = request.getParameter("doc_deadline");
            
            
            ProjectstatusPmt status = new ProjectstatusPmt();
            
            status.setProjectName(projectName);
            status.setProjectId(projectId);
            status.setProjectManager(projectManager);
            status.setProjectClient(projectClient);
            status.setProjectStartingdate(projectStartingdate);
            status.setProjectDeadline(projectDeadline);
            
            status.setSrsMembers(srsMembers);
            status.setSrsStartingdate(srsStartingdate);
            status.setSrsDeadline(srsDeadline);
            
            status.setDesignMembers(designMembers);
            status.setDesignStartingdate(designStartingdate);
            status.setDesignDeadline(designDeadline);
            
            status.setDevelopmentMembers(devMembers);
            status.setDevelopmentStartingdate(devStartingdate);
            status.setDevelopmentDeadline(devDeadline);
            
            status.setTestingMembers(testingMembers);
            status.setTestingStartingdate(testingStartingdate);
            status.setTestingDeadline(testingDeadline);
            
            status.setDocumentationMembers(docMembers);
            status.setDocumentationStartingdate(docStartingdate);
            status.setDocumentationDeadline(docDeadline);
            
            
                    
            
           pm.editStatus(status);
        %>
        
        <h3>Project Status Updated!!!</h3>
    </body>
</html>
