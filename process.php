<?php
session_start();

// form data received
$username = $_REQUEST['username'];
$password = $_REQUEST['password']; // No need to hash here

include('dbConnect.php');

$sql = "SELECT * FROM `admin` WHERE `username` = :username AND `password` = :password";
$stmt = $pdo->prepare($sql);
$stmt->bindParam(":username", $username);
$stmt->bindParam(":password", $password);
$stmt->execute();

if($stmt->rowCount() > 0){
    $row = $stmt->fetch();
    $_SESSION['aid'] = $row['aid'];
    $_SESSION['admin_id'] = $username;
    $_SESSION['aname'] = $row['aname'];
    header("location:admin_dashboard.php");
} else {
    $_SESSION['error'] = "Wrong Username or Password";
    header("location:admin_login.php");
}
?>
