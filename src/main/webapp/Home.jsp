 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style type="text/css">
/* General Reset */
body, h1, a, button {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif; /* Modern font */
}

/* Body Styling */
body {
    background: linear-gradient(135deg, #ff7e5f, #feb47b); /* Attractive gradient background */
    height: 100vh; /* Full viewport height */
    display: flex; /* Use Flexbox for layout */
    flex-direction: column; /* Column layout */
    justify-content: center; /* Center vertically */
    align-items: center; /* Center horizontally */
    color: #fff; /* White text color for contrast */
    text-align: center; /* Center text */
}

/* Heading Styling */
h1 {
    font-size: 3rem; /* Large font size for headings */
    margin-bottom: 20px; /* Space below the heading */
    animation: fadeIn 1s ease; /* Fade-in animation for the heading */
}

/* Button Styling */
button {
    background-color: #ffffff; /* Button background color */
    color: #ff7e5f; /* Text color matching the gradient */
    border: none; /* No border */
    padding: 15px 30px; /* Padding inside the button */
    border-radius: 25px; /* Rounded corners for a pill shape */
    cursor: pointer; /* Pointer cursor */
    font-size: 18px; /* Font size */
    margin: 10px; /* Space around buttons */
    transition: background-color 0.3s ease, transform 0.2s; /* Smooth transition */
}

/* Button Hover State */
button:hover {
    background-color: #ff7e5f; /* Change background color on hover */
    color: #ffffff; /* Change text color on hover */
    transform: scale(1.05); /* Slightly increase button size */
}

/* Link Styling */
a {
    text-decoration: none; /* Remove underline from links */
}

/* Responsive Typography */
@media (max-width: 600px) {
    h1 {
        font-size: 2rem; /* Smaller font size for smaller screens */
    }
    
    button {
        font-size: 16px; /* Smaller button font */
        padding: 10px 20px; /* Adjust padding */
    }
}

/* Fade-in Animation */
@keyframes fadeIn {
    from {
        opacity: 0; /* Start invisible */
    }
    to {
        opacity: 1; /* End visible */
    }
}
</style>
</head>
<body>
<h1>Welcome,<%=session.getAttribute("username") %></h1>
<h1>Home Page</h1>
<a href="add-product"><button>Add Product</button></a>
<a href="fetch-products"><button>Fetch Products</button></a>
<a href="logout"><button>Logout</button></a>
<script type="text/javascript">
<%if(request.getAttribute("message")!=null) { %>
  alert("${message}")
  <%}%>
  </script>
</body>
</html>