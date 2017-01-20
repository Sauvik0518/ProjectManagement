<%-- 
    Document   : editMeeting3
    Created on : Dec 22, 2016, 2:54:55 PM
    Author     : ANIK
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.project.entities.Meetings"%>
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
            //List<String> values = new ArrayList<String>();
             
            String meeting_topic = request.getParameter("mtopic");
            String meetingId = request.getParameter("mid");
            String meeting_attendees = request.getParameter("mattendees");
            String meeting_date = request.getParameter("mdate");
            String meeting_time = request.getParameter("mtime");
            String meeting_place = request.getParameter("mplace");
            String meeting_type = request.getParameter("mtype");
            String meeting_medium = request.getParameter("mmedium");
            String notes = request.getParameter("mnotes");
            
            
            Meetings meetings = new Meetings();
            
            
            
            meetings.setTopic(meeting_topic);
            meetings.setMeetingId(meetingId);
            meetings.setMeetingAttendees(meeting_attendees);
            meetings.setMeetingDate(meeting_date);
            meetings.setMeetingTime(meeting_time);
            meetings.setMeetingPlace(meeting_place);
            meetings.setMeetingType(meeting_type);
            meetings.setMeetingMedium(meeting_medium);
            meetings.setNotes(notes);
            
            
            
            pm.editMeeting(meetings);
            
                    
            
            //pm.createStatus(status);
        %>
        
        <h3>Meeting Updated!!!</h3>
    </body>
</html>
