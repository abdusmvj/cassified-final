<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@include file="/category/mobiles/mobphon_ajax_code.jsp" %>

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
<html:form action="mobilepage">
    <h2><b style="color: #400; font-size: 20px; font-family: cursive; padding-left: 10px">Post your Ads</b></h2>
    <table style="width: 100%; padding: 0px 20px 0px 20px">
        <tr>
            <td class="td1"> Image </td>
            <td class="td"><img alt="myimage" src="myhome/<%= request.getAttribute("fileName")%>" style="height: 100px; width: 150px"></td>
        </tr>
        <tr>
            <td class="td1">Type of Ad</td>
            <td class="td">
                <html:radio property="typeofAd" value="s" style="padding-right: 5px"/>Sell
                <html:radio property="typeofAd" value="b"/>Buy</td>
        </tr>
        <tr>
            <td class="td1">Title for Ad</td>
            <td class="td"><html:text property="mobileadTitle" style="width: 300px" styleId="title"/></td>
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
            <td class="td">
                <html:select property="mobibrand" styleId="mobibrand" onfocus="fetchMobiBrand()" onchange="fetchMobiBrandList(this)">
                    <html:option value=""> choose brand name </html:option>                        
                    <%-- <html:option value="1" >Apple</html:option>
                    <html:option value="2" >Blackberry</html:option> --%>
                </html:select>
            </td>
        </tr>
        <tr>
            <td class="td1">Model</td>
            <td class="td"><html:select property="mobimodel" styleId="mobimodel">
                                        <html:option value=""> choose model </html:option>                        
                </html:select>
            </td>
        </tr>
        <tr>
            <td class="td1">Operating System</td>
            <td class="td">
                <html:select property="mobiOS" styleId="mobiOS" onfocus="fetchMobiOSList()">
                    <html:option value=""> select os </html:option>
                </html:select>
            </td>
        </tr>
        <tr>
            <td class="td1">No. of SIM cards</td>
            <td class="td">
                <html:select property="mobisimNo" styleId="mobisimNo" onfocus="fetchMobiSimNoList()">
                    <html:option value=""> choose no. of sim </html:option>
                </html:select>
            </td>
        </tr>
           <tr>
            <td class="td1">Includes</td>
            <td class="td">
                
                <html:checkbox property="includesid" value="1">m</html:checkbox>
                <html:checkbox property="includesid" value="2">f</html:checkbox>
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
<%--  <link rel="stylesheet" href="ui.datepicker.css"/>
<style>
.td {
    padding-bottom: 10px;
}
</style>

    <script type="text/javascript" src="jq.js"></script>
    <script type="text/javascript" src="jq.date.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

            $('#trip input#postingdate, #trip input#postingexpiredate, #trip input#postingwarningdate').datepicker({dateFormat: 'dd/mm/yy', showOn: 'button', buttonImage: 'calendar.gif', buttonImageOnly: true}); // format: Thurs, Jan 31, 2008, only show when the user clicks the calendar

        });

    </script>

    
<%--<% String cat = (String)session.getAttribute("category");
String replacecat = cat.replace("&", "%26");
%>
<div style="float: right; padding: 10px">
        <a style="color: blue; padding-right: 10px" href="categorypage.do">Change Category</a>
        <a style="color: blue" href="categoryaction.do?Category=<%= replacecat %>">Change Sub-category</a>
    </div> --%>
<%--  <h6 style="padding: 2px">
         <% String imgmessage =  (String)request.getAttribute("message"); %>
         <% if(imgmessage != null){ %>
         <% out.print(imgmessage); %>
         <% } %>
     </h6>
<html:form action="postclassifiedadvs" styleId="trip">
       
    <h2><b style="color: brown; font-size: 20px; font-family: cursive; padding: 20px">Post your Ads</b></h2>
    <jsp:useBean id="classifiedIndiaFormBean" class="com.classifiedindia.formbean.ClassifiedIndiaFormBean" scope="request"/> 
    <table style="width:500px;height:551px; padding: 5px" colspan="3">
        <tr>
         <td> Image: </td>
         <td class="td"><img alt="myimage" src="myhome/<%= request.getAttribute("fileName") %>" style="height: 100px; width: 150px"></td>
         </tr>
<%-- <tr>
    <td width="185"> Category:<font color='red'>* </font></td>

            <td class="td">
                <html:select property="classifiedCategory" styleId="classifiedCategory" onchange="fetchSubCategoryList(this)">
                    <html:option value=""> Select Option </html:option>                        
                    <html:option value="1" > Home & Lifestyle</html:option>
                    <html:option value="2" > Electronics Appliances</html:option>
                    <html:option value="3" > Mobiles & Tablets</html:option>
                    <html:option value="4" > Entertainment</html:option>
                    <html:option value="5" > Cars & Bikes</html:option>
                    <html:option value="6" > Real Estate</html:option>
                    <html:option value="7" > Jobs</html:option>
                    <html:option value="8" > Services</html:option>
                    <html:option value="9" > Education & Learning</html:option>
                    <html:option value="10" > Community & Events</html:option>
                    <html:option value="11" > Matrimonial</html:option>
                    <html:option value="12" > Pets & Pets care</html:option>

                </html:select>

            </td>
        </tr>
        <tr>
            <td width="185">Sub Category:<font color='red'>* </font></td>
            <td class="td"><html:select property="classifiedSubCategory" styleId="classifiedSubCategory"/>
            </td>
        </tr>
<tr>
    <td>Category:<font color='red'>* </font></td>
    <td class="td"><html:text property="classifiedCategoryName" value='<%=classifiedIndiaFormBean.getClassifiedCategoryName()%>' readonly="true" style="color: grey"/> </td>
</tr>
<tr>
    <td>Sub-category:<font color='red'>* </font></td>
    <td class="td"><html:text property="classifiedSubCategoryName" value='<%=classifiedIndiaFormBean.getClassifiedSubCategoryName()%>' readonly="true" style="color: grey"/> </td>
</tr> 
<tr>
    <td>Subject:<font color='red'>* </font></td>
    <td class="td"><html:textarea property="classifiedSubject" rows="10" /> </td>
</tr>
<tr>
    <td>Primary Contact :<font color='red'>* </font></td>
    <td class="td"><html:text property="classifiedPrimaryContact"/> </td>
</tr>

<tr>
    <td>Secondary Contact :<font color='red'>* </font></td>
    <td class="td"><html:text property="classifiedSecondaryContact"/> </td>
</tr>
<tr>
    <td>Contact Person:<font color='red'>* </font></td>
    <td class="td"><html:text property="classifiedContactPerson"/> </td>
</tr>
<tr>
    <td>Email Id:<font color='red'>* </font></td>
    <td class="td"><html:text property="classifiedEmailId" value='<%=classifiedIndiaFormBean.getClassifiedEmailId()%>' readonly="true" style="color: grey" /> </td>
</tr>
<tr>
    <td>Web Url:<font color='red'>* </font></td>
    <td class="td"><html:text property="classifiedWebUrl"/> </td>
</tr>
<tr>
    <td>Booking Duration:<font color='red'>* </font></td>
    <td class="td"><html:select property="classifiedBookingDuration">
            <html:option value="">-:Select Option:-</html:option>
            <html:option value="1">1</html:option>
            <html:option value="2">2</html:option>
            <html:option value="3">3</html:option>
            <html:option value="4">4</html:option>
            <html:option value="5">5</html:option>
            <html:option value="6">6</html:option>
            <html:option value="7">7</html:option>
            <html:option value="8">8</html:option>
            <html:option value="9">9</html:option>
            <html:option value="10">10</html:option>
            <html:option value="11">11</html:option>
        </html:select>
    </td>
</tr>
<tr>
    <td>Posting Expire Date:<font color='red'>* </font></td>
    <td class="td"><html:text property="classifiedExpireDate" styleId="postingexpiredate"/> </td>
</tr>
<tr>
    <td>Posting Warning  date:</td>
    <td class="td"><html:text property="classifiedExpireWarrningDate" styleId="postingwarningdate"/> </td>
</tr>
<tr>
    <td>Payment Category:<font color='red'>* </font></td>
    <td class="td"><html:select property="classifiedPaymentCategory">
            <html:option value="">-:Select Option:-</html:option>
            <html:option value="Free">Free</html:option>
            <html:option value="ByCash">By Cash</html:option>
            <html:option value="Online">Online</html:option>
            <html:option value="ByDraft">By Draft</html:option>
        </html:select>
    </td>
</tr>
<%@include file="/seller-buyer-info.jsp" %>
<tr>
    <td>submit:</td>
    <td class="td"><html:submit/></td>
</tr>
</table>

</html:form>
--%>