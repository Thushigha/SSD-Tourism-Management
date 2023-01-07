<%@page import="java.sql.*" %> 



<% 
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/tourism_management","root","");
        pst = con.prepareStatement("delete from booking_tbl where id = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        
       <%
       		response.sendRedirect("booking.jsp");
       %>