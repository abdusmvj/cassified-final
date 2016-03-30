<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<script type="text/javascript">
            $(function ()
            {
                $("form").form();
            });
        </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("#username").attr("placeholder", "Email id");
    });
</script>
<script>
    $(document).ready(function () {
        $("#password").attr("placeholder", "Password");
    });
</script>
        <html:form action="userLogin">
            <h2 align="center">Login Here!</h2>
            <table align="center">
                
                
                <tr><td><font color='red'>* </font><html:text property="username" styleId="username"/></td></tr>
            <tr></tr>
            <tr></tr>
            <tr><td><font color='red'>* </font><html:password property="password" styleId="password"/></td></tr>
            </table>
            <table align="center">
                <tr>
                    <td><html:submit/></td>
                </tr>
            </table>
                <p align="center" style="color: blueviolet; font-size: 20px">Create new account <a href="register.do"><span style="color: red">here!</span></a></p>
                <script>

    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
    
</script>

        </html:form>
  
