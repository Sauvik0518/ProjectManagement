<%-- 
    Document   : viewFiles2
    Created on : Dec 28, 2016, 8:46:19 PM
    Author     : ANIK
--%>

<%@page import="com.project.entities.FilesInformation"%>
<%@page import="com.project.entities.Meetings"%>
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
        <form action="/ProjectManagement-war/fileUpload.jsp" class="inline">
            <button class="button">Upload File</button>
        </form>
        <%
           PMLocal pm=null;
            try{
            InitialContext context = new InitialContext();
                pm = (PMLocal) context.lookup("java:global/ProjectManagement/ProjectManagement-ejb/PM");
            }
            catch(Exception e){
                e.printStackTrace();
            }

            List<FilesInformation> listAll = pm.getAllFiles();
        %>
        <div id="status_table">
            <h1 style="color:#000099;" align="center">Scheduled Meetings</h1>
               
            <table align="center" border="1" style="width: 84%" id="results">
                <thead>
                <th>File name</th><th>Uploaded by</th><th>Uploaded time</th>
                
                </thead>
                
                <%
                        for (FilesInformation fileinfo : listAll) {
                 %>
                        <tr>
                        <td align="center">    
                            <%= fileinfo.getFileName() %>
                        </td>
                        <td align="center">
                            <%= fileinfo.getUserName() %></a>
                        </td>
                        <td align="center">
                            <%= fileinfo.getUploadedTime() %>
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
