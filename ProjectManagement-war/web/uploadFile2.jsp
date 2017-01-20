<%-- 
    Document   : uploadFile2
    Created on : Dec 1, 2016, 7:20:52 PM
    Author     : ANIK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PMT</title>
        <script type='text/javascript'>
            function fileCheck(){
                if(document.getElementById("fileinput").value === "") {
                    alert("No file is selected!");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <div id="upload_file">
                <form name="uploadFile" action="uploadFile3.jsp" method="post" enctype="multipart/form-data">
                    <h1 Style="color: #000099;">Upload File</h1><br/>
                    <input type="file" name="file" id="fileinput" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel, .pdf, .txt"/>
                    <br/><br/><br/>
                    <div style="padding-left: 12%">
                        <input type="submit" name="upload" value="Upload" class="button" onclick="return fileCheck();"/>
                    </div>
                </form>
            </div>
    </body>
</html>
