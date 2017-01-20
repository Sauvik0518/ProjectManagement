<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.project.entities.FilesInformation"%>
<%@page import="com.project.entities.Files"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.project.myproject.PMLocal"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%
    File file;
    int maxFileSize = 5000 * 1024;
    int maxMemSize = 5000 * 1024;
    //ServletContext context = pageContext.getServletContext();
   
    PMLocal pm = null;
    try {
        InitialContext context = new InitialContext();
        pm = (PMLocal) context.lookup("java:global/ProjectManagement/ProjectManagement-ejb/PM");
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    Date date = new Date();
    
    String uploadedTime = dateFormat.format(date);
    
    String name = request.getUserPrincipal().getName();
    //Files filePath = pm.getDirectoryPath("Path");
    
    Files filePath = pm.getDirectoryPath("Path");
    String path1 = filePath.getFilePath();
    
    Files tempPath = pm.getDirectoryPath("TempPath");
    String path2 = tempPath.getFilePath();
    
    String fullPath = null;
    
    FilesInformation fileinfo = new FilesInformation();
    //String filePath = "D:\\Repository\\";

    // Verify the content type
    String contentType = request.getContentType();
    if ((contentType.indexOf("multipart/form-data") >= 0)) {

        DiskFileItemFactory factory = new DiskFileItemFactory();
        // maximum size that will be stored in memory
        factory.setSizeThreshold(maxMemSize);
        // Location to save data that is larger than maxMemSize.
        factory.setRepository(new File(path2));

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
                        file = new File(path1
                                + fileName.substring(fileName.lastIndexOf("\\")));
                    } else {
                        file = new File(path1
                                + fileName.substring(fileName.lastIndexOf("\\") + 1));
                    }
                    fi.write(file);
                    out.println("Uploaded Filename: " + path1 + fileName);
                    
                    fullPath = path1 + fileName;
                    System.out.println("The uploaded file name is: "+fullPath);
                    fileinfo.setFileName(fileName);
                    fileinfo.setFilePath(fullPath);
                    fileinfo.setUserName(name);
                    fileinfo.setUploadedTime(uploadedTime);
                    
                    System.out.println("Uploaded by: "+name);
                    System.out.println("Uploaded time: "+uploadedTime);
                    
                    pm.addFilesInDb(fileinfo);
                    
                }
            }
        } catch (Exception ex) {
            out.println(ex);
        }
    } else {

        System.out.println("No file uploaded");

    }
%>