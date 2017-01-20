<%-- 
    Document   : viewMeetings2
    Created on : Dec 21, 2016, 1:07:36 PM
    Author     : ANIK
--%>

<%@page import="com.project.entities.Meetings"%>
<%@page import="java.util.List"%>
<%@page import="com.project.myproject.PMLocal"%>
<%@page import="javax.naming.InitialContext"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/ProjectManagement-war/meetingRequest3.jsp" class="inline">
            <button class="button">Call Meeting</button>
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

            List<Meetings> listAll = pm.getAllMeetings();
        %>
        
        <div id="status_table">
            <h1 style="color:#000099;" align="center">Scheduled Meetings</h1>
            <form name="searchForm" action="searchMeeting2.jsp">
                &emsp;<input type="date" placeholder="meeting date" name="search_date" id="search_box" />
                <input type="submit" name="submitForm" value="Search" class="search_button"/><br/><br/>
            </form>    
            <table align="center" border="1" style="width: 84%" id="results">
                <thead>
                <th>Topic</th><th>Date</th><th>Time</th><th>Place</th><th>Attendees</th>
                
                </thead>
                
                <%
                        for (Meetings meetings : listAll) {
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
