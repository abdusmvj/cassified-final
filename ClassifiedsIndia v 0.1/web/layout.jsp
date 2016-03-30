<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">



<body bgcolor="#f1f1f1">

    <center>
        <table bgcolor="#FFFFFF" width="943px" height="900px" cellspacing="0" cellpadding="0">
            <tr>
                <td colspan="3" width="943px">
                    <a href="homepage.do"><img src="<%=request.getContextPath()%>/images/animated templete image2.gif" alt="a image" width="943;" height="150px;"/></a>
                     <tiles:insert attribute="header" />
                </td>
            </tr>
             <tr>
                    <td width="190px" height="700px" valign="top">
                        <tiles:insert attribute="leftmenu" /><img src="<%=request.getContextPath()%>/images/ad.jpg" alt="a image" width="190px"/></td>
                        <td width="609px" valign="top" style="padding: 10px"><tiles:insert attribute="body" /></td>
                    <td width="157px" height="700" valign="top">
                        <img src="<%=request.getContextPath()%>/images/333.jpg" alt="a image" />
                        <tiles:insert attribute="rightmenu"/></td>
            </tr>
            <tr>
                    <td height="25" colspan="3"><tiles:insert attribute="footer" /></td>
            </tr>
        </table>
    </center>
     

    </body>
</html>
