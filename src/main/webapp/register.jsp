<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style type="text/css">
/* General Reset */
body, h1, a, form, button, input {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif; /* Modern font */
}

/* Body Styling */
body {
    background: linear-gradient(135deg, #4a90e2, #50e3c2); /* Gradient background */
    height: 100vh; /* Full viewport height */
    display: flex; /* Use Flexbox to center content */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    color: #333; /* Dark text color */
}

/* Center Div Styling */
div {
    background: #ffffff; /* White background for the form */
    padding: 40px; /* Padding around the content */
    border-radius: 10px; /* Rounded corners */
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1); /* Soft shadow */
    width: 90%; /* Responsive width */
    max-width: 450px; /* Maximum width */
    text-align: center; /* Center text */
}

/* Heading Styling */
h1 {
    font-size: 2rem; /* Responsive font size */
    margin-bottom: 30px; /* Space below the heading */
    color: #333; /* Dark text color */
}

/* Form Styling */
form {
    margin-bottom: 20px; /* Space below the form */
}

label {
    display: block; /* Block-level element for labels */
    font-weight: bold; /* Bold text */
    margin-bottom: 5px; /* Space below the label */
    text-align: left; /* Left-align text */
    color: #555; /* Dark gray text color */
}

/* Input Styling */
input[type="text"], input[type="password"] {
    width: 100%; /* Full width */
    padding: 12px; /* Padding inside the input */
    margin-bottom: 20px; /* Space below the input */
    border: 1px solid #ccc; /* Light gray border */
    border-radius: 5px; /* Rounded corners */
    font-size: 16px; /* Font size */
    transition: border-color 0.3s ease; /* Transition for border color */
}

/* Focus State for Inputs */
input:focus {
    border-color: #4a90e2; /* Change border color on focus */
    outline: none; /* Remove outline */
    box-shadow: 0 0 5px rgba(74, 144, 226, 0.6); /* Add shadow effect */
}

/* Button Styling */
button {
    background-color: #4a90e2; /* Button background color */
    color: #ffffff; /* White text color */
    border: none; /* No border */
    padding: 12px 20px; /* Padding inside the button */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor */
    font-size: 16px; /* Font size */
    transition: background-color 0.3s ease; /* Transition for background color */
    width: 100%; /* Full width button */
}

/* Button Hover State */
button:hover {
    background-color: #50e3c2; /* Change background color on hover */
}

/* Link Button Styling */
a {
    text-decoration: none; /* Remove underline from links */
}

a button {
    background-color: #7ed321; /* Background color for link button */
    color: #fff; /* White text color */
    margin-top: 10px; /* Space above the button */
}

a button:hover {
    background-color: #8bdc4a; /* Change background color on hover */
}

/* Responsive Typography */
@media (max-width: 480px) {
    h1 {
        font-size: 1.5rem; /* Smaller font size for small screens */
    }
    
    button {
        font-size: 14px; /* Smaller button font */
    }

    input[type="text"], input[type="password"] {
        font-size: 14px; /* Smaller input font */
    }
}
</style>
</head>
<body>
<div align="center">
<h1>Register here</h1>
<form action="register" method="post" style="border:1px solid black;padding:5px">
<label for="name">Name</label>
<input type="text" id="name" name="name"> <br> <br>
<label for="un">UserName</label>
<input type="text" id="un" name="username"> <br> <br> 
<label for="pwd">Password</label>
<input type="password" id="pwd" name="password"> <br> <br>
<label for="pwd1">Confirm Password</label>
<input type="password" id="pwd1" name="cpassword"> <br> <br>
<button>Register</button>

</form>
<br>
<a href="login"><button>Login</button></a>

</div>
<script type="text/javascript"><%if(request.getAttribute("message")!=null) { %>
alert("${message}")
<%}%></script>

</body>
</html>