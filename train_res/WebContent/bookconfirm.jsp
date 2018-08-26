<%@ page import ="java.sql.*" %>
<%
 //String tno1 = (String) session.getAttribute("tno");
//String tname1 = (String) session.getAttribute("tname");
String source1 = (String) session.getAttribute("s1");
String destination1 = (String) session.getAttribute("d1");
String date1 = (String) session.getAttribute("date1");
String class1 = (String) session.getAttribute("c1");
//String nosa1 = (String) session.getAttribute("nosa"); 


int nosa2 = 50;

//System.out.println(source1+" "+destination1+" "+date1+" "+class1);
int j;   
for(j = 1; j <= 6; j++)
   {
    String n=request.getParameter("name"+j);
	String a=request.getParameter("age"+j);
	String g=request.getParameter("gender"+j);
	String b=request.getParameter("berth"+j);
	String s=request.getParameter("senior"+j);
	String ad=request.getParameter("aadhaar"+j);
	System.out.println(n+" "+a+" "+g+" "+b+" "+s+" "+ad);
	
    if(n != "" && nosa2 > 0 )
    {
   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/train_reservation",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    st.executeUpdate("insert into bookinfo(source,destination,date,class,name, age, gender, berth, senior, aadhaar) values ('"+ source1 + "','"+ destination1 + "','"+ date1 + "','"+ class1 + "','"+ n + "','" + a + "','" + g + "','" + b + "','" + s + "','" + ad + "')");
   
   // st.executeUpdate("update traininfo set no_of_seat_available = no_of_seat_available - 1 where train_no = '" + tno1 + "' and class = '" +  class1 + "'"); 
    nosa2 = nosa2-1;
    }
    
  
   
   }

   if (j == 7) {
      
       response.sendRedirect("booked.jsp");
      
   } else { 
       response.sendRedirect("book.jsp");
   }
  
 
%>