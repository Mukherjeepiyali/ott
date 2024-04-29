<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.DriverManager"%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&family=Sen:wght@400;700;800&display=swap" rel="stylesheet">
    <!-- Your other CSS files -->
    <link rel="stylesheet" href="/css/indexstyle.css">
    <style>
        body {
            margin: 40px; /* Add margin to all sides of the body */
        }

        h1 {
            margin-bottom: 20px; /* Add space below the header */
        }

        .table-container {
            display: none; /* Hide the table by default */
            margin-top: 20px;
            overflow-x: auto;
            border: 2px solid #6c757d; /* Add outline border */
            border-radius: 8px; /* Add border radius */
        }

        table {
            width: 100%; /* Set table width to 100% */
            border-collapse: collapse;
            background-color: black; /* Set background color to grey */
        }

        th, td {
            padding: 10px; /* Add padding to the cells */
            text-align: center;
            border-bottom: 1px solid #ddd;
            color: white; /* Change text color to white */
            border-right: 1px solid #ddd; /* Add right border */
        }

        th {
            background-color: black; /* Dark grey background color for header */
            border-top: 1px solid #ddd; /* Add top border for header */
        }

        td {
            background-color: black; /* Light grey background color for cells */
            padding-left: 15px; /* Adjust cell padding */
            padding-right: 15px;
        }

        td:last-child, th:last-child {
            border-right: none; /* Remove right border for last column */
        }

        .btn-custom {
            padding: 10px 20px; /* Adjust padding to make the button bigger */
            font-size: 16px; /* Increase font size */
            color: #fff; /* White text color */
            background-color: transparent;
            border: 2px solid #6c757d; /* Gray border */
            border-radius: 8px; /* Increase border radius */
            margin: 0 10px; /* Adjust margin */
        }

        .btn-custom:hover {
            background-color: #6c757d; /* Gray background color on hover */
        }

    </style>
</head>
<body>
    <h1 style="color:white;">Welcome to Admin Dashboard</h1>

    <button class="btn-custom" onclick="toggleTable('tableContainer')">Toggle Table 1</button>
    <button class="btn-custom" onclick="toggleTable('tableContainer2')">Toggle Table 2</button>


    <div class="table-container" id="tableContainer" style="position: relative; padding-top: 20px;">
    <h3 style="color:white;margin-bottom: 20px; margin-left: 5px;">Login Database</h3>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Password</th> <!-- Changed to Password -->
                <th>Answer</th>
                <th>Favourites</th>
            </tr>

            <% 
            Connection conn = null;
            PreparedStatement pstm = null;
            ResultSet rs = null;

            try {
                String url = "jdbc:mysql://localhost:3306/ott";
                String uid = "root";
                String upass = "piyali";
                conn = DriverManager.getConnection(url, uid, upass);
                String query = "SELECT * FROM user";
                pstm = conn.prepareStatement(query);
                rs = pstm.executeQuery();

                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String email = rs.getString("email");
                    String phno = rs.getString("phno");
                    String password = rs.getString("password");
                    String answer = rs.getString("answer");
                    
            %>
            <tr>
                <td><%= id %></td>
                <td><%= name %></td>
                <td><%= email %></td>
                <td><%= phno %></td>
                <td><%= "*".repeat(password.length()) %></td> <!-- Replace password with asterisks -->
                <td><%= answer %></td>
                
            </tr>
            <% 
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) {
                    try {
                        rs.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (pstm != null) {
                    try {
                        pstm.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            %>
        </table>
    </div>
<div class="table-container" id="tableContainer2" style="position: relative; padding-top: 20px;">
    <button id="topRightButton" class="btn-custom" style="position: absolute; top: 10px; right: 0; margin-top: 10px; padding: 5px 10px; font-size: 14px;" onclick="showAddForm()">Add</button>
    <h3 style="color:white;margin-bottom: 20px; margin-left: 5px;">Movie Database</h3>
    <table>
        <tr>
            <th>Movie ID</th>
            <th>Movie Name</th>
            <th>Genre</th>
            <th>Movie Description</th>
            <th>Poster</th>
            <th>Link</th>
        </tr>
        <% 
        try {
            // Connect to the database
            String url = "jdbc:mysql://localhost:3306/ott";
            String uid = "root";
            String upass = "piyali";
            conn = DriverManager.getConnection(url, uid, upass);
            
            // Prepare and execute the SQL query
            String query = "SELECT * FROM movies";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            
            // Iterate through the result set and display data in the table
            while (rs.next()) {
                int movieId = rs.getInt("movie_id");
                String movieName = rs.getString("movie_name");
                String genre = rs.getString("genre");
                String movieDesc = rs.getString("movie_desc");
                String poster = rs.getString("poster");
                String link = rs.getString("link");
        %>
        <tr>
            <td><%= movieId %></td>
            <td><%= movieName %></td>
            <td><%= genre %></td>
            <td><%= movieDesc %></td>
            <td><%= poster %></td>
            <td><%= link %></td>
        </tr>
        <% 
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (pstm != null) {
                try {
                    pstm.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        %>
    </table>

    <!-- Add Form (Initially Hidden) -->
    <form id="addForm" style="display: none;">
        <input type="text" id="movieName" name="movieName" placeholder="Movie Name"><br>
        <input type="text" id="genre" name="genre" placeholder="Genre"><br>
        <input type="text" id="movieDesc" name="movieDesc" placeholder="Movie Description"><br>
        <input type="text" id="poster" name="poster" placeholder="Poster"><br>
        <input type="text" id="link" name="link" placeholder="Link"><br>
        <input type="button" value="Submit" onclick="addMovie()">
    </form>

    <script>
        function showAddForm() {
            document.getElementById("addForm").style.display = "block";
        }

        function addMovie() {
            var movieName = document.getElementById("movieName").value;
            var genre = document.getElementById("genre").value;
            var movieDesc = document.getElementById("movieDesc").value;
            var poster = document.getElementById("poster").value;
            var link = document.getElementById("link").value;

            var url = "jdbc:mysql://localhost:3306/ottplatform";
            var uid = "root";
            var upass = "ROOT1234";

            var conn = DriverManager.getConnection(url, uid, upass);
            var query = "INSERT INTO ott (movie_name, genre, movie_desc, poster, link) VALUES (?, ?, ?, ?, ?)";
            var pstmt = conn.prepareStatement(query);

            pstmt.setString(1, movieName);
            pstmt.setString(2, genre);
            pstmt.setString(3, movieDesc);
            pstmt.setString(4, poster);
            pstmt.setString(5, link);

            pstmt.executeUpdate();

            // Refresh the page to show the updated movie list
            window.location.reload();
        }
    </script>
</div>


    <script>
        function toggleTable(id) {
            var tableContainer = document.getElementById(id);
            if (tableContainer.style.display === "none") {
                tableContainer.style.display = "block"; // Show the table container
            } else {
                tableContainer.style.display = "none"; // Hide the table container
            }
        }
    </script>
</body>
