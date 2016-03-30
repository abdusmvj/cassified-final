<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>



        <html:form action="postcategory">
            <table align="center">
                <tr>
                    <td>Category:<font color='red'>* </font></td>
                    <td><html:text property="category"/>
                        </td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><html:submit/></td>
                </tr>

            </table>

        </html:form>