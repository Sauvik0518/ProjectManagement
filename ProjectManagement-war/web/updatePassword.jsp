<%-- 
    Document   : updatePassword
    Created on : Dec 28, 2016, 10:37:51 PM
    Author     : ANIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function validate(){
            var x = document.forms["passwordForm"]["inputPassword"].value;
            if (x === "") {
                    alert("You must enter any password!");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp" />


        <jsp:include page="navigation.jsp" />


        <jsp:include page="menu.jsp" />
        
        <div class="container-fluid">
                <h3>Update Password</h3>
                    <form name="passwordForm" action="updatePassword2.jsp" method="post">
                            Enter new password:<input type="password" name="inputPassword" class="form-control" style="width:300px;"><br/><br/>
                            <button type="submit" class="btn btn-default" onclick="return validate();">Submit</button><br><br>
                    </form>
        </div>
        
        <jsp:include page="footer.jsp" />
    </body>
</html>
