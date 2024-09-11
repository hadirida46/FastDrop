<?php
session_start();
include 'db.php';

// Ensure the user is an admin
if (!isset($_SESSION['admin_logged_in']) || !$_SESSION['admin_logged_in']) {
    http_response_code(403);
    echo json_encode(['success' => false, 'error' => 'Unauthorized']);
    exit();
}

// Get the JSON input
$data = json_decode(file_get_contents('php://input'), true);

$orderId = $data['id'];
$customerName = $data['customer_name'];
$sourceLocation = $data['source_location'];
$destinationLocation = $data['destination_location'];
$orderDetails = $data['order_details'];
$phoneNumber = $data['phone_number'];

// Prepare and execute the update query
$sql = "UPDATE orders SET customer_name = ?, source_location = ?, destination_location = ?, order_details = ?, phone_number = ? WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param('sssssi', $customerName, $sourceLocation, $destinationLocation, $orderDetails, $phoneNumber, $orderId);

if ($stmt->execute()) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'error' => $stmt->error]);
}

$stmt->close();
$conn->close();
?>
