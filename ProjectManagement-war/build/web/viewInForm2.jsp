<%-- 
    Document   : viewInForm2
    Created on : Dec 15, 2016, 9:46:00 PM
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
        <title>PMT</title>
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
        
        <form>
           
            <div id="first_one">
            <h3>Project Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Project Name:</b>&emsp;&emsp;&emsp;&emsp;&nbsp;<input type='text' name='name' size="30" value="<%=projectStatus.getProjectName()%>" readonly/><br/><br/> 
            <b>&emsp;&emsp;&emsp;Project Id:</b>&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<input type='text' name='number' size="30" value="<%=projectStatus.getProjectId()%>" readonly/>&emsp;&emsp;&emsp;<br/> <br/>
            <b>&emsp;&emsp;&emsp;Project Manager:</b>&emsp; &nbsp;&emsp;&nbsp;<input type='text' name='division' size="30" value="<%=projectStatus.getProjectManager()%>" readonly/>&emsp;&emsp;&emsp;&emsp;<br/><br/>
            <b>&emsp;&emsp;&emsp;Client:</b>&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="text" name="designation" size="30" value="<%=projectStatus.getProjectClient()%>" readonly><br/><br/>	
			<b>&emsp;&emsp;&emsp;Project Starting Date:</b>&emsp;<input type="text" name="designation" size="30" value="<%=projectStatus.getProjectStartingdate()%>" readonly><br/><br/>
			<b>&emsp;&emsp;&emsp;Project Deadline:</b>&emsp;&emsp;&nbsp;&nbsp;&nbsp;<input type="text" name="designation" size="30" value="<%=projectStatus.getProjectDeadline()%>" readonly><br/><br/>
		</div>
		
		<div id="second_one">
                    <h3>Software Requirement Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;SRS Members:</b>&nbsp;&emsp;&emsp;&nbsp;<input type='text' name='name' size="30" value="<%=projectStatus.getSrsMembers()%>" readonly/><br/><br/> 
            <b>&emsp;&emsp;&emsp;SRS Strating Date:</b>&emsp;<input type='text' name='number' size="30" value="<%=projectStatus.getSrsStartingdate()%>" readonly/>&emsp;&emsp;&emsp;<br/><br/> 
            <b>&emsp;&emsp;&emsp;SRS Deadline:</b>&emsp; &nbsp;&emsp;&nbsp;&nbsp;<input type='text' name='division' size="30" value="<%=projectStatus.getSrsDeadline()%>" readonly/>&emsp;&emsp;&emsp;&emsp;<br/>
		</div>
		
		<div id="third_one">
                    <h3>Design Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Design Members:</b>&emsp;&emsp;<input type='text' name='name' size="30" value="<%=projectStatus.getDesignMembers()%>" readonly/><br/><br/> 
            <b>&emsp;&emsp;&emsp;Design Starting Date:</b>&nbsp;<input type='text' name='number' size="30" value="<%=projectStatus.getDesignStartingdate()%>" readonly/>&emsp;&emsp;&emsp;<br/><br/> 
            <b>&emsp;&emsp;&emsp;Design Deadline:</b>&emsp; &nbsp;&nbsp;&nbsp;<input type='text' name='division' size="30" value="<%=projectStatus.getDesignDeadline()%>" readonly/>&emsp;&emsp;&emsp;&emsp;<br/>
		</div>
		
		<div id="forth_one">
                    <h3>Software Development Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Development Members:</b>&nbsp;&emsp;&nbsp;<input type='text' name='name' size="30" value="<%=projectStatus.getDevelopmentMembers()%>" readonly/><br/><br/> 
            <b>&emsp;&emsp;&emsp;Development Starting Date:</b>&nbsp;<input type='text' name='number' size="30" value="<%=projectStatus.getDevelopmentStartingdate()%>" readonly/>&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;Deevelopment Deadline:</b>&emsp; &nbsp;&nbsp;<input type='text' name='division' size="30" value="<%=projectStatus.getDevelopmentDeadline()%>" readonly/>&emsp;&emsp;&emsp;&emsp;<br/>
		</div>
		
		<div id="fifth_one">
                    <h3>Testing Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Testing Members:</b>&emsp;&emsp;&nbsp;<input type='text' name='name' size="30" value="<%=projectStatus.getTestingMembers()%>" readonly/><br/><br/> 
            <b>&emsp;&emsp;&emsp;Testing Starting Date:</b>&nbsp;&nbsp;<input type='text' name='number' size="30" value="<%=projectStatus.getTestingStartingdate()%>" readonly/>&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;Testing Deadline:</b>&emsp; &nbsp;&emsp;<input type='text' name='division' size="30" value="<%=projectStatus.getTestingDeadline()%>" readonly/>&emsp;&emsp;&emsp;&emsp;<br/>
		</div>
		
		<div id="sixth_one">
                    <h3>Documentation Related Information</h3>
            <br/><b>&emsp;&emsp;&emsp;Documentation Members:</b>&emsp;&emsp;&nbsp;<input type='text' name='name' size="30" value="<%=projectStatus.getDocumentationMembers()%>" readonly/><br/><br/> 
            <b>&emsp;&emsp;&emsp;Documentation Starting Date:</b>&nbsp;&nbsp;<input type='text' name='number' size="30" value="<%=projectStatus.getDocumentationStartingdate()%>" readonly/>&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;Documentation Deadline:</b>&emsp; &nbsp;&emsp;<input type='text' name='division' size="30" value="<%=projectStatus.getDocumentationDeadline()%>" readonly/>&emsp;&emsp;&emsp;&emsp;<br/>
		</div>
                
        
        </form>
    </body>
</html>
