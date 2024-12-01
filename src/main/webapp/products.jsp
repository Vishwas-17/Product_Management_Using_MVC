 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetch Products</title>
<style type="text/css">
/* General Reset */
body, h1, a, button, table, th, td {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif; /* Modern font */
}

/* Body Styling */
body {
    background: linear-gradient(135deg, #ffefba, #ffffff); /* Attractive gradient background */
    height: 100vh; /* Full viewport height */
    display: flex; /* Use Flexbox for layout */
    flex-direction: column; /* Column layout */
    justify-content: center; /* Center vertically */
    align-items: center; /* Center horizontally */
    color: #333; /* Dark text color */
}

/* Center Div Styling */
div {
    background: white; /* White background for the table */
    padding: 20px; /* Padding around the content */
    border-radius: 10px; /* Rounded corners */
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Soft shadow */
    width: 90%; /* Responsive width */
    max-width: 800px; /* Maximum width */
    text-align: center; /* Center text */
}

/* Heading Styling */
h1 {
    font-size: 2.5rem; /* Large font size for headings */
    margin-bottom: 20px; /* Space below the heading */
    color: #ffab40; /* Primary color for the heading */
}

/* Table Styling */
table {
    width: 100%; /* Full width */
    border-collapse: collapse; /* Remove border spacing */
    margin-bottom: 20px; /* Space below the table */
}

/* Table Header Styling */
th {
    background-color: #ffab40; /* Header background color */
    color: white; /* White text color */
    padding: 15px; /* Padding inside the header cells */
}

/* Table Data Styling */
td {
    padding: 10px; /* Padding inside data cells */
    border: 1px solid #ddd; /* Light gray border */
}

/* Image Styling */
img {
    border-radius: 5px; /* Rounded corners for images */
}

/* Button Styling */
button {
    background-color: #2193b0; /* Button background color */
    color: #ffffff; /* White text color */
    border: none; /* No border */
    padding: 8px 15px; /* Padding inside the button */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Pointer cursor */
    font-size: 14px; /* Font size */
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

/* Responsive Typography */
@media (max-width: 600px) {
    h1 {
        font-size: 2rem; /* Smaller font size for smaller screens */
    }

    button {
        font-size: 12px; /* Smaller button font */
        padding: 6px 10px; /* Adjust padding */
    }

    td {
        font-size: 14px; /* Smaller text in table cells */
    }
}
</style>
</head>
<body>
<div align="center">
<h1>products</h1>
<table border="1">
<tr>
<th>Name</th>
<th>Image</th>
<th>Description</th>
<th>Price</th>
<th>category</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<c:forEach var="p" items="${products}">
<tr>
<th>${p.name}</th>
<th><img height="150px" width="150px"alt="${p.name}" src="${p.imageLink}"></th>
<th>${p.description}</th>
<th>${p.price}</th>
<th>${p.category}</th>
<th><a href="edit?id=${p.id}"><button>Edit</button></a></th>
<th><a href="delete?id=${p.id}"><button>Delete</button></a></th>
</tr>
</c:forEach>

</table> <br> <br>
<a href="home"><button>back</button></a>
</div>
<c:if test="${message!=null}">
<script type="text/javascript">
alert("${message}")
</script>
</c:if>

</body>
</html>