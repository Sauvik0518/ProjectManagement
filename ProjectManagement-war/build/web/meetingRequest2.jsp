<%-- 
    Document   : meetingRequest2
    Created on : Dec 21, 2016, 12:12:23 PM
    Author     : ANIK
--%>


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
            
            String meeting_topic = request.getParameter("topic");
            String meetingId = request.getParameter("meeting_id");
            String meeting_attendees = request.getParameter("meeting_attendees");
            String meeting_date = request.getParameter("meeting_date");
            String meeting_time = request.getParameter("meeting_time");
            String meeting_place = request.getParameter("meeting_place");
            String meeting_type = request.getParameter("meeting_type");
            String meeting_medium = request.getParameter("meeting_medium");
            String notes = request.getParameter("notes");
            
            
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
            
            
            
            pm.meetingRequest(meetings);
            
                    
            
            //pm.createStatus(status);
        %>
        
        <h3>Meeting Request Sent!!!</h3>
    </body>
</html>
