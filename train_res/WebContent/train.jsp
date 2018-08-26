<%@ page import ="java.sql.*" %>
<body bgcolor="#E3E2DE">
<center>
  <table border="1" width="30%" height="30%">
  <tr><!-- <th><font color='#D18603'>Train Number</font></th>
  <th><font color='#D18603'>Train Name</font></th> -->
  <th><font color='#D18603'>Source</font></th>
  <!-- <th><font color='#D18603'>Departure</font></th> -->
  <th><font color='#D18603'>Destination</font></th>
   <th><font color='#D18603'>Class</font></th>
  <th><font color='#D18603'>Date Of Journey</font></th>
  <th><font color='#D18603'>Number of Seats Available</font></th>
  <th><font color='#D18603'>Number of Seats</font></th>
  <th><font color='#D18603'>Book Detail</font></th>
  </tr>
<%
    String s = request.getParameter("source");  
    String d = request.getParameter("destination");
    String date = request.getParameter("doj");
    String c = request.getParameter("class");
    String seat= request.getParameter("seat");
    String avail="50";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/train_reservation",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery(" select * from traininfo where source='" + s + "' and destination='" + d + "' and doj='" + date + "' and class='" + c + "'and seats='" + seat + "' ");
   while (rs.next()) {
        
	    String s1 = rs.getString("source");  
	    String d1 = rs.getString("destination");
	    String date1 = rs.getString("doj");
	    String c1 = rs.getString("class");
        String nosa = rs.getString("seats"); 
        
        session.setAttribute("s1", s1);
        session.setAttribute("d1", d1);
        session.setAttribute("date1", date1);
        session.setAttribute("c1", c1);
       
        session.setAttribute("nosa", nosa); 
 
%>
<tr>
<td><b><font color='#663300'><%=s1%></font></b></td>
<td><b><font color='#663300'><%=d1%></font></b></td>
<td><b><font color='#663300'><%=date1%></font></b></td>
<td><b><font color='#663300'><%=c1%></font></b></td>
<td><b><font color='#663300'><%=avail%></font></b></td>
<td><b><font color='#663300'><%=nosa%></font></b></td>
<%if(nosa.equals("0") || nosa.equals("")){  
%>
<td><b><font color='#663300'>N.A.</font></b></td>
<%
}
else
{
%>
<td><b><font color='#663300'><a href="book.jsp">Book Now</a></font></b></td>
<%
}
%>

</tr>
 </center>
<%
  }
 %>
 <center>
<a href='logout.jsp'>Logout</a>
  </center><br>
