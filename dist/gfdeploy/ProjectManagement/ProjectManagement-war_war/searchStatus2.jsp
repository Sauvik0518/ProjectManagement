<%-- 
    Document   : searchStatus2
    Created on : Dec 24, 2016, 12:12:45 PM
    Author     : ANIK
--%>

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
        <div id="admin_table">
            <h1 style="color:#000099;" align="center">Existing Projects</h1>
             
            <table align="center" border="1" style="width: 84%" id="results">
                <thead>
                <th>Project Name</th><th>Project Id</th><th>Project Manager</th><th>Client</th><th>Starting Date</th>
                <th>Deadline</th>
                </thead>
                
                <%  
                        boolean projectAvailable = false;
                                      int i=0;
                        for (ProjectstatusPmt projectStatus : listProjects) {
                 %>
                        <tr>
                        <td align="center">    
                            <%=projectStatus.getProjectName()%>
                        </td>
                        <td align="center">
                            <a href="viewInForm2.jsp?id=<%=projectStatus.getProjectId()%>" style="color: #000099"><%=projectStatus.getProjectId()%></a>
                        </td>
                        <td align="center">
                            <%=projectStatus.getProjectManager()%>
                        </td>
                        <td align="center">
                            <%=projectStatus.getProjectClient()%>
                        </td>
                        <td align="center">
                            <%=projectStatus.getProjectStartingdate()%>
                        </td>
                        <td align="center">
                            <%=projectStatus.getProjectDeadline()%>
                        </td>
                        <td align="center">
                            <a href="timescale2.jsp?id=<%=projectStatus.getProjectId()%>" style="color: #000099">Time Chart</a>
                        </td>
                        <td align="center">
                            <a href="editStatus2.jsp?id=<%= projectStatus.getProjectId() %>" style="color: #000099">Edit</a>
                        </td>
                        </tr>
                    
                    <%
                        i++;        
        }
        System.out.println("Total results found: "+i);        
                %><%
                    if (!projectAvailable) {
                %><tr><td colspan="10" align="center">No result found!</td></tr><%
                }
                    %>
                
            </table>&nbsp;&nbsp;Total results found: <%=i%>
            <br/>
            <div id="pageNavPosition" align="center"></div>
        </div>
            <script type="text/javascript">
        var pager = new Pager('results', 12); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    </script>
    </body>
</html>
