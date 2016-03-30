

package com.classifiedindia.model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ResourceBundle;


public class DbConnection {
   
   private  Connection conn =null;
  // private static final String propdest = "com.tutors.properties.professionaltutors";
   //private static ResourceBundle resource = ResourceBundle.getBundle(propdest);

   public  Connection dbConnect(){
   
      try{
        //Class.forName(resource.getString(ProfessionalTutorsConstant.DRIVER_NAME));      
        //conn = DriverManager.getConnection(resource.getString(ProfessionalTutorsConstant.DRIVER_URL));

       Class.forName("com.mysql.jdbc.Driver");
       conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/classifiedindia?user=root&password=root");

       if(null != conn)
          System.out.println("Connection Found");
      else
          System.out.println("Connection Not Found");
  
         
     
       }
    catch(Exception e)
       {
        System.out.println("Exception occurs"+e.getMessage());                 
       }
    
        return conn;
    
    }

   }
