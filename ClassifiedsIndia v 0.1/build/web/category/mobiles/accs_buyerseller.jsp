<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .td1 {
                font-size: smaller;
                width: 30%;
                color: #400;
            }
            .td {
                padding-bottom: 10px;
                width: 70%;
            }
            #tab {
                padding: 0px 6px 0px 6px;
            }
            .dv {
                padding: 0px 6px 0px 6px;
            }
        </style>
    </head>
    <body>
        <div style="width: 100%px; height: 100px; margin-bottom: 10px; border: 1px solid #fcc; background-color: #fcc">
            <center>
                <h3 style="color: chocolate">Welcome to <span style="color: darkgreen">ClickOn</span></h3>
            </center>
            <div>
                <div style="float: left">
                    <% HttpSession session1 = request.getSession(false);%>
                    <b style="color: #336699; font-size: 19px"><em>Your Ad Id:&nbsp;</em> <span style="font-size: 25px; color: #400"><%= (Integer) session1.getAttribute("unique")%></span></b>
                </div>
                <div style="float: right">
                    <b style="color: blue; font-size: 14px">posted on:&nbsp;<span style="font-size: 15px; color: #400"><%= (String) session1.getAttribute("postingdate")%></span> </b>
                </div>
            </div>
        </div>
        <div style="width: 100%; margin-bottom: 10px; border: 1px solid #f6f6a5; background-color: #f6f6a5">
            <div style="height: 20px; padding: 9px 5px 18px 5px">
                <b style="font-size: 18px; color: darkslategray"><%= (String) session1.getAttribute("mobileadTitle")%></b>
            </div>
            <div>
            <table id="tab" width="100%">
                <tr>
                    <td class="td1"><b>Accessory Type</b></td>
                    <td class="td"><b><%= (String) session1.getAttribute("accessorytypeName")%></b></td>
                </tr>
                <tr>
                    <td class="td1"><b>Brand</b></td>
                    <td class="td"><b><%= (String) session1.getAttribute("accessoribrandName")%></b></td>
                </tr>
                <tr>
                    <td class="td1"><b>Price</b></td>
                    <td class="td"><b>Rs. <%= (String) session1.getAttribute("mobiprice")%></b></td>
                </tr>
                <tr>
                    <td class="td1"><b>Address</b></td>
                    <td class="td"><pre><b>
<bean:write name="BuyerSellerInfoBean" property="address" />, <bean:write name="BuyerSellerInfoBean" property="city" />
<bean:write name="BuyerSellerInfoBean" property="district" />, <bean:write name="BuyerSellerInfoBean" property="state" />
PIN - <bean:write name="BuyerSellerInfoBean" property="pincode" />
                        </b></pre></td>
                </tr>
            </table>
            </div>

        </div>
                        <div class="dv" style="height: 25px; color: #400; font-size: 15px; border: 1px solid #fcc; background-color: #fcc"><b>Description</b></div>
                        <div class="dv" style="height: 50px; border: 1px solid #f6f6a5; background-color: #f6f6a5"><b><%= session1.getAttribute("mobidescription")%></b></div>
    </body>
</html>
