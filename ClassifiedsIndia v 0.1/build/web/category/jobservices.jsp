<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<style>
    #table tr td ul li a:hover {
        font-size: 20px;
        text-decoration-color: red;
    }
</style>
<center>
    <h2><b style="color: indigo; font-size: 20px; font-family: cursive">Select Sub-category for <span style="color: brown"><em>Jobs & Services</em></span></b></h2>
</center>
<table id="table">
    <tr>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Full Time Jobs" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Full Time Jobs</b></a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Part Time Jobs" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Part Time Jobs</b></a></li>
            </ul>
        </td>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Internship Jobs" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Internship Jobs</b></a></li>
            </ul>
        </td>
    </tr>
    <tr>
        <td>
            <ul>
                <li><a href="insertdata.do?param=Work From Home" style="text-decoration: underline; color: darkgreen; font-size: 14px"><b>Work From Home</b></a></li>
            </ul>
        </td>
    </tr>
    
</table>

