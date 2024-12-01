<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add-Product</title>
<style type="text/css">
/* General Reset */
body, h1, a, button, form, input {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif; /* Modern font */
}

/* Body Styling */
body {
    background: linear-gradient(135deg, #6dd5ed, #2193b0); /* Attractive gradient background */
    height: 100vh; /* Full viewport height */
    display: flex; /* Use Flexbox for layout */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    color: #333; /* Dark text color */
}

/* Center Div Styling */
div {
    background: white; /* White background for the form */
    padding: 40px; /* Padding around the content */
    border-radius: 10px; /* Rounded corners */
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Soft shadow */
    width: 90%; /* Responsive width */
    max-width: 500px; /* Maximum width */
    text-align: center; /* Center text */
}

/* Heading Styling */
h1 {
    font-size: 2.5rem; /* Large font size for headings */
    margin-bottom: 20px; /* Space below the heading */
    color: #2193b0; /* Primary color for the heading */
}

/* Form Styling */
form {
    display: flex; /* Use Flexbox for form layout */
    flex-direction: column; /* Column layout */
}

/* Input Styling */
input[type="text"] {
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
    border-color: #2193b0; /* Change border color on focus */
    outline: none; /* Remove outline */
    box-shadow: 0 0 5px rgba(33, 147, 176, 0.6); /* Add shadow effect */
}

/* Button Styling */
button {
    background-color: #2193b0; /* Button background color */
    color: #ffffff; /* White text color */
    border: none; /* No border */
    padding: 12px 20px; /* Padding inside the button */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor */
    font-size: 16px; /* Font size */
    margin-top: 10px; /* Space above the button */
    transition: background-color 0.3s ease, transform 0.2s; /* Smooth transition */
}

/* Button Hover State */
button:hover {
    background-color: #1a7da3; /* Darker shade on hover */
    transform: scale(1.05); /* Slightly enlarge button */
}

/* Link Styling */
a {
    text-decoration: none; /* Remove underline from links */
}

a button {
    background-color: #ff6b6b; /* Background color for back button */
}

a button:hover {
    background-color: #ff4d4d; /* Change background color on hover */
}

/* Responsive Typography */
@media (max-width: 600px) {
    h1 {
        font-size: 2rem; /* Smaller font size for smaller screens */
    }
    
    button {
        font-size: 14px; /* Smaller button font */
    }

    input[type="text"] {
        font-size: 14px; /* Smaller input font */
    }
}
</style>
</head>
<body>
<div align="center">
<h1>Add Product</h1>
<form action="add-product" method="post">
		Product Name: <input type="text" name="name"><br><br>
		Product Description: <input type="text" name="description"><br><br>
		Product Image Link: <input type="text" name="imageLink"><br><br>
		Product Price: <input type="text" name="price"><br><br>
		Product Category: <input type="text" name="category"><br><br>
		<button>Add</button>
	</form><br>
	
	<a href="home"><button>Back to Home</button>
</div>

</body>
</html>