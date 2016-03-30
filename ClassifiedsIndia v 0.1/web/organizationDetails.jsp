
<%@taglib  uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html>
<table width="943px" height="auto" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30px" width="180px"><b>Published on:</b><bean:write name="classifiedIndiaFormBean" property="classifiedPostingDate"/></td>
    <td height="30px" width="180px"></td>
    <td height="30px" width="180px"><b>Ad Id:</b></td>
    <td height="30px" width="180px"><bean:write name="classifiedIndiaFormBean" property="classifiedTitle"/></td>
  </tr>
  <tr>
    <td height="30px"><b>Locality:</b></td>
    <td>&nbsp;</td>
    <td><b>Ad Type:</b></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
      <td height="30px"><b>Posted By:</b></td>
    <td>&nbsp;</td>
    <td><b>Website:</b></td>
    <%--<td><%=request.getAttribute("website")%></td>   --%>
   <td><bean:write name="classifiedIndiaFormBean" property="classifiedWebUrl"/></td> 
  </tr>
  <tr>
      <td height="30px"><b>Contact No:</b></td>
      <td><bean:write name="classifiedIndiaFormBean" property="classifiedContactPerson"/></td>
    <td><b>Other Contact No:</b></td>
    <td><bean:write name="classifiedIndiaFormBean" property="classifiedPrimaryContact"/></td>
  </tr>
  <tr>
    <td height="30px"><b>Poster Address:</b></td>
    <td>&nbsp;</td>
    <td><b>Price:</b></td>
    <td>&nbsp;</td>
  </tr> 
  <tr>
      <td colspan="2">
           <img src="largephoto.jsp?imgid=<bean:write name="classifiedIndiaFormBean" property="classifiedPhotoId"/>" width="600px" height="300px" alt="image not found"/>
      </td>
      <td colspan="2" valign="top">
       <table border="0" bgcolor="#999" >
                <tr>
                 <logic:iterate id="photoIds" name="classifiedIndiaFormBean" property="classifiedsPhotoIds">
                 <td height="auto" width="20px" colspan="2"> 
                     <a href="organizationDetails.do?classifiedid=<bean:write name="classifiedIndiaFormBean" property="classifiedId"/>&photoId=<bean:write name="photoIds"/>"> <img src="imageview.jsp?imgid=<bean:write name="photoIds"/>" width="100px" height="100px" alt="image not found"/> </a>
                 </td>
                      </logic:iterate>
                </tr>           
      </table>
      </td>
  </tr> 
</table>
</html>