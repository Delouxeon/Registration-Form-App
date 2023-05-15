<?php
// Assuming you have a MySQL connection established
$serverName = "localhost";
$username = "root";
$password = "";
$dbname = "formdatabase";

// Create a connection
$conn = new mysqli($serverName, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to retrieve records
$sql = "SELECT * FROM userrecords";
$result = $conn->query($sql);
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Feedback</title>
    <link rel="stylesheet" href="./allRecords.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Merriweather&family=Montserrat&family=Sacramento&display=swap"
      rel="stylesheet"
    />
</head>
<body>
    <header>
        <h1>RECORDS</h1>
        <form class="search-container" name="searchForm" id="searchForm" action = "./records.php" method = "POST">
            <input class="search-bar" name="search-bar" id = "search-bar" type="text" placeholder="Search records here...">
            <input class="search-button" id="search-button" name = "search-button" type="submit" value="search" >
        </form>
    </header>
    <section id="allRecords" class="allRecords">
        <h2>All Records</h2>
        <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Language</th>
            <th>About</th>
        </tr>
        <?php
        // Check if records exist
        if ($result->num_rows > 0) {
            // Output data of each row
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>".$row["Name"]."</td>";
                echo "<td>".$row["Email"]."</td>";
                echo "<td>".$row["Gender"]."</td>";
                echo "<td>".$row["Language"]."</td>";
                echo "<td>".$row["About"]."</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='5'>No records found</td></tr>";
        }
        ?>
    </table>
    </section>
</body>
</html>

<?php
// Close the connection
$conn->close();
?>





