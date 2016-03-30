<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<style>
    #table tr td ul li a:hover {
        font-size: 20px;
        text-decoration-color: red;
    }
</style>
<center>
    <h2><b style="color: indigo; font-size: 20px; font-family: cursive">Select Sub-category for <span style="color: brown"><em>Cars & Bikes</em></span></b></h2>
</center>
<table id="table">
    <tr>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Cars" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Cars</b></a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Bikes" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Bikes</b></a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Scooters %26 Scooties" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Scooters & Scooties</b></a></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Bicycles" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Bicycles</b></a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Spare Parts %26 Accessories" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Spare Parts & Accessories</b></a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Commercial Vehicles" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Commercial Vehicles</b></a></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Others Vehicles" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Others Vehicles</b></a></li>
            </ul>
        </td>
        
        
</table>

