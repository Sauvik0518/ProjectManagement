<%-- 
    Document   : meetingRequest
    Created on : Dec 21, 2016, 12:11:35 PM
    Author     : ANIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="meetingRequest2.jsp" method="POST">
            <br/><br/>Topic:&emsp;&emsp;&emsp;&emsp;<input type="text" name="topic">
            Meeting ID: <input type="text" name="meeting_id"><br/><br/>
            Attendees:&emsp;&emsp;<input type="text" name="meeting_attendees"><br/><br/>
            Date:&emsp;&emsp;&emsp;&emsp;&nbsp;<input type="text" name="meeting_date">
            Time:<input type="text" name="meeting_time">
            Place:<input type="text" name="meeting_place"><br/><br/>
            Meeting Type:&emsp;<input type="text" name="meeting_type"><br/><br/>
            Meeting Medium:<input type="text" name="meeting_medium"><br/><br/>
            Notes:&emsp;&emsp;&emsp;&emsp;<input type="text" name="notes"><br/><br/>
            
            
            
        <input type="submit" value="Submit">
    </body>
</html>
