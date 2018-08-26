<%@ page import ="java.sql.*" %>
<%
String name = (String) session.getAttribute("name");
String c1 = (String) session.getAttribute("c1");
String tno = (String) session.getAttribute("tno");



   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/train_reservation",
            "root","");
    Statement st = con.createStatement();
    
  int i =  st.executeUpdate("delete from bookinfo where name = '"+name+"' and class = '"+c1+"'");
 
   if (i > 0) {
       
       response.sendRedirect("cancelled.jsp");
       
   } else { 
       response.sendRedirect("history.jsp");
   }
  
 
%>