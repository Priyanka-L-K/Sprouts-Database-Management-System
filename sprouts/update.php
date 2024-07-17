<!DOCTYPE html>
<html>
<head>
  <title>Update Item Name</title>
</head>
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
    <h2>Update Item</h2>
    <form method="post" action="update.php">
      <label>Previous Item Name:</label>
      <input type="text" name="prev_iname">
      <br>
      <label>New Item Name:</label>
      <input type="text" name="new_iname">
      <br>
      <input type="submit" value="Update">
    </form>
    <?php
    //Check if both fields are filled in
    if(isset($_POST['prev_iname']) && isset($_POST['new_iname'])){
      $prev_iname = $_POST['prev_iname'];
      $new_iname = $_POST['new_iname'];

      if(empty($prev_iname) || empty($new_iname)) {
        echo '<script>alert("Please enter both the previous item name and the new item name.");</script>';
      } else {
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

        //Update the item name in the database
        $sql = "UPDATE item SET Iname='$new_iname' WHERE Iname='$prev_iname'";
        $result = mysqli_query($conn, $sql);

  //Check if the query was successful
  if($result === false) {
    echo "<script>alert('Error updating item name');</script>";
    echo "Error updating item name: " . mysqli_error($conn);
  } else if(mysqli_affected_rows($conn) == 0) {
    echo '<script>alert("No items found with the name \''.$prev_iname.'\'");</script>';
  } else {
    echo '<script>alert("Item name updated successfully.");</script>';
  }

        //Close the database connection
        mysqli_close($conn);
      }
    }
    ?>
  </main>
  <footer>
    <p>&copy; 2023 Arlington Sprouts. All rights reserved.</p>
  </footer>
</body>
</html>
