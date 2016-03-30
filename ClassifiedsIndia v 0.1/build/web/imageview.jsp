<%@page import="com.classifiedindia.vo.ClassifiedImageVO"%>
<%@page import="java.util.List"%>
<%@ page import = "com.classifiedindia.model.ClassifiedModel" %>
<%@ page import="java.io.*" %>
<jsp:useBean id="photo" class="com.classifiedindia.model.ClassifiedModel" scope="session" />
<%
System.out.println(" I am here........." + request.getParameter("imgid"));
String imageid=request.getParameter("imgid").trim();
System.out.println(" Image id ::::::::::::::" + imageid);
 OutputStream o  = null;
  try
    {

       // get the image from the database
      ClassifiedImageVO classifiedImageVO = photo.populatePhoto(imageid);

       response.setContentType("image/gif");
       o = response.getOutputStream();           
       o.write(classifiedImageVO.getSmallImages());      
    }
    catch (Exception e)
    {
      e.printStackTrace();
      throw e;
    }
    finally
    {
       o.flush();
       o.close();
    }
%>