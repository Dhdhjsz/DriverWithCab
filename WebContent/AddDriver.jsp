<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Driver | Online Driver Hirring</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <Link rel="stylesheet" href="admin.css"></Link>
    <Link rel="stylesheet" href="add Driver.css"></Link>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Baloo+Bhai+2&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
 <body>
<div class="admin-page">
<div class="container">
    <div class="row">
        <div class="col-2">
            <img src="image/pngwing.com.png" width="100%">
        </div>
        <div class="col-2">
                   <class="form-container-1"> 
                <div class="form-btn">
                    <span onclick="login()"><h2>Driver Detail</h2></span>
                    <hr id="Indicator">
                </div>
                
                <form id="LoginForm" action="DriverRegistration">
                    <input type="number" placeholder="DriverId" id="name" name="idd" required>
                    <input type="text" placeholder="Enter Name" name="nm" required>
                    <input type="text" placeholder="Enter Age" name="ag" required>
                    <input type="text" placeholder="Enter Exprience" name="exp" required>
                    <input type="text" placeholder="Enter City" name="city" required>
                    <input type="number" placeholder="Enter Contact" name="cont" required>
                  
                  <b>  <h3>You Have Your Own Vehicle</b> </h3> 
                  <div class = ".driver-with-own-vehicle"> 
                  <input type="radio" id="yes" name="You" onclick="text(0)"value="Yes" class="checkbox" checked/>
                    <label for="yes"><b>Yes </b></label><br>
                    <input type="radio" id="no" name="You" onclick="text(1)" value="no" class="checkbox" >
                    <label for="No"><b> No</b></label> 
                </div>
                <!-- -------------------input field------------------- -->
                <div class="col-2">
                    <div class="form-btn" id="mycode">
                        <label class= "lable"> </label>
                        <input class="input-style-4" type="text" name="fno" id="fno" placeholder="Vehicle Registration Number">
                         <b>Vehicle RC</b><input type="file" placeholder="Vehicle Registration Number" name="RegNum">
                        <!--<input class="input-style-4" type="text" name="fno" id="fno" placeholder="Contact">  -->
                        <!-- <span style= "color:red" id="Fno" ></span> -->
                    </div>
                </div>

                  <b>Driver  Image</b>  <input type="file" placeholder="Upload image" name="img"> 
                   <b>Driver Aadhar-card</b> <input type="file" placeholder="Aadhar Card" name="img1">
                   <b>Driving lisence</b> <input type="file" placeholder="Driving Lisence" name="img2">

                   <!-- //yha pr if else lga kr ek check box bnana hai jisse agr vehicle yes pr click karnega toh vehicle kr bare me bhi detail aa jaye -->

                    <button type="submit" class="btn-2" onclick="openPopup()">Detail submit</button>
                    <div class="popup" id="popup">
                        <img src="image/orange1.png.png" >
                        <h2>Thank You!</h2>
                        <p>Your details has been successsfully submitted. Thanks!</p>
                        <button type="button" onclick="closePopup()">OK</button>
                    </div>
                    <!-- <button type="submit" class="btn">Logout</button> -->
                  </form>
            </div>
        </div>
        </div>
</div>
</div>
<!-- ------------------------js for toogle menu---------------------- -->
<script>
let popup = document.getElementById("popup");

function openPopup(){
    popup.classList.add("open-popup");

}
function closePopup(){
    popup.classList.remove("open-popup");
    
}
 function text(x){
    if (x==0)document.getElementById("mycode").style.display="block";
    else document.getElementById("mycode").style.display="none";
    return;
}

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