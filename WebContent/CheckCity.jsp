<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drivers At Your location| Online Driver Hirring</title>
    <Link rel="stylesheet" href="index.css"></Link>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    
    <div class="container">
      <div class="navbar">
        <div class="logo">
            <img src="image/pngwing.com (2).png" width="125px">
             </div>
         <nav>
            <ul id="MenuItems">
                <li><a href="index.html">Home</a> </li>
                <li><a href="Driver.jsp">Driver</a> </li>
                <li><a href="">About</a> </li>
                <li><a href="">Contact</a> </li>
                <li><a href="Admin.html">Account</a> </li>
            </ul>
         </nav>
         
         <!-- <img src="images/cart.png" width="30px" height="30px"> -->
         <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
       </div>  
   </div>
<!------------------Feature Product-------------- -->
<div class="small-container">
    <div class="row row-2">
        <h2>All Drivers</h2>
        <select>
            <option>Default Shorting</option>
            <!-- <option>Short By Price</option> -->
            <option>Short By Popularity</option>
            <option>Short By Rating</option>
            <option>Short By near Your location</option>
        </select>
    </div>
    <div class="row">
   <%
   String city=request.getParameter("cit");
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ad720","root","root");
   String qr="select * from drivers where city=?";
   PreparedStatement ps=con.prepareStatement(qr);
   ps.setString(1,city);
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {
	   do
	   {
		   int id=rs.getInt("id");
		   String name=rs.getString("name");
		   String loc=rs.getString("city");
		   int age=rs.getInt("age");
		   String exp=rs.getString("exp");
		   //int cont=rs.getInt("cont");
		   String img=rs.getString("dimg");
		   String imgg="image/"+img;
   %>
        <div class="col-4">
            <a href="Driver-Details.jsp?id=<%=id %>&name=<%=name %>&dimg=<%=img %>&age=<%=age %>&exp=<%=exp %>&city=<%=city%>"><img src="<%=imgg %>"></a>
            <h3><b><%=name %></b></h3>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o" ></i> 
            </div>
            <!-- <p><i class="fa fa-inr" >60,499</i></p> -->
        </div>
      <%
		   
	   }
	   while(rs.next());
   }
   else
   {
	   out.println("<script>window.alert(' Drivers Not Available ....!!!')</script>");
   }
   con.close();
%>
</div>
    <div class="page-btn">
        <span>1</span>
        <span>2</span>
        <span>3</span>
        <span>4</span>
        <span>&#8594;</span>
    </div>
  
</div>


       
<!-- --------------------------------footer------------------------- -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col-1">
                <h3>Download Our App</h3>
                <p>Download App for Android and ios mobile phone.</p>
                <div class="app-logo">
                    <!-- <img src="images/play-store.png">
                    <img src="images/app-store.png"> -->
                </div>
            </div>
            <div class="footer-col-2">
                <img src="images/logo-white.png" >
             <p>Our Purpose is to Sustainably Make the Pleasure and Benifits of Sports Accessible to the many </p>
            </div>
            <div class="footer-col-3">
                <h3>Useful Link</h3>
                <ul>
                    <li>Coupons</li>
                    <li>Blog Post</li>
                    <li>Return Policy</li>
                    <li>Join Affilate</li>
                </ul>
            </div>
            <div class="footer-col-3">
                <h3>Follow us</h3>
                <ul>
                    <li>Facebook</li>
                    <li>Twitter</li>
                    <li>Instagram</li>
                    <li>Youtube</li>
                </ul>
            </div>
        </div>
        <hr>
        <p class="copyright">Copyright 2022- YRS WEB</p>
    </div>
</div>
<!-- ------------------------js for toogle menu---------------------- -->
<script>
    var MenuItems=document.getElementById("MenuItems");

    MenuItems.style.maxHeight="0px";
    function menutoggle(){
        if(MenuItems.style.maxHeight=="0px")
        {
            MenuItems.style.maxHeight=="200px";
        }
        else{
            MenuItems.style.maxHeight=="0px";
        }
    }
</script>
</body>
</html>
   		  
			