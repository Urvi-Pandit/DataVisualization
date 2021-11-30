<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Let's Visualize</title>
    <link rel="icon" href="images1/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="Start.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Arvo:ital,wght@0,400;0,700;1,400;1,700&family=Bree+Serif&family=Merriweather:ital,wght@0,300;0,400;0,700;0,900;1,300;1,400;1,700;1,900&family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- login page -->
<style>
body {
	
font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.remem{
  color: #000;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 25%;
  border-radius: 50%;
}

.container1 {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position:absolute; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow:auto; /* Enable scroll if needed */
  
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 30%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>

<!-- Signup page -->
<style>
  body {font-family: Arial, Helvetica, sans-serif;}
  * {box-sizing: border-box;}

  .sign{
    color: #000;
  }
  
  /* Full-width input fields */
  input[type=text], input[type=password] {
    width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  }
  
  /* Add a background color when the inputs get focus */
  input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
  }
  
  /* Set a style for all buttons */
  button {
    background-color: #04AA6D;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
  }
  
  button:hover {
    opacity:1;
  }
  
  /* Extra styles for the cancel button */
  .cancelbtn1 {
    padding: 14px 20px;
    background-color: #f44336;
  }
  
  /* Float cancel and signup buttons and add an equal width */
  .cancelbtn1, .signupbtn1 {
    float: left;
    width: 50%;
  }
  
  /* Add padding to container elements */
  .container11 {
    padding: 16px;
  }
  
  /* The Modal (background) */
  .modal1 {
    display: none; /* Hidden by default */
  position:absolute; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow:auto; /* Enable scroll if needed */
  
  padding-top: 60px;
  }
  
  /* Modal Content/Box */
  .modal-content1 {
    background-color: #fefefe;
  margin: auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 30%; /* Could be more or less, depending on screen size */
  }
  
  /* Style the horizontal ruler */
  hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
  }
   
  /* The Close Button (x) */
  .close1 {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
  }
  
  .close1:hover,
  .close1:focus {
    color: #f44336;
    cursor: pointer;
  }
  
  /* Clear floats */
  .clearfix1::after {
    content: "";
    clear: both;
    display: table;
  }
  
  /* Change styles for cancel button and signup button on extra small screens */
  @media screen and (max-width: 300px) {
    .cancelbtn1, .signupbtn1 {
       width: 100%;
    }
  }
  </style>


</head>
<body>
   <section id="title">
    <div class="container-fluid">

    <!-- Nav Bar -->
    <nav class="navbar  navbar-expand-lg navbar-dark">
      <a class="navbar-brand" href="">Let's Visualize</a>
      <div class="left-side">
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
   </div>
  </div>
  </nav>




    <!-- Title -->
    <div class="row">

    <div class="front col-lg-6">
      <h1>Visualize Data like never before!</h1>
      <button type="button" class="btn btn-dark btn-lg download-btn" onclick= "document.getElementById('id01').style.display='inline-block'"><i class="fas fa-sign-in-alt"></i>  Log in</button>
      <div id="id01" class="modal">
  
        <form class="modal-content animate" action="Login" method="post">
          <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
            <img src="img-01.png" alt="Avatar" class="avatar">
          </div>
      
          <div class="container1">
            <label for="uname"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="uname" id="uname" required>
      
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
              
            <label>
              <input type="checkbox" checked="checked" name="remember"><span class="remem">Remember me</span>
            </label>
            <button id="submit" type="submit" value="Login" >Submit</button>
          </div>
      
          <div class="container1" style="background-color:#f1f1f1">
            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
            <span class="psw"> <a href="#">Forgot password?</a></span>
          </div>
        </form>
      </div>
      
      <script>
      // Get the modal
      var modal = document.getElementById('id01');
      
      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
          if (event.target == modal) {
              modal.style.display = "none";
          }
      }
      </script>
      
      <button type="button" class="btn btn-outline-light btn-lg download-btn" onclick="document.getElementById('id011').style.display='inline-block'"><i class="fas fa-sign-in-alt"></i>  Sign up</button>
      <div id="id011" class="modal1">
        <span onclick="document.getElementById('id011').style.display='none'" class="close1" title="Close Modal">&times;</span>
        <form class="modal-content1" action="Register" method="post">
          <div class="container11">
            <h1 class="sign">Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>
            <label for="email"><b>Username</b></label>
            <input type="text" placeholder="Create Username" name="uname" required>
      
            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" required>
      
            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
            
            <label for="psw"><b>Name</b></label>
            <input type="text" placeholder="Enter Name" name="name" required>
            
            <label for="psw"><b>Contact number</b></label>
            <input type="number" placeholder="Enter Contact number" name="contact" required>
            
            <label>
              <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"><span class="remem">Remember me</span> 
            </label>
      
            <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
      
            <div class="clearfix1">
              <button type="button" onclick="document.getElementById('id011').style.display='none'" class="cancelbtn1">Cancel</button>
              <button type="submit" class="signupbtn1">Sign Up</button>
            </div>
          </div>
        </form>
      </div>
      
      <script>
      // Get the modal
      var modal = document.getElementById('id011');
      
      // When the user clicks anywhere outside of the modal, close it
      window.onclick = function(event) {
        if (event.target == modal) {
          modal.style.display = "none";
        }
      }
      </script>
      
    </div>
    <div class="front col-lg-6">
      <img class=" laptop-img" src="laptop1.jpeg" alt="laptop-with-graphs">
    </div>
  </div>
</div>

  </section>
</body>
</html>