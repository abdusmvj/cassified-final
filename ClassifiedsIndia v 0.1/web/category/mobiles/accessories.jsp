<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@include file="/category/mobiles/accessory_ajax_code.jsp" %>

<style>
    .td1 {
        font-size: medium;
        width: 60%;
    }
    .td {
        padding-bottom: 20px;
        width: 40%;
        //spadding-left: 95px;
    }
    .td2{
        padding-left: 10px;
    }
</style>
<%--
<h6>Hello mobile!</h6>
<h6 style="padding: 2px">
    <% String imgmessage = (String) request.getAttribute("message"); %>
    <% if (imgmessage != null) { %>
    <% out.print(imgmessage); %>
    <% }%>
</h6>--%>
<html:form action="accessorypage">
    <h2><b style="color: #400; font-size: 20px; font-family: cursive; padding-left: 10px">Post your Ads</b></h2>
    <table style="width: 100%; padding: 0px 20px 0px 20px">
        <tr>
            <td class="td1"> Image </td>
            <td class="td"><img alt="myimage" src="myhome/<%= request.getAttribute("fileName")%>" style="height: 100px; width: 150px"></td>
        </tr>
        <tr>
            <td class="td1">I want to</td>
            <td class="td">
                <html:radio property="typeofAd" value="s" style="padding-right: 5px"/>Sell
                <html:radio property="typeofAd" value="b"/>Buy</td>
        </tr>
        <tr>
            <td class="td1">Title for Ad</td>
            <td class="td"><html:text property="mobileadTitle" style="width: 300px" styleId="title"/></td>
        </tr>
        <tr>
            <td class="td1">Type of Accessories</td>
            <td class="td"><html:select property="accessorytypeId" styleId="accessorytypeId" onfocus="fetchAccessoryTypeList()">
s                    <html:option value=""> choose accessory type </html:option>                        
                </html:select>
            </td>
        </tr>
        <tr>
            <td class="td1">Condition</td>
            <td class="td">
                <html:radio property="mobicondition" value="u" style="padding-right: 5px"/>Used
                <html:radio property="mobicondition" value="n"/>New</td>
        </tr>
        <tr>
            <td class="td1">Actual Price</td>
            <td class="td"><html:text property="mobiprice" style="width: 24px" value="INR" disabled="true"/>&nbsp;<html:text property="mobiprice" style="width: 100px" styleId="price"/></td>
        </tr>
        <tr>
            <td class="td1">Minimum Expected Price</td>
            <td class="td"><html:text property="xpectmobiprice" style="width: 24px" value="INR" disabled="true"/>&nbsp;<html:text property="xpectmobiprice" style="width: 100px" styleId="minexpr" /></td>
        </tr>
        <tr>
            <td class="td1">Brand Name</td>
            <td class="td"><html:select property="accessoribrandId" styleId="accessoribrandId" onfocus="fetchAccessoryBrandList()">
                    <html:option value=""> choose brand </html:option>                        
                </html:select>
            </td>
        </tr>

          
            <tr>
                <td class="td1">Description</td>
                <td class="td"><html:textarea property="mobidescription" rows="3" cols="40" styleId="descrip"/></td>
        </tr>
        <tr>
            <td class="td"></td>
            <td class="td2"><html:submit style="color: white; background-color: darkslategray; width: 130px; height:35px; font-size: 20px" value="Post Ad"/></td>
        </tr>
    </table>

</html:form>
