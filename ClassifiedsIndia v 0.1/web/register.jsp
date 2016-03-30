<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("#username").attr("placeholder", "please sign in with your email id");
    });
</script>
<script>
    $(document).ready(function () {
        $("#password").attr("placeholder", "password");
    });
</script>
<html:form action="postregister">
    <p align="center" style="font-size: 25px; color: mediumblue">Sign up here!</p>
    <table align="center" >
        <tr>
            <td><html:text property="username" styleId="username" style="width: 200px"/></td>
        </tr>
        <tr></tr>
        <tr></tr>
        <tr>
            <td><html:password property="password" styleId="password" style="width: 200px"/></td>
        </tr>
    </table>
    <table align="center">
        <tr>
            <td><html:submit/></td>
        </tr>

    </table>


</html:form>

