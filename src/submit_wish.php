<?php
$servername = "localhost"; // Ganti dengan nama server Anda
$username = "root"; // Ganti dengan username database Anda
$password = ""; // Ganti dengan password database Anda
$dbname = "christmas_wishes"; // Ganti dengan nama database Anda

// Buat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    echo json_encode(["error" => "Connection failed: " . $conn->connect_error]);
    exit();
}

// Ambil data dari request
$data = json_decode(file_get_contents("php://input"));
$wish = $data->wish;

// Siapkan dan jalankan query
$stmt = $conn->prepare("INSERT INTO wishes (wish) VALUES (?)");
$stmt->bind_param("s", $wish);

if ($stmt->execute()) {
    echo json_encode(["message" => "Wish submitted successfully!"]);
} else {
    echo json_encode(["error" => "Error: " . $stmt->error]);
}

$stmt->close();
$conn->close();
?>
