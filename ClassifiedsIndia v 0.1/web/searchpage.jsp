<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Idea View</title>

    </head>
    <body>
    <center>
        <h4 style="color: rosybrown">Search Result according to Keyword</h4>
    </center>

    <logic:iterate id="resultList" name="classifiedIndiaFormBean" property="searchList">
        <p style="float: right">Ad Posting Date:<bean:write name="resultList" property="classifiedPostingDate"></bean:write></p>

            <table>
                <tr>
                    <td>
                        Ads Id:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedId"></bean:write>
                    </td>
                <tr>
                    <td>
                        Category Name:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedCategoryName"></bean:write>
                    </td>
                </tr>
                <tr>
                    <td>
                        Sub-Category Name:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedSubCategoryName"></bean:write>
                    </td>
                </tr>
                <tr>
                    <td>
                        Subject:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedSubject"></bean:write>
                    </td>
                </tr>
                <tr>
                    <td>
                        Person to Contact:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedContactPerson"></bean:write>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact mail:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedEmailId"></bean:write>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact No.:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedPrimaryContact"></bean:write><br>
                    <bean:write name="resultList" property="classifiedSecondaryContact"></bean:write>
                    </td>
                </tr>
                <tr>
                    <td>
                        Company Website:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedWebUrl"></bean:write>
                    </td>
                </tr>
                <tr>
                    <td>
                        Ad Expire Date:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedExpireDate"></bean:write>
                    </td>
                </tr>
                <tr>
                    <td>
                        Ad Expire-warning Date:
                    </td>
                    <td>
                    <bean:write name="resultList" property="classifiedExpireWarrningDate"></bean:write>
                    </td>
                </tr>
            </table>
            <p>----------------------------------------------------------------------------------------------------</p>
    </logic:iterate>
</body>
</html>

