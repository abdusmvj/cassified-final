<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>

<HTML>
<HEAD>
    <TITLE>Select element drop down box</TITLE>
</HEAD>

<BODY BGCOLOR=##f89ggh>

<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
            ("jdbc:mysql://localhost:3306/classifiedindia?user=root&password=root");

       Statement statement = connection.createStatement() ;

       resultset =statement.executeQuery("SELECT * FROM classifiedindia.classified_category") ;
%>

<center>
    <h1> Drop down box or select element</h1>
        <select>
        <%  while(resultset.next()){ %>
        <option><%= resultset.getString(2)%></option>
        
        <% } %>
        </select>
</center>

<%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</BODY>
</HTML>