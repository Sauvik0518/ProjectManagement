<%-- 
    Document   : viewStatusUser2
    Created on : Dec 28, 2016, 10:45:38 PM
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
           PMLocal pm=null;
            try{
            InitialContext context = new InitialContext();
                pm = (PMLocal) context.lookup("java:global/ProjectManagement/ProjectManagement-ejb/PM");
            }
            catch(Exception e){
                e.printStackTrace();
            }

            List<ProjectstatusPmt> listAll = pm.getAllData();
        %>
        
        <div id="status_table">
            <h1 style="color:#000099;" align="center">Existing Projects</h1>
            <form name="searchForm2" action="searchStatus2.jsp">
                &emsp;<input type="text" placeholder="project name" name="search_name" id="search_box"/>
                &emsp;<input type="submit" name="submitForm" value="Search" class="search_button" />
            </form>  
            <table align="center" border="1" style="width: 84%" id="results">
                <thead>
                <th>Project Name</th><th>Project Id</th><th>Project Manager</th><th>Client</th><th>Starting Date</th>
                <th>Deadline</th>
                </thead>
                
                <%
                        for (ProjectstatusPmt projectStatus : listAll) {
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
                            <a href="editStatus2.jsp?id=<%= projectStatus.getProjectId() %>" style="color: #000099">Edit</a>
                        </td>
                        </tr>
                    
                    <%
                        }
                    %>
                
            </table>
            <br/>
            <div id="pageNavPosition" align="center"></div>
        </div>
        <script type="text/javascript">
            var pager = new Pager('results', 8);
            pager.init();
            pager.showPageNav('pager', 'pageNavPosition');
            pager.showPage(1);
        </script>
    </body>
</html>
