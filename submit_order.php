<?php
include 'db.php';

$customerName = $_POST['customerName'];
$source = $_POST['source'];
$destination = $_POST['destination'];
$orderDetails = $_POST['orderDetails'];
$phone = $_POST['phone'];

if (empty($customerName) || empty($source) || empty($destination) || empty($phone) || !isset($_POST['sourceLat']) || !isset($_POST['sourceLng']) || !isset($_POST['destinationLat']) || !isset($_POST['destinationLng'])) {
    die('Please fill out all required fields and add markers on the map.');
}

$sourceLat = $_POST['sourceLat'];
$sourceLng = $_POST['sourceLng'];
$destinationLat = $_POST['destinationLat'];
$destinationLng = $_POST['destinationLng'];

$stmt = $conn->prepare("INSERT INTO orders (customer_name, source_location, destination_location, order_details, phone_number, source_lat, source_lng, destination_lat, destination_lng) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sssssssss", $customerName, $source, $destination, $orderDetails, $phone, $sourceLat, $sourceLng, $destinationLat, $destinationLng);

if ($stmt->execute()) {
    header("Location: index.html");
    exit();
    // echo "Order submitted successfully!";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
