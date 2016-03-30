<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<h3 align="center" style="background-color: #8AD0FF">Admin Login Form</h3>
<html:form action="adminuserlogin">
    <table align="center">
            <tr>
                <td><b>User Login:</b></td>
                <td><html:text property="username" /></td>
            </tr>
            <tr>
                <td><b>User Password:</b></td>
                <td><html:text property="password" /></td>
            </tr>
            <tr>
                <td></td>
                <td><html:submit/></td>
            </tr>
        </table>
    </html:form>

