<%-- 
    Document   : createStatus
    Created on : Nov 28, 2016, 1:11:14 AM
    Author     : ANIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PMT</title>
    </head>
    <body>
        <div id="status_table">
        <form action="createStatus2.jsp" method="POST">
            Project Name:&emsp;&emsp;&emsp;<input type="text" name="pname">
            &emsp;&emsp;Project ID: <input type="text" name="pid"><br/>
            Project Manager:&emsp;&emsp;<input type="text" name="pmanager"><br/>
            Project Client:&emsp;&emsp;&emsp;<input type="text" name="pclient"><br/>
            Project Starting Date:<input type="text" name="pstartingdate">
            &emsp;&emsp;Project Deadline:<input type="text" name="pdeadline"><br/>
            <b>SRS</b><br/>
            SRS Members:&emsp;&nbsp;<input type="text" name="srs_members"><br/>
            SRS Starting Date:<input type="text" name="srs_startingdate">
            &emsp;&emsp;&emsp;SRS Deadline:<input type="text" name="srs_deadline"><br/>
            <b>Design</b><br/>
            Design Members:&emsp;&nbsp;<input type="text" name="design_members"><br/>
            Design Starting Date:<input type="text" name="design_startingdate">
            &emsp;&emsp;Design Deadline:<input type="text" name="design_deadline"><br/>
            <b>Development</b><br/>
            Development Members:&emsp;&nbsp;<input type="text" name="dev_members"><br/>
            Development Starting Date:<input type="text" name="dev_startingdate">
            Development Deadline:<input type="text" name="dev_deadline"><br/>
            <b>Testing</b><br/>
            Testing Members:&emsp;&nbsp;<input type="text" name="testing_members"><br/>
            Testing Starting Date:<input type="text" name="testing_startingdate">
            &emsp;&emsp;Testing Deadline:<input type="text" name="testing_deadline"><br/>
            <b>Documentation and Release</b><br/>
            Documentation Members:&emsp;&nbsp;<input type="text" name="doc_members"><br/>
            Documentation Starting Date:<input type="text" name="doc_startingdate">
            Documentation Deadline:<input type="text" name="doc_deadline"><br/>
            
            
        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="CREATE">
        </form>
        </div>
    </body>
</html>
