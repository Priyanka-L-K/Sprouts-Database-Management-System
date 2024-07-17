<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sprouts";

$conn = mysqli_connect($servername, $username, $password, $dbname);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Check if the form has been submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    // Get the input data from the form
    $item_name = $_POST['item_name'];
    $store_price = $_POST['store_price'];

    // Check if the item already exists in the database
    $sql_check = "SELECT * FROM item WHERE Iname = '$item_name'";
    $result = mysqli_query($conn, $sql_check);
    if (mysqli_num_rows($result) > 0) {
        echo "<script>alert('Item already exists in the database.');</script>";
    } else {
        // Insert the new item into the database
        $sql_insert = "INSERT INTO item (Iname, Sprice) VALUES ('$item_name', '$store_price')";
        if (mysqli_query($conn, $sql_insert)) {
            echo "<script>alert('New item inserted successfully.');</script>";
        } else {
            echo "Error: " . $sql_insert . "<br>" . mysqli_error($conn);
        }
    }
}

mysqli_close($conn);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Insert Item</title>
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
        <h2>Insert Item Record</h2>
<form action="index.php" method="post">
	<label for="item_name">Item Name:</label>
	<input type="text" id="item_name" name="item_name" required>
	<label for="store_price">Store Price:</label>
	<input type="number" id="store_price" name="store_price" step="0.01" min="0" required>

	<input type="submit" value="Insert Item">
</form>
	</main>
    <footer>
        <p>&copy; 2023 Arlington Sprouts. All rights reserved.</p>
    </footer>
</body>
</html>

