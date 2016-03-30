<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<center><b style="color: lightseagreen">Your Advertisement Details</b></center>

<table>
    <tr>
        <td>
            Ads Id:
        </td>
        <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedId"></bean:write>
            </td>
    <tr>
        <td>
            Category Name:
        </td>
        <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedCategoryName"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Sub-Category Name:
            </td>
            <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedSubCategoryName"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Subject:
            </td>
            <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedSubject"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Person to Contact:
            </td>
            <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedContactPerson"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Contact mail:
            </td>
            <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedEmailId"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Contact No.:
            </td>
            <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedPrimaryContact"></bean:write><br>
            <bean:write name="classifiedIndiaFormBean" property="classifiedSecondaryContact"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Company Website:
            </td>
            <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedWebUrl"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Ad Posting Date:
            </td>
            <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedPostingDate"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Ad Expire Date:
            </td>
            <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedExpireDate"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Ad Expire-warning Date:
            </td>
            <td>
            <bean:write name="classifiedIndiaFormBean" property="classifiedExpireWarrningDate"></bean:write>
            </td>
        </tr>
        <tr>
            <td>
                Image:
            </td>
            <td>
            <img src="myhome/<bean:write name="classifiedIndiaFormBean" property="classifiedImageId"/>.jpg" style="width: 200px; height: 150px">
            </td>
        </tr>
    </table>
    <TABLE>
        <TR>
            <TD>
                <a href="edit.do?adsid=<bean:write name="classifiedIndiaFormBean" property="classifiedId"></bean:write>" style="text-decoration: none;"><b>Edit</b></a>

            </TD>
        </TR>
    </TABLE><%--<%@page import="java.util.List"%>
    <%@page import="com.classifiedindia.vo.ClassifiedIndiaVO"%>


<TABLE cellpadding="5" border="2">
    <tr style="background-color: gold;">
        <td><b><%out.println("Category_id");%></b></td>
        <td><b><%out.println("Subject");%></b></td>
        <td><b><%out.println("EmailId");%></b></td>
        <td><b><%out.println("Contact Number");%></b></td>
    </tr>
    <%
        List<ClassifiedIndiaVO> listOfClassifiedAdvs = (List<ClassifiedIndiaVO>) request.getAttribute("classifiedadv");

        for (ClassifiedIndiaVO classifiedIndiaVO : listOfClassifiedAdvs) {
    %>
    <TR>
        <TD><%=classifiedIndiaVO.getClassifiedCategory()%></TD>
        <TD><%=classifiedIndiaVO.getClassifiedSubject()%></TD>
        <TD><%=classifiedIndiaVO.getClassifiedEmailId()%></TD>
        <TD><%=classifiedIndiaVO.getClassifiedPrimaryContact()%></TD>
    </TR>
    <%}%>
</TABLE>
--%>




