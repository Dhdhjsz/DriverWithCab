<%@page errorPage="error.jsp" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad720","root","root");
%>