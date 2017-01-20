<%-- 
    Document   : editMeeting2
    Created on : Dec 22, 2016, 2:44:24 PM
    Author     : ANIK
--%>

<%@page import="javax.naming.InitialContext"%>
<%@page import="com.project.myproject.PMLocal"%>
<%@page import="com.project.entities.Meetings"%>
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
        <form action="editMeeting3.jsp" method="POST">
            <div id="first_one">
            <h1 align="center">Edit Meeting Information</h1>    
            <h3>Meeting Details</h3>
            <br/><b>&emsp;&emsp;&emsp;Meeting Topic:</b>&nbsp;&emsp;&emsp;&emsp;<input type='text' name='mtopic' size="30" value="<%= meetings.getTopic() %>" /><br/><br/> 
            <b>&emsp;&emsp;&emsp;Meeting Id:</b>&emsp;&emsp;&emsp;&emsp;&nbsp;<input type='text' name='mid' size="30" value="<%= meetings.getMeetingId() %>" />&emsp;&emsp;&emsp;<br/> 
            <b>&emsp;&emsp;&emsp;Meeting Attendees:</b>&emsp;&nbsp;<input type="text" name="mattendees" size="30" value="<%= meetings.getMeetingAttendees() %>" ><br/><br/>
            <b>&emsp;&emsp;&emsp;Meeting Date:</b>&emsp; &nbsp;&emsp;&emsp;&nbsp;<input type='text' name='mdate' size="30" value="<%= meetings.getMeetingDate() %>" />&emsp;&emsp;&emsp;&emsp;<br/>
            <b>&emsp;&emsp;&emsp;Meeting Time:</b>&emsp;&emsp;&emsp;&nbsp;&nbsp;<input type="text" name="mtime" size="30" value="<%= meetings.getMeetingTime() %>" ><br/><br/>	
			<b>&emsp;&emsp;&emsp;Meeting Place:</b>&emsp;&emsp;&emsp;&nbsp;<input type="text" name="mplace" size="30" value="<%= meetings.getMeetingPlace() %>" ><br/><br/>
			<b>&emsp;&emsp;&emsp;Meeting Type:</b>&emsp;&emsp;&emsp;&nbsp;<input type="text" name="mtype" size="30" value="<%= meetings.getMeetingType() %>" ><br/><br/>
                        <b>&emsp;&emsp;&emsp;Meeting Medium:</b>&emsp;&emsp;&nbsp;<input type="text" name="mmedium" size="30" value="<%= meetings.getMeetingMedium() %>" ><br/><br/>
                        <b>&emsp;&emsp;&emsp;Notes:</b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;<input type="text" name="mnotes" size="30" value="<%= meetings.getNotes() %>" ><br/><br/>
		</div>
                
             <input type="submit" value="Edit">
        </form>
    </body>
</html>
