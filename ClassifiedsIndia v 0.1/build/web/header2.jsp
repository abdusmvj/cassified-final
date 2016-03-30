<%-- 
    Document   : header2
    Created on : Dec 28, 2015, 7:01:26 PM
    Author     : Sneha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table style="background-color: #336699; width: 943px; height: 38px; border: 0px; cellspacing: 0px; cellpadding: 0px">
  <tr>
      <td><a href="myhome.do" style="text-decoration: none;"><font color="FFFFFF" ><b>Home</b></font></a></td>
      <td><a href="login.do" style="text-decoration: none;"><font color="FFFFFF" ><b>Sign up/Login</b></font></a></td>
      <td><a href="categoryypage.do" style="text-decoration: none"><font color="FFFFFF" ><b>Post Free Ads</b></a></td>
      <% String message1 = (String)session.getAttribute("message1"); %>
      <% if(message1!= null){ %>
      <td><b><font color="FFFFFF" >Welcome <%= message1 %></b></td>
      <% } %>
  </tr>
</table>
        
    </body>
</html>
