<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<title>Login </title>
<style>
    body {
        background: linear-gradient(to bottom, rgba(0,0,0,0), black), url('/images/51001-movie-poster-wallpaper-top-free-movie-poster-background.jpg');
        color: #fff;
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .loginform{  
        padding: 80px;  
        
        border-radius: 20px;  
        background-color: rgba(0, 0, 0, 0.7);
    }  

    .formheading{   
        color: white;  
        padding: 8px;  
        text-align: center;  
    }  

    .sub{  
        background-color: transparent;  
        padding: 7px 40px;  
        color: white;  
        font-weight: bold;  
        margin-left: 70px;  
        border: 2px solid white;
        border-radius: 5px;  
    }

    .sub:hover {
        background-color: white;
        color: black;
    }

    .loginform input[type="email"],
    .loginform input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        background-color: #fff;
    }

    .loginform input[type="submit"] {
    background-color: transparent;  
    padding: 7px 40px;  
    color: white;  
    font-weight: bold;  
    border: 2px solid grey;
    border-radius: 5px;
    display: block; /* Ensures button is displayed as block element */
    margin: 0 auto; /* Centers the button horizontally */
    }

    .loginform p {
        text-align: center;
        margin-top: 20px;
    }

    .loginform a {
        color: #fff;
        text-decoration: underline;
        margin-left: 10px;
    }
      .top-left-button {
            position: fixed;
            top: 20px;
            left: 20px;
            width: 50px;
            height: 50px;
            padding-top: 0;
            background-color: #333;
            color: white;
            border: 2px solid white;
            border-radius: 50%;
            cursor: pointer;
            z-index: 1000;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: background-color 0.3s ease;
        }

        .top-left-button:hover {
            background-color: white;
            color: #333;
        }

        .top-left-button:hover::after {
            content: "Back";
            position: absolute;
            bottom: -20px;
            left: 50%;
            transform: translateX(-50%);
            color: white;
            font-size: 12px;
        }
</style>
</head>
<body>

<div class="loginform">  
    <h1 class="formheading"> LOGIN </h1>  

    <form action="admloginproc" method="POST">  
        <table>  
            <tr><td>Email:</td><td><input type="email" name="uemail"/></td></tr>  
            <tr><td>Password:</td><td><input type="password" name="upass"/></td></tr>  
            <tr><td colspan="2" style="text-align:center"><input class="sub" type="submit" value="login"/></td></tr>  
        </table> 
        <h3>${msg} </h3>
    </form>  
</div>  
<a href="index" class="top-left-button"><i class="fas fa-arrow-left"></i></a>
</body>
</html>