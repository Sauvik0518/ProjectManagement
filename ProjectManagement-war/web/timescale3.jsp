<%-- 
    Document   : timescale3
    Created on : Dec 24, 2016, 3:31:14 PM
    Author     : ANIK
--%>


<%@page import="java.text.ParseException"%>
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String input1 = request.getParameter("search_name");
            
            PMLocal pm=null;
            try{
            InitialContext context = new InitialContext();
                pm = (PMLocal) context.lookup("java:global/ProjectManagement/ProjectManagement-ejb/PM");
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
            List<ProjectstatusPmt> listProjects = pm.searchProject(input1.toLowerCase());
        %>
        <div id="timescale">
            
            <%  
                        boolean projectAvailable = false;
                                      int i=0;
                        for (ProjectstatusPmt projectStatus : listProjects) {
                 %>
                 <%
                     String StartingDate = projectStatus.getProjectStartingdate();
          String Deadline = projectStatus.getProjectDeadline();
          String SrsStartingDate = projectStatus.getSrsStartingdate();
          String SrsDeadline = projectStatus.getSrsDeadline();
          String DesignStartingDate = projectStatus.getDesignStartingdate();
          String DesignDeadline = projectStatus.getDesignDeadline();
          String DevelopmentStartingDate = projectStatus.getDevelopmentStartingdate();
          String DevelopmentDeadline = projectStatus.getDevelopmentDeadline();
          String TestingStartingDate = projectStatus.getTestingStartingdate();
          String TestingDeadline = projectStatus.getTestingDeadline();
          String DocumentationStartingDate = projectStatus.getDocumentationStartingdate();
          String DocumentationDeadline = projectStatus.getDocumentationDeadline();
          
          SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
          
          Date projectStartingDate = null;
          Date projectDeadline = null;
          Date srsStartingDate = null;
          Date srsDeadline = null;
          Date designStartingDate = null;
          Date designDeadline = null;
          Date developmentStartingDate = null;
          Date developmentDeadline = null;
          Date testingStartingDate = null;
          Date testingDeadline = null;
          Date documentationStartingDate = null;
          Date documentationDeadline= null;
          
          long projectDuration = 0;
          long srsDuration = 0;
          long designDuration = 0;
          long developmentDuration = 0;
          long testingDuation = 0;
          long documentationDuration = 0;
		
		try {
		    //Parsing the String
		    srsStartingDate = dateFormat.parse(SrsStartingDate);
                    srsDeadline = dateFormat.parse(SrsDeadline);
                    
                    designStartingDate = dateFormat.parse(DesignStartingDate);
                    designDeadline = dateFormat.parse(DesignDeadline);
                    
                    developmentStartingDate = dateFormat.parse(DevelopmentStartingDate);
                    developmentDeadline = dateFormat.parse(DevelopmentDeadline);
                    
                    testingStartingDate = dateFormat.parse(TestingStartingDate);
                    testingDeadline = dateFormat.parse(TestingDeadline);
                    
                    documentationStartingDate = dateFormat.parse(DocumentationStartingDate);
                    documentationDeadline = dateFormat.parse(DocumentationDeadline);
                    
                    srsDuration = (srsDeadline.getTime() - srsStartingDate.getTime());
                    designDuration = (designDeadline.getTime() - designStartingDate.getTime());
                    developmentDuration = (developmentDeadline.getTime() - developmentStartingDate.getTime());
                    testingDuation = (testingDeadline.getTime() - testingStartingDate.getTime());
                    documentationDuration = (documentationDeadline.getTime() - documentationStartingDate.getTime());
                    
		} catch (ParseException e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
                
                 //System.out.println("The Duration of Design is "+(designDuration/(1000*60*60*24))+ " days");
                 %>
            
                 Project name: <%=projectStatus.getProjectName()%> <br/>
                 Starting Date: <%=projectStatus.getProjectStartingdate()%> and Deadline: <%=projectStatus.getProjectDeadline()%> <br/>
                 Total duration for "<%=projectStatus.getProjectName()%>" is <%= projectDuration/(1000*60*60*24) %> days <br/><br/>
                 
                 <b>SRS</b><br/>
                 Starting Date: <%= projectStatus.getSrsStartingdate() %> and Deadline: <%= projectStatus.getSrsDeadline() %><br/>
                 Total duration for SRS is <%= srsDuration/(1000*60*60*24) %> days <br/><br/>
                 
                 <b>Design</b><br/>
                 Starting Date: <%= projectStatus.getDesignStartingdate() %> and Deadline: <%= projectStatus.getDesignDeadline() %><br/>
                 Total duration for Design is <%= designDuration/(1000*60*60*24) %> days <br/><br/>
                 
                 <b>Development</b><br/>
                 Starting Date: <%= projectStatus.getDevelopmentStartingdate() %> and Deadline: <%= projectStatus.getDevelopmentDeadline() %><br/>
                 Total duration for Development is <%= developmentDuration/(1000*60*60*24) %> days <br/><br/>
                 
                 <b>Testing</b><br/>
                 Starting Date: <%= projectStatus.getTestingStartingdate() %> and Deadline: <%= projectStatus.getTestingDeadline() %><br/>
                 Total duration for Testing is <%= testingDuation/(1000*60*60*24) %> days <br/><br/>
                 
                 <b>Documentation and Release</b><br/>
                 Starting Date: <%= projectStatus.getDocumentationStartingdate() %> and Deadline: <%= projectStatus.getDocumentationDeadline() %><br/>
                 Total duration for Documentation and Release is <%= documentationDuration/(1000*60*60*24) %> days <br/><br/>
                  <%
                        }
                    %>
                 
            </div>
    </body>
</html>
