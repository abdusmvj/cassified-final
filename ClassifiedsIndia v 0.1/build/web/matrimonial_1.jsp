This is matrimonial class........
 <%@page import="java.util.List"%>
<%@page import="com.classifiedindia.vo.ClassifiedIndiaVO"%>

<%
   List<ClassifiedIndiaVO>  listOfClassifiedAdvs = (List<ClassifiedIndiaVO>) request.getAttribute("classifiedadv");

     for( ClassifiedIndiaVO classifiedIndiaVO :listOfClassifiedAdvs){

         out.print("Category  : "+classifiedIndiaVO.getClassifiedCategory());
         out.print("<br>Sub Category  : "+ classifiedIndiaVO.getClassifiedSubCategory());
         out.print("<br>Subject  : "+ classifiedIndiaVO.getClassifiedSubject());
         out.print("<br>Emailid  : "+ classifiedIndiaVO.getClassifiedEmailId());
         out.print("<br>Weburl : "+ classifiedIndiaVO.getClassifiedWebUrl());
         out.print("<br>ContactPerson : "+ classifiedIndiaVO.getClassifiedContactPerson());
         out.print("<br>primary contact number : "+ classifiedIndiaVO.getClassifiedPrimaryContact());
         out.print("<br>secondary contact number : "+ classifiedIndiaVO.getClassifiedSecondaryContact());

        }


%>

