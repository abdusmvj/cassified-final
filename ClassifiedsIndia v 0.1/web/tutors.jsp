 <%@page import="java.util.List"%>
<%@page import="com.classifiedindia.vo.ClassifiedIndiaVO"%>

    
            <h1>Classified Summary</h1>
            <TABLE cellpadding="5" border="2">
                <tr style="background-color: gold;">
                <td><b><%out.println("Category_id");%></b></td>
                <%--<td><b><%out.println("Sub Category");%></b></td>--%>
                <td><b><%out.println("Subject");%></b></td>
                <td><b><%out.println("EmailId");%></b></td>
                <td><b><%out.println("Contact Number");%></b></td>
                </tr>
              <%
   List<ClassifiedIndiaVO>  listOfClassifiedAdvs = (List<ClassifiedIndiaVO>) request.getAttribute("classifiedadv");

     for( ClassifiedIndiaVO classifiedIndiaVO :listOfClassifiedAdvs){
         %>
                <TR>
                    <TD><%=classifiedIndiaVO.getClassifiedCategory()%></TD>
                    <%-- <TD><%=classifiedIndiaVO.getClassifiedSubCategory()%></TD>--%>
                    <TD><%=classifiedIndiaVO.getClassifiedSubject()%></TD>
                    <TD><%=classifiedIndiaVO.getClassifiedEmailId()%></TD>
                    <TD><%=classifiedIndiaVO.getClassifiedPrimaryContact()%></TD>
                </TR>
          <%}%>
          </TABLE>
    



