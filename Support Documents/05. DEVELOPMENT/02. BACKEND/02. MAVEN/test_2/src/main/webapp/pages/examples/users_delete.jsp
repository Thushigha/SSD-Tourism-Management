<%@page import="java.sql.*" %> 



<% 
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/tourism_management","root","");
        pst = con.prepareStatement("delete from tourist_tbl where id = ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        
       <%
       		response.sendRedirect("users.jsp");
       %>