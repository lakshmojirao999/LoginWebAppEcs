<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("userName");   
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://logindemodb.c0fjlxlrwls9.us-east-1.rds.amazonaws.com:3306/LoginDemoDB","root", "root1234");
    Statement st = con.createStatement();
    ResultSet rs;
    String str="select * from USER where userName='" + userName + "' and password='" +password + "'";
    rs = st.executeQuery(str);
    if (rs.next()) {
        session.setAttribute("userid", userName);
        session.setAttribute("userName", userName);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
