<%-- 
    Document   : editStatus2
    Created on : Dec 24, 2016, 1:42:43 AM
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
            
            String id = request.getParameter("id");
            ProjectstatusPmt projectStatus = pm.getDataByProjectId(id);
            
        %>
        
        <form action="editStatus3.jsp" method="POST">
            <div id="first_one">
            <h1 align="center">Edit Project Information</h1>    
            <h3>Project Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Project Name:</b>&emsp;&emsp;&emsp;&emsp;&nbsp;<input type='text' name='pname' size="30" value="<%=projectStatus.getProjectName()%>" /><br/><br/> 
            <b>&emsp;&emsp;&emsp;Project Id:</b>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<input type='text' name='pid' size="30" value="<%=projectStatus.getProjectId()%>" />&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;Project Manager:</b>&emsp; &nbsp;&emsp;&nbsp;<input type='text' name='pmanager' size="30" value="<%=projectStatus.getProjectManager()%>" />&emsp;&emsp;&emsp;&emsp;<br/><br/> 
            <b>&emsp;&emsp;&emsp;Client:</b>&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="text" name="pclient" size="30" value="<%=projectStatus.getProjectClient()%>" /><br/><br/>	
			<b>&emsp;&emsp;&emsp;Project Starting Date:</b>&emsp;<input type="text" name="pstartingdate" size="30" value="<%=projectStatus.getProjectStartingdate()%>" ><br/><br/>
			<b>&emsp;&emsp;&emsp;Project Deadline:</b>&emsp;&emsp;&nbsp;&nbsp;&nbsp;<input type="text" name="pdeadline" size="30" value="<%=projectStatus.getProjectDeadline()%>"><br/><br/>
		</div>
		
		<div id="second_one">
                    <h3>Software Requirement Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;SRS Members:</b>&nbsp;&emsp;&emsp;&nbsp;<input type='text' name='srs_members' size="30" value="<%=projectStatus.getSrsMembers()%>" /><br/><br/> 
            <b>&emsp;&emsp;&emsp;SRS Strating Date:</b>&emsp;<input type='text' name='srs_startingdate' size="30" value="<%=projectStatus.getSrsStartingdate()%>" />&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;SRS Deadline:</b>&emsp; &nbsp;&emsp;&nbsp;&nbsp;<input type='text' name='srs_deadline' size="30" value="<%=projectStatus.getSrsDeadline()%>" />&emsp;&emsp;&emsp;&emsp;<br/>
		</div>
		
		<div id="third_one">
                    <h3>Design Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Design Members:</b>&emsp;&emsp;<input type='text' name='design_members' size="30" value="<%=projectStatus.getDesignMembers()%>" /><br/><br/> 
            <b>&emsp;&emsp;&emsp;Design Starting Date:</b>&nbsp;<input type='text' name='design_startingdate' size="30" value="<%=projectStatus.getDesignStartingdate()%>" />&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;Design Deadline:</b>&emsp; &nbsp;&nbsp;&nbsp;<input type='text' name='design_deadline' size="30" value="<%=projectStatus.getDesignDeadline()%>" />&emsp;&emsp;&emsp;&emsp;<br/>
		</div>
		
		<div id="forth_one">
                    <h3>Software Development Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Development Members:</b>&nbsp;&emsp;&nbsp;<input type='text' name='dev_members' size="30" value="<%=projectStatus.getDevelopmentMembers()%>" /><br/><br/> 
            <b>&emsp;&emsp;&emsp;Development Starting Date:</b>&nbsp;<input type='text' name='dev_startingdate' size="30" value="<%=projectStatus.getDevelopmentStartingdate()%>" />&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;Deevelopment Deadline:</b>&emsp; &nbsp;&nbsp;<input type='text' name='dev_deadline' size="30" value="<%=projectStatus.getDevelopmentDeadline()%>" />&emsp;&emsp;&emsp;&emsp;<br/>
		</div>
		
		<div id="fifth_one">
                    <h3>Testing Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Testing Members:</b>&emsp;&emsp;&nbsp;<input type='text' name='testing_members' size="30" value="<%=projectStatus.getTestingMembers()%>" /><br/><br/> 
            <b>&emsp;&emsp;&emsp;Testing Starting Date:</b>&nbsp;&nbsp;<input type='text' name='testing_startingdate' size="30" value="<%=projectStatus.getTestingStartingdate()%>" />&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;Testing Deadline:</b>&emsp; &nbsp;&emsp;<input type='text' name='testing_deadline' size="30" value="<%=projectStatus.getTestingDeadline()%>" />&emsp;&emsp;&emsp;&emsp;<br/>
		</div>
		
		<div id="sixth_one">
                    <h3>Documentation Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Documentation Members:</b>&emsp;&emsp;&nbsp;<input type='text' name='doc_members' size="30" value="<%=projectStatus.getDocumentationMembers()%>" /><br/><br/> 
            <b>&emsp;&emsp;&emsp;Documentation Starting Date:</b>&nbsp;&nbsp;<input type='text' name='doc_startingdate' size="30" value="<%=projectStatus.getDocumentationStartingdate()%>" />&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;Documentation Deadline:</b>&emsp; &nbsp;&emsp;<input type='text' name='doc_deadline' size="30" value="<%=projectStatus.getDocumentationDeadline()%>" />&emsp;&emsp;&emsp;&emsp;<br/><br/>
		</div>
                
                <input type="submit" value="Edit" align="center" class="search_button">
        </form>
    </body>
</html>
