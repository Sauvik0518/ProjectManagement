<%-- 
    Document   : viewMeetingsInForm2
    Created on : Dec 21, 2016, 7:49:17 PM
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
            
            String mId = request.getParameter("mId");
            Meetings meetings = pm.getMeetingsByMeetingId(mId);
            
        %>
        <form>
            <div id="first_one">
            <h3>Meeting Details</h3>
            <br/><b>&emsp;&emsp;&emsp;Meeting Topic:</b>&nbsp;&emsp;&emsp;&emsp;<input type='text' name='mtopic' size="30" value="<%= meetings.getTopic() %>" readonly/><br/><br/> 
            <b>&emsp;&emsp;&emsp;Meeting Id:</b>&emsp;&emsp;&emsp;&emsp;&nbsp;<input type='text' name='mid' size="30" value="<%= meetings.getMeetingId() %>" readonly/>&emsp;&emsp;&emsp;<br/> <br/> 
            <b>&emsp;&emsp;&emsp;Meeting Attendees:</b>&emsp;&nbsp;<input type="text" name="mattendees" size="30" value="<%= meetings.getMeetingAttendees() %>" readonly><br/><br/>
            <b>&emsp;&emsp;&emsp;Meeting Date:</b>&emsp; &nbsp;&emsp;&emsp;&nbsp;<input type='text' name='mdate' size="30" value="<%= meetings.getMeetingDate() %>" readonly/>&emsp;&emsp;&emsp;&emsp;<br/><br/> 
            <b>&emsp;&emsp;&emsp;Meeting Time:</b>&emsp;&emsp;&emsp;&nbsp;&nbsp;<input type="text" name="mtime" size="30" value="<%= meetings.getMeetingTime() %>" readonly><br/><br/>	
			<b>&emsp;&emsp;&emsp;Meeting Place:</b>&emsp;&emsp;&emsp;&nbsp;<input type="text" name="mplace" size="30" value="<%= meetings.getMeetingPlace() %>" readonly><br/><br/>
			<b>&emsp;&emsp;&emsp;Meeting Type:</b>&emsp;&emsp;&emsp;&nbsp;<input type="text" name="mtype" size="30" value="<%= meetings.getMeetingType() %>" readonly><br/><br/>
                        <b>&emsp;&emsp;&emsp;Meeting Medium:</b>&emsp;&emsp;&nbsp;<input type="text" name="mmedium" size="30" value="<%= meetings.getMeetingMedium() %>" readonly><br/><br/>
                        <b>&emsp;&emsp;&emsp;Notes:</b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;<input type="text" name="mnotes" size="30" value="<%= meetings.getNotes() %>" readonly><br/><br/>
		</div>
        </form>
    </body>
</html>
