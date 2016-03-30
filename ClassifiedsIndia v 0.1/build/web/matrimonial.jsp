
<%@page import="java.util.List"%>
<%@page import="com.classifiedindia.vo.ClassifiedIndiaVO" %>



    <table cellpadding="5" border="2">
        <tr style="background-color: darkorange;">
        <td><b><% out.println("Classified_sub_category");%></b></td>
        <td><b><% out.println("Contact Name");%></b></td>
        <td><b><% out.println("Posting Date");%></b></td>
        <td><b><% out.println("Expire Date");%></b></td>

    </tr>
    <%
    List<ClassifiedIndiaVO> listofClassifiedIndiaAds =  (List<ClassifiedIndiaVO>) request.getAttribute("classifiedads3");
    for(ClassifiedIndiaVO classifiedIndiaVO: listofClassifiedIndiaAds){
        %>

        <tr>
            <td></td>
            <td><%=classifiedIndiaVO.getClassifiedContactPerson()%></td>
            <td><%=classifiedIndiaVO.getClassifiedPostingDate()%></td>
            <td><%=classifiedIndiaVO.getClassifiedExpireDate()%></td>
        </tr>
        <%}%>
</table>

