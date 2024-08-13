<?php
session_start();
include 'db.php';

$username = $_POST['username'];
$password = $_POST['password'];

// Example credentials (use a secure method in production)
$admin_username = 'admin';
$admin_password = 'password';

if ($username === $admin_username && $password === $admin_password) {
    $_SESSION['admin_logged_in'] = true;
    header("Location: admin.html");
    exit();
} else {
    echo "Invalid credentials.";
}
?>
