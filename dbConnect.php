<?php

// Database connection parameters
$dsn = "mysql:host=localhost;dbname=voting";
$user = "root";
$pass = "";

// PDO options
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_EMULATE_PREPARES => false, // Disable emulated prepared statements
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];

try {
    // Create PDO instance
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (PDOException $e) {
    // Handle database connection errors
    // You can log the error or display a user-friendly message
    // For example, redirect to an error page
    header("Location: error.php");
    exit;
}

?>
