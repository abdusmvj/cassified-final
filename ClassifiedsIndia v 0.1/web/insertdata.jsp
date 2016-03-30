<%@taglib  uri="/WEB-INF/struts-html.tld" prefix="html" %>
<head>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>JQuery Datepicker</title>

    <link rel="stylesheet" href="ui.datepicker.css"/>
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

    
</head>
<%--<% String cat = (String)session.getAttribute("category");
String replacecat = cat.replace("&", "%26");
%>
<div style="float: right; padding: 10px">
        <a style="color: blue; padding-right: 10px" href="categorypage.do">Change Category</a>
        <a style="color: blue" href="categoryaction.do?Category=<%= replacecat %>">Change Sub-category</a>
    </div> --%>
     <h6 style="padding: 2px"><%= request.getAttribute("message")%></h6>
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
        </tr>--%>
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
        <%@include file="seller-buyer-info.jsp" %>
        <tr>
            <td>submit:</td>
            <td class="td"><html:submit/></td>
        </tr>
    </table>

</html:form>
