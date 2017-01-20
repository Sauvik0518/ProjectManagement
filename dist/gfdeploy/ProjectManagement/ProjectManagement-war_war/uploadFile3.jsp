<%-- 
    Document   : uploadFile3
    Created on : Dec 1, 2016, 7:23:54 PM
    Author     : ANIK
--%>


<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="com.project.entities.Properties"%>
<%@page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page import="com.project.entities.Files"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.project.myproject.PMLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PMT</title>
    </head>
    <body>
        <%
            String username = request.getUserPrincipal().getName();
            Calendar calendar = Calendar.getInstance();
            System.out.println(username + " " + calendar.getTime());
            PMLocal pm = null;
            try {
                InitialContext context = new InitialContext();
                pm = (PMLocal) context.lookup("java:global/ProjectManagement/ProjectManagement-ejb/PM");
            } catch (Exception e) {
                e.printStackTrace();
            }

            File file;
            int maxFileSize = 5000 * 1024;
            int maxMemSize = 5000 * 1024;
            //ServletContext context = pageContext.getServletContext();
            String filePath = "D:\\Repository\\";

            // Verify the content type
            String contentType = request.getContentType();
            if ((contentType.indexOf("multipart/form-data") >= 0)) {

                DiskFileItemFactory factory = new DiskFileItemFactory();
                // maximum size that will be stored in memory
                factory.setSizeThreshold(maxMemSize);
                // Location to save data that is larger than maxMemSize.
                factory.setRepository(new File("D:\\Repository\\temp"));

                // Create a new file upload handler
                ServletFileUpload upload = new ServletFileUpload(factory);
                // maximum file size to be uploaded.
                upload.setSizeMax(maxFileSize);
                try {
                    // Parse the request to get file items.
                    List fileItems = upload.parseRequest(request);

                    // Process the uploaded file items
                    Iterator i = fileItems.iterator();

                    while (i.hasNext()) {
                        FileItem fi = (FileItem) i.next();
                        if (!fi.isFormField()) {
                            // Get the uploaded file parameters
                            String fieldName = fi.getFieldName();
                            String fileName = fi.getName();
                            boolean isInMemory = fi.isInMemory();
                            long sizeInBytes = fi.getSize();
                            // Write the file
                            if (fileName.lastIndexOf("\\") >= 0) {
                                file = new File(filePath
                                        + fileName.substring(fileName.lastIndexOf("\\")));
                            } else {
                                file = new File(filePath
                                        + fileName.substring(fileName.lastIndexOf("\\") + 1));
                            }
                            fi.write(file);
                            out.println("Uploaded Filename: " + filePath
                                    + fileName);
                        }
                    }
                } catch (Exception ex) {
                    System.out.println(ex);
                }
            } else {

                out.println("No file uploaded");

            }
        %>
    </body>
</html>
