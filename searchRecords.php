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
    <section id="searchResults" class="searchResults">
        <h2>Search Results</h2>
        <?php
            // Check if the search form is submitted
            if ($_SERVER["REQUEST_METHOD"] == "POST"){
                $searchTerm = $_POST['search-bar'];

                // Query to search for records
                $sql = "SELECT * FROM userrecords WHERE Name LIKE '%$searchTerm%' OR Email LIKE '%$searchTerm%' OR Gender LIKE '%$searchTerm%' OR Language LIKE '%$searchTerm%'";
                $result = $conn->query($sql);
            
            }

            // Display search results if available
            if (isset($result) && $result->num_rows > 0) {
                echo "<table>";
                echo "<tr>";
                echo "<th>Name</th>";
                echo "<th>Email</th>";
                echo "<th>Gender</th>";
                echo "<th>Language</th>";
                echo "<th>About</th>";
                echo "</tr>";

                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>".$row["Name"]."</td>";
                    echo "<td>".$row["Email"]."</td>";
                    echo "<td>".$row["Gender"]."</td>";
                    echo "<td>".$row["Language"]."</td>";
                    echo "<td>".$row["About"]."</td>";
                    echo "</tr>";
                }

                echo "</table>";

            } elseif (isset($result) && $result->num_rows <= 0) {
                echo "No results found.";
            }
    ?>

    <div class="return-btn-container">
        <a class="return-btn" href="./allRecords.php">Return to All Records Page</a>
    </div>
</section>
</body>
</html>


<?php
// Close the connection
$conn->close();
?>