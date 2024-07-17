<!DOCTYPE html>
<html>
<head>
  <title>Display Item Details</title>
  <style type="text/css">
        body {
            font-family: 'Open Sans', sans-serif;
            background-color: #F0F8FF;
        }

        header {
            background-color: #00BFFF;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 2rem;
            color: white;
            margin: 0;
        }

        nav {
            display: flex;
        }

        nav ul {
            list-style: none;
            display: flex;
        }

        nav li {
            margin-right: 20px;
        }

        nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        main {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        form label {
            font-weight: bold;
        }

        form input[type="text"], form input[type="number"], form textarea {
            padding: 10px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            box-shadow: 0 0 5px #ddd;
            width: 100%;
        }

        form input[type="submit"] {
            background-color: #00BFFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        form input[type="submit"]:hover {
            background-color: #0080FF;
        }

        .button {
            background-color: #00BFFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #0080FF;
        }

        footer {
            background-color: #00BFFF;
      padding: 20px;
      color: white;
      text-align: center;
    }
  </style>
</head>
<body>
  <header>
    <h1 class="logo">Arlington Sprouts</h1>
    <nav>
      <ul>
        <li><a href="home.html">Home</a></li>
        <li><a href="index.php">Insert</a></li>
        <li><a href="update.php">Update</a></li>
        <li><a href="display.php">Display</a></li>
        <li><a href="delete.php">Delete</a></li>
      </ul>
    </nav>
  </header>
  <main>
    <h2>Display Item Details</h2>
    <form method="post" action="display.php">
      <label>Search by Item Name or ID:</label>
      <input type="text" name="search">
      <input type="submit" value="Search">
    </form>
    <?php
  //Connect to the database
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "sprouts";

  $conn = mysqli_connect($servername, $username, $password, $dbname);

  //Check connection
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  //Check if the form has been submitted
  if(isset($_POST['search'])) {
    //Get the search term
    $search = $_POST['search'];

    //Query to display item details based on item name or item ID
    $sql = "SELECT iId, Iname, Sprice FROM item WHERE Iname='$search' OR iId='$search'";

    //Execute the query and display results
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
  echo "<table style='border-collapse: collapse; width: 100%;'>";
  echo "<tr style='background-color: #ddd;'><th style='padding: 8px; border: 1px solid #ddd;'>Item ID</th><th style='padding: 8px; border: 1px solid #ddd;'>Item Name</th><th style='padding: 8px; border: 1px solid #ddd;'>Selling Price</th></tr>";
  while($row = mysqli_fetch_assoc($result)) {
    echo "<tr style='text-align: center;'><td style='padding: 8px; border: 1px solid #ddd;'>".$row["iId"]."</td><td style='padding: 8px; border: 1px solid #ddd;'>".$row["Iname"]."</td><td style='padding: 8px; border: 1px solid #ddd;'>".$row["Sprice"]."</td></tr>";
  }
  echo "</table>";
} 
else {
      echo "<script>alert('No results found.');</script>";
    }
  }

  mysqli_close($conn);
?>
  </main>
  <footer>
    <p>&copy; 2023 Arlington Sprouts. All rights reserved.</p>
  </footer>
</body>
</html>
