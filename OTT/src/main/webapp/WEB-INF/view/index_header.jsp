<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
<html lang="en">  
<head>  
  
  <meta charset="utf-8">  
  <meta name="viewport" content="width=device-width, initial-scale=1">  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
  <!-- Add Font Awesome CDN -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <style>
    /* Custom CSS for navbar styling */
    .navbar {
      background-color: black; /* Dark background color */
      height: 50px; /* Adjust the height as needed */
      
    }
    .navbar-brand img {
      margin-right: 20px; /* Adjust as needed */
    }
    .navbar-nav .nav-item {
      border: 2px solid #6c757d; /* Gray border */
      border-radius: 5px;
      margin: 0 5px;
    }
    .navbar-nav .nav-link {
      padding: 5px 10px; /* Adjust padding */
      font-size: 14px; /* Adjust font size */
      color: #fff; /* White text color */
    }
    .navbar-nav .nav-item:hover .nav-link {
      background-color: black; /* Gray background color */
    }
    .navbar-nav .form-control {
      margin-right: 10px; /* Adjust as needed */
    }
    .navbar-nav .btn-outline-light {
      color: #fff; /* White text color */
    }
  </style>
</head>  
<body style="height:1500px">  
<nav class="navbar navbar-expand-sm navbar-dark fixed-top">  
  <a class="navbar-brand" href="#"><img src="https://media.istockphoto.com/id/1207316492/vector/print.jpg?s=612x612&w=0&k=20&c=m1Ezv7Fef-aq8CEp9UptA069TZNgGOJNb2VbQnsZpA0=" width="100" height="50"> </a>  
  <ul class="navbar-nav mr-auto">
    <li class="nav-item">  
      <a class="nav-link" href="index" style="font-family: Nunito;"><i class="fas fa-home"></i> HOME</a>  
    </li>  
    <li class="nav-item">  
      <a class="nav-link" href="about" style="font-family: Nunito;"><i class="fas fa-info-circle"></i> ABOUT</a>  
    </li> 
    <li class="nav-item">  
      <a class="nav-link" href="categories" style="font-family: Nunito;"><i class="fas fa-th"></i> CATEGORIES</a>
    </li> <%  
// Name of the cookie you want to retrieve
String cookieName = "MovIotUser";
    String cookieEmail = "MovIotEmail";
// Get the array of cookies from the request
Cookie[] cookies = request.getCookies();

// Debug: Print cookie count
//out.println("Number of cookies: " + (cookies != null ? cookies.length : 0));

// Check if cookies exist
if (cookies == null) {
    // Loop through each cookie
   out.println("<li class=\"nav-item\"> ");
    out.println("<a class=\"nav-link\" href=\"login\"><i class=\"fas fa-heart\"></i> Favourites </a></li>");
    out.println("</li>");
            
    } else if (cookies.length > 1) {
    // Loop through each cookie
    for (Cookie cookie : cookies) {
        // Debug: Print cookie name
        //out.println("Cookie name: " + cookie.getName());
        
        // Check if the cookie has the desired name
        if (cookie.getName().equals(cookieEmail)) {
            out.println("<li class=\"nav-item\">"); 
            out.println("<a class=\"nav-link\" href=\"favourites?id=" + cookie.getValue() + "\"><i class=\"fas fa-heart\"></i> Favourites </a></li>");
            out.println("</li>");
            break;
        }
    }
} else  {
    // Print HTML elements for sign up and login links 
    out.println("<li class=\"nav-item\"> ");
    out.println("<a class=\"nav-link\" href=\"login\"><i class=\"fas fa-heart\"></i> Favourites </a></li>");
    out.println("</li>");
}
%>

  </ul> 
  <ul class="navbar-nav ml-auto">
  <form class="form-inline my-2 my-lg-0" method="GET"  action="search"> <!-- Form element with Bootstrap class for inline form, margin, and GET method -->
  <input class="form-control mr-sm-2" type="search" name="q" placeholder="Search for services!" aria-label="Search"> <!-- Input field with Bootstrap classes for form control, margin, and name attribute -->
  <button class="btn btn-outline-light my-2 my-sm-0" type="submit" style="border: none;"> <!-- Button with Bootstrap classes for outline button, margin, and no border -->
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"> <!-- SVG icon for search -->
      <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
    </svg>
  </button>
</form>


<%  


// Debug: Print cookie count
//out.println("Number of cookies: " + (cookies != null ? cookies.length : 0));

// Check if cookies exist
if (cookies == null) {
    // Loop through each cookie
	out.println("<li class=\"nav-item\">"); 
    out.println("<a class=\"nav-link\" href=\"signup\" style=\"font-family: Nunito;\"><i class=\"fas fa-user-plus\"></i> Sign Up </a> "); 
    out.println("</li>");
    out.println("<li class=\"nav-item\"> ");
    out.println("<a class=\"nav-link\" href=\"login\"><i class=\"fas fa-user\"></i> Login </a></li>");
    out.println("</li>");
            
    } else if (cookies.length > 1) {
    // Loop through each cookie
    for (Cookie cookie : cookies) {
        // Debug: Print cookie name
        //out.println("Cookie name: " + cookie.getName());
        
        // Check if the cookie has the desired name
        if (cookie.getName().equals(cookieName)) {
            out.println("<li class=\"nav-item\">"); 
            out.println("<a class=\"nav-link\" style=\"font-family: Nunito;\"><i class=\"fas fa-user\"></i> " + cookie.getValue() + "</a> "); 
            out.println("</li>");
            out.println("<li class=\"nav-item\"> ");
            out.println("<a class=\"nav-link\" style=\"font-family: Nunito;\" href=\"logoutproc\"><i class=\"fas fa-sign-out-alt\"></i> Logout </a></li>");
            out.println("</li>");
            break;
        }
    }
} else  {
    // Print HTML elements for sign up and login links
    out.println("<li class=\"nav-item\">"); 
    out.println("<a class=\"nav-link\" href=\"signup\" style=\"font-family: Nunito;\"><i class=\"fas fa-user-plus\"></i> Sign Up </a> "); 
    out.println("</li>");
    out.println("<li class=\"nav-item\"> ");
    out.println("<a class=\"nav-link\" href=\"login\"><i class=\"fas fa-user\"></i> Login </a></li>");
    out.println("</li>");
}
%>


  </ul>
</nav>  
</body>  
</html>