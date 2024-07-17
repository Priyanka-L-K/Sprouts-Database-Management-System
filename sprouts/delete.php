<?php
// connect to the database
$host = "localhost";
$user = "root";
$pass = "";
$db = "sprouts";
$conn = mysqli_connect($host, $user, $pass, $db);

// check if the form has been submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // retrieve the item name from the form
    $item_name = $_POST["item_name"];

    // check if the item exists in the database
    $query = "SELECT * FROM item WHERE Iname = '$item_name'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        // delete the item record from the database
        $query = "DELETE FROM item WHERE Iname = '$item_name'";
        $result = mysqli_query($conn, $query);

        // check if the deletion was successful
        if ($result) {
            echo "<script>alert('Item record deleted successfully.');</script>";
        } else {
            echo "Error deleting item record: " . mysqli_error($conn);
        }
    } else {
        echo "<script>alert('Item does not exist in the database.');</script>";
        }
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Delete Item Record</title>
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
        <h2>Delete Item Record</h2>
        <form method="post" action="" class="form">
            <label for="item_name">Item Name:</label>
            <input type="text" name="item_name" required>
            <br><br>
            <input type="submit" value="Delete" class="button">
        </form>
    </main>
    <footer>
        <p>&copy; 2023 Arlington Sprouts. All rights reserved.</p>
    </footer>
</body>
</html> 
