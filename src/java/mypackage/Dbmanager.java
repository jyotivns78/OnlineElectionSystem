package mypackage;
import java.sql.*;
import java.util.Date;
import java.text.SimpleDateFormat;
/**
 *
 * @author Sachidanand Maurya
 */
public class Dbmanager 
{
 Connection con=null;
 PreparedStatement ps=null;
 ResultSet rs=null;
 //Constructor
 public Dbmanager()
 {
     try
     {
  Class.forName("com.mysql.jdbc.Driver");   
     }
     catch(ClassNotFoundException ex)
     {
       ex.printStackTrace();
     }
  }
 
 public Connection getCon()
 {
     try
 {
  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","");
 }
 catch(SQLException ex)
 {
     con=null;
 }
 return con;
}
 public boolean executeNonQuery(String query)
 {
     try
     {
     ps=getCon().prepareStatement(query);
     ps.executeUpdate();
     return true;
     }
     catch(SQLException ex)
     {
       return false;  
     }
 }
 public ResultSet selectQuery(String query)
 {
     try
     {
         ps=getCon().prepareStatement(query);
         rs=ps.executeQuery();
     }
     catch(SQLException es)
     {
      rs=null;   
     }
     return rs;
 }
 public String getDate()
 {
     Date d=new Date();
     SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
     String dt=df.format(d);
     return dt;
 }
 
 /* this method is used to get alert*/
     public String getAlert(String msg,String pagename)
     {
       String str="<script>alert('"+msg+"');window.location.href='"+pagename+"';</script>";
       {
         return str;
       }
     
     }
 
}
