<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<style>
    #table tr td ul li a:hover {
        font-size: 20px;
        text-decoration-color: red;
    }
</style>
<center>
    <h2><b style="color: indigo; font-size: 20px; font-family: cursive">Select Sub-category for <span style="color: brown"><em>Mobiles, Smartphones & Tablets</em></span></b></h2>
</center>
<table id="table">
    <tr>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Mobile Phones" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Mobile Phones</b></a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Accessories" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Accessories</b></a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Tablets" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Tablets</b></a></li>
            </ul>
        </td>
    </tr>
    
</table>

