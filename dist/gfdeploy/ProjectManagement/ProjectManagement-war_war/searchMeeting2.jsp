<%-- 
    Document   : searchMeeting2
    Created on : Dec 24, 2016, 11:07:13 AM
    Author     : ANIK
--%>

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
        <%
            String input1 = request.getParameter("search_date");
            
            PMLocal pm=null;
            try{
            InitialContext context = new InitialContext();
                pm = (PMLocal) context.lookup("java:global/ProjectManagement/ProjectManagement-ejb/PM");
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
            List<Meetings> listResult = pm.search(input1.toLowerCase());
        %>
        
        <div id="admin_table">
            <h1 style="color:#000099;" align="center">Scheduled Meetings</h1>
               
            <table align="center" border="1" style="width: 84%" id="results">
                <thead>
                <th>Topic</th><th>Date</th><th>Time</th><th>Place</th><th>Attendees</th>
                
                </thead>
                
                <%
                         boolean meetingAvailable = false;
                                      int i=0;
                        for (Meetings meetings : listResult) {
                 %>
                        <tr>
                        <td align="center">    
                            <%= meetings.getTopic() %>
                        </td>
                        <td align="center">
                            <a href="viewMeetingsInForm2.jsp?mId=<%= meetings.getMeetingId() %>" style="color: #000099"><%= meetings.getMeetingDate() %></a>
                        </td>
                        <td align="center">
                            <%= meetings.getMeetingTime() %>
                        </td>
                        <td align="center">
                            <%= meetings.getMeetingPlace() %>
                        </td>
                        <td align="center">
                            <%= meetings.getMeetingAttendees() %>
                        </td>
                        <td align="center">
                            <a href="editMeeting2.jsp?mId=<%= meetings.getMeetingId() %>" style="color: #000099">Edit</a>
                        </td>
                        <td align="center">
                            <a href="deleteMeeting2.jsp?mId=<%= meetings.getMeetingId() %>" style="color: #000099">Delete</a>
                        </td>
                        <%meetingAvailable = true;%>
                        </tr>
                    
                    <%
                        i++;        
        }
        System.out.println("Total results found: "+i);        
                %><%
                    if (!meetingAvailable) {
                %><tr><td colspan="10" align="center">No meeting is scheduled on this day!</td></tr><%
                }
                    %>
                
            </table>&nbsp;&nbsp;Total results found: <%=i%>
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
