<center>
    <h2><b style="color: indigo; font-size: 20px; font-family: cursive">Select <span style="color: brown"><em>Sub-category</em></span> for the following <span style="color: brown"><em><%= (String) session.getAttribute("categoryname")%></em></span></b></h2>
</center>
    <%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    

    <logic:iterate id="subcategorylist" name="subcategoryActionForm" property="subcatlist"> 
    <table>
                <tr>
                    <td>
                        <a href="forward.do?subcatid=<bean:write name="subcategorylist" property="subcategoryId" />"><bean:write name="subcategorylist" property="subcategoryName" /></a><bean:write name="subcategorylist" property="subcategoryId" />
                    </td>
                    <tr>
                </table>
</logic:iterate>
</html>
