<%@page import="java.sql.*" %>
<%
try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/classifiedindia?user=root&password=root");

      if(null != conn)
          out.println("Connection Found");
      else
          out.println("Connection Not Found");
     /* Statement st = conn.createStatement();
      ResultSet rs = st.executeQuery("select * from country_name");
      while(rs.next()){

        out.println("<br> Country Name : " + rs.getString("COUNTRY_NAME"));
        
       }*/
      }
    catch(Exception e)
       {
        System.out.println("Exception occurs"+e.getMessage());
       }

%>