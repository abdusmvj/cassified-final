<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("#name").attr("placeholder", "your name");
    });
</script>
<script>
    $(document).ready(function () {
        $("#mail").attr("placeholder", "your mail id");
    });
</script>
<script>
    $(document).ready(function () {
        $("#mobileno").attr("placeholder", "your mobile no.");
    });
</script>
<script>
    $(document).ready(function () {
        $("#address").attr("placeholder", "your address");
    });
</script>
<script>
    $(document).ready(function () {
        $("#city").attr("placeholder", "your city");
    });
</script>
<script>
    $(document).ready(function () {
        $("#pin").attr("placeholder", "pincode");
    });
</script>
<script type="text/javascript">

    function GetXmlHttpObject() {
        var isIE7 = navigator.userAgent.toLowerCase().indexOf('msie 7') != -1;
        var isIE6 = navigator.userAgent.toLowerCase().indexOf('msie 6') != -1;
        var xmlHttp;
        if (isIE7) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else if (isIE6) {
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        else {
            xmlHttp = new XMLHttpRequest();
        }
        return xmlHttp;
    }

    function fetchDistrictList(state) {
        var st = state.value;
        //alert(st);
        var ajaxRequest = new GetXmlHttpObject();
        ajaxRequest.open('POST', 'AjaxServlet?service=RetreiveSubCategoryList', true);
        ajaxRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        ajaxRequest.onreadystatechange = function () {
            if (ajaxRequest.readyState == 4) {
                if (ajaxRequest.status == 200) {
                    var resultString = ajaxRequest.responseText;
                    if (resultString != '') {
                        var targetOptions = document.getElementsByName('districtid')[0].options;

                        if (targetOptions.length == 1 && targetOptions.value != "") {
                            targetOptions.length = 0;
                        }
                        document.getElementById('districtid').innerHTML = "";
                        var resultStringSplitArr = new Array();
                        resultStringSplitArr = resultString.split('#');
                        //alert(resultStringSplitArr);

                        for (var r = 0; r < resultStringSplitArr.length; r++) {
                            var resultStringArr = new Array();
                            resultStringArr = resultStringSplitArr[r].split('.');
                            //alert(resultStringArr);
                            for (var i = 0; i < resultStringArr.length - 1; i++) {

                                targetOptions[r + 1] = new Option(resultStringArr[i + 1], resultStringArr[i]);
                                //alert(resultStringArr[i]);
                                //alert(resultStringArr[i+1]);

                            }
                        }
                    }
                }
            }
        }
        ajaxRequest.send("Category=" + st);

    }
</script>
<style>
    .td1 {
        font-size: medium;
        width: 60%;
    }
    .td {
        padding-bottom: 15px;
        width: 40%;
        //spadding-left: 95px;
    }
</style>

<%--<jsp:useBean id="BuyerSellerInfoBean" class="com.classifiedindia.formbean.BuyerSellerInfoBean" scope="request"/>
<tr><td><font color="grey">___________________________<td>
</tr>--%>
<h2 style="padding: 10px 0px 0px 20px"><em><font color="midnightblue" size="4px">Buyer/Seller Information</font></em></h2>
        <html:form action="buyerselleraction">
    <table style="width: 100%; padding: 15px 60px 0px 60px">
        <tr>
            <td class="td1">You Are</td>
            <td class="td">
                <html:radio property="statustype" value="i" style="padding-right: 5px"/>Individual
                <html:radio property="statustype" value="d"/>Dealer</td>
        </tr>
        <tr>
            <td class="td1">Your Name</td>
            <td class="td"><html:text property="name" styleId="name"/></td>
        </tr>
        <tr>
            <td class="td1">Your Email</td>
            <td class="td"><html:text property="email" styleId="mail"/></td>
        </tr>
        <tr>
            <td class="td1">Your Mobile-no.</td>
            <td class="td"><html:text property="mobileno" style="width: 24px" value="+91" disabled="true"/>&nbsp;<html:text property="mobileno" styleId="mobileno"/></td>
        </tr>
        <tr>
            <td class="td1">Your Address</td>
            <td class="td"><html:textarea property="address" rows="1" cols="30" styleId="address"/></td>
        </tr>
        <tr>
            <td class="td1">Your City</td>
            <td class="td"><html:text property="city" styleId="city"/></td>
        </tr>
        <tr>
            <td class="td1"> State</td>
            <td class="td">
                <html:select property="stateid" styleId="statelist" onchange="fetchDistrictList(this)">
                    <html:option value="">select state</html:option>                        
                    <html:option value="1" >West Bengal</html:option>
                    <html:option value="2" >Assam</html:option>
                </html:select>
            </td>
        </tr>
        <tr>
            <td class="td1"> District</td>
            <td class="td"><html:select property="districtid" styleId="districtid">
                    <html:option value="">select district</html:option>
                </html:select>
            </td>
        </tr>
        <tr>
            <td class="td1">Pincode</td>
            <td class="td"><html:text property="pincode" styleId="pin"/></td>
        </tr>
        <tr>
            <td class="td1"></td>
            <td><input type="submit" value="submit"  style="color: white; background-color: darkslategray" /></td>
        </tr>
    </table>
</html:form>



