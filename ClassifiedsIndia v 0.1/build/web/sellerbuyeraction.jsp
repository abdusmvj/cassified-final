<% String subcategory = (String)session.getAttribute("subcategory"); %>
    <%--<% out.print(subcategory); %> --%>
    <% if(subcategory.equals("43")) { %>
    <%@include file="category/mobiles/mob_buyerseller.jsp" %>
    <% } else if(subcategory.equals("44")) { %>
    <%@include file="category/mobiles/accs_buyerseller.jsp" %>
    <% } else if(subcategory.equals("45")) { %>
    <%@include file="category/mobiles/tablet_buyerseller.jsp" %>
    <% }  %>