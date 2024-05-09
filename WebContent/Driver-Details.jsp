<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver-details| Online Driver Hirring</title>
    <Link rel="stylesheet" href="index.css"></Link>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<%
     String name=request.getParameter("name");
     String ag=request.getParameter("age");
     int age=Integer.parseInt(ag);
     String exp=request.getParameter("exp");
     String city=request.getParameter("city");
     //int cont=Integer.parseInt(ct);
     String dimg=request.getParameter("dimg");
     String image="image/"+dimg;
%>
    
    <div class="container">
      <div class="navbar">
        <div class="logo">
            <img src="image/pngwing.com (2).png"width="125px" >
             </div>
         <nav>
            <ul id="MenuItems">
                <li><a href="index.html">Home</a> </li>
                 <li><a href="Driver.jsp">Driver</a> </li>
                <li><a href="">About</a> </li>
                <li><a href="">Contact</a> </li>
                <li><a href="">Account</a> </li>
            </ul>
         </nav>
         <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
       </div>  
   </div>
<!-- -------------------Driver details----------------- -->

<div class="small-container single-product">
    <div class="row">
        <div class="col-2">
            <img src="<%=image %>" width="100%" id="ProductImg">
             <div class="small-img-row">
                <!-- <div class="small-img-col">
                    <img src="images/oneplus nord2.jpg" width="100%" class="small-img" >
                </div> -->
                <div class="small-img-col">
                    <img src="image/personlogo.jpeg" width="100%" class="small-img"  >
                </div> <div class="small-img-col">
                    <img src="image/personlogo.jpeg" width="100%" class="small-img" >
                </div> <div class="small-img-col">
                    <img src="image/personlogo.jpeg" width="100%" class="small-img" >
                </div> <div class="small-img-col">
                    <img src="image/personlogo.jpeg" width="100%" class="small-img" >
                </div>
                  </div>

        </div>
        <div class="col-2">
            <p>Home / Driver Hiring</p>
            <h1><b><%=name %></b></h1>
            <a href="thanks.html" class="btn">Contact to Driver</a>

            <h3>Driver Details <i class="fa fa-ident"></i></h3>
            <br>
            <ul>
                <li><b>Age:<%=age %></b></li> 
                
                <li><b>Exprience:<%=exp %></b></li>
                <li><b>City:<%=city %></b></li>
                <li></li>
            </ul>
            
        </div>
    </div>
</div>
<!-- -----------------------Title---------------------- -->
<div class="small-container">
    <div class="row row-2">
        <h2> Driver near Available</h2>
        <p>View more</p>
    </div>
</div>


<!-- -------------------------------Drivers------------------------ -->

<div class="small-container">
   <div class="row">
        <div class="col-4">
            <img src="image/personlogo.jpeg" >
            <h4>Driver Name</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o" ></i> 
            </div>
            
        </div>
        <div class="col-4">
            <img src="image/personlogo.jpeg" >
            <h4>Driver Name</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o" ></i> 
            </div>
        </div>
        <div class="col-4">
            <img src="image/personlogo.jpeg" >
            <h4>Driver Name</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o" ></i> 
            </div>
        </div>
        <div class="col-4">
            <img src="image/personlogo.jpeg" >
            <h4>Driver Name</h4>
            <div class="rating">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o" ></i> 
            </div>
        </div>
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
                <img src="image/pngwing.com (2).png" >
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
<!-- ----------------------------js for Product-------------------- -->
<script>
    var ProductImg= document.getElementById("DriverImg");
    var SmallImg = document.getElementsByClassName("small-img");

    SmallImg[0].onclick=function(){
        DriverImg.src = SmallImg[0].src;
    }
    SmallImg[1].onclick=function(){
        DriverImg.src = SmallImg[2].src;
    }
     SmallImg[2].onclick=function(){
        DriverImg.src = SmallImg[2].src;
    }
    SmallImg[3].onclick=function(){
        DriverImg.src = SmallImg[3].src;
    }
    SmallImg[4].onclick=function(){
        DriverImg.src = SmallImg[4].src;
    }





</script>




</body>
</html>