<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>

<html:form action="paymentcategory">
    <center>
    <table>
        <tr><td> <h3>Payment Category</h3></td></tr>
        <tr><td><html:radio property="status" value="free">Free Ads</html:radio>
            <html:radio property="status" value="paid">Paid Ads</html:radio></td></tr>
        <tr><td> <h3>Duration</h3></td></tr>                    
                        <tr><td><html:radio  property="radio" value="3">3 months</html:radio></td></tr>
                        <tr><td><html:radio  property="radio" value="6">6 months</html:radio></td></tr>
                        <tr><td><html:radio  property="radio" value="9">9 months</html:radio></td></tr>
                        <tr><td><html:radio  property="radio" value="12">12 months</html:radio></td></tr>
                    
                    
                        <tr><td> <h3>Please select any payment category:</h3></td></tr>

                        <tr><td><html:radio  property="payment" value="3">Credit Card</html:radio></td></tr>
                        <tr><td><html:radio  property="payment" value="6">Bank Pay</html:radio></td></tr>
                        <tr><td><html:radio  property="payment" value="9">Cash</html:radio></td></tr>
                        <tr><td><html:radio  property="payment" value="12">Cheque</html:radio></td></tr>                    
                        <td>&nbsp;</td>

                        <tr><td> <html:checkbox property="termandcondition" value="">I agree with the term and condition. </html:checkbox></td></tr>
                       <td>&nbsp;</td>
                        <tr><td>   <html:submit/></td></tr>
    </table>
    </center>
    </html:form>



