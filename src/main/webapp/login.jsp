<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
/* General Reset */
body, h1, a, form, button, input {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

/* Body Styling */
body {
    background: linear-gradient(135deg, #6a82fb, #fc5c7d); /* Gradient background */
    height: 100vh; /* Full viewport height */
    display: flex; /* Use Flexbox to center content */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    color: #fff; /* White text color */
}

/* Center Div Styling */
div {
    background: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
    padding: 30px; /* Padding around the content */
    border-radius: 15px; /* Rounded corners */
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Soft shadow */
    width: 90%; /* Responsive width */
    max-width: 400px; /* Maximum width */
    text-align: center; /* Center text */
}

/* Heading Styling */
h1 {
    font-size: 2rem; /* Responsive font size */
    margin-bottom: 20px; /* Space below the heading */
    color: #2d3436; /* Dark text color */
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
    color: #2d3436; /* Dark text color */
}

/* Input Styling */
input[type="text"], input[type="password"] {
    width: 100%; /* Full width */
    padding: 12px; /* Padding inside the input */
    margin-bottom: 15px; /* Space below the input */
    border: 1px solid #b2bec3; /* Light border */
    border-radius: 5px; /* Rounded corners */
    font-size: 16px; /* Font size */
    transition: border-color 0.3s ease; /* Transition for border color */
}

/* Focus State for Inputs */
input:focus {
    border-color: #6a82fb; /* Change border color on focus */
    outline: none; /* Remove outline */
    box-shadow: 0 0 5px rgba(106, 130, 251, 0.8); /* Add shadow effect */
}

/* Button Styling */
button {
    background-color: #6a82fb; /* Button background color */
    color: #fff; /* White text color */
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
    background-color: #fc5c7d; /* Change background color on hover */
}

/* Link Button Styling */
a {
    text-decoration: none; /* Remove underline from links */
}

a button {
    background-color: #55efc4; /* Background color for link button */
    color: #2d3436; /* Dark text color */
    margin-top: 10px; /* Space above the button */
}

a button:hover {
    background-color: #81ecec; /* Change background color on hover */
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
<div>
<h1>Login Here</h1>
<form action="login" method="post" style="border:1px solid black;padding:5px">
 <label for="un">UserName</label>
 <input type="text" id="un" name="username"> <br> <br>
 <label for="pwd">Password</label>
 <input type="password" id="pwd" name="password"> <br> <br>
<button>Login</button>
 
</form>
<br>
<br>
<a href="register"><button>new user?Register here</button></a>



</div>
<script type="text/javascript"><%if(request.getAttribute("message")!=null) { %>
alert("${message}")
<%}%></script>

</body>
</html>