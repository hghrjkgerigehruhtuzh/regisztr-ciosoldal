<?php
require 'db.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $email = $_POST["email"];
    $password = $_POST["password"];
    $birthdate = $_POST["birthdate"];
    $phone = $_POST["phone"];


    $stmt = $conn->prepare("SELECT id FROM regriszt WHERE email = ?");
    if (false === $stmt) {
        die('Előkészítés sikertelen: ' . htmlspecialchars($conn->error));
    }

    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        echo "A megadott email cím már regisztrálva van.";
        $stmt->close();
        exit; 
    }
    $stmt->close();

 
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);


    $stmt = $conn->prepare("INSERT INTO regriszt (email, password, datum, telefonszam) VALUES (?, ?, ?, ?)");
    
    if (false === $stmt) {
        die('Beszúrás előkészítése sikertelen: ' . htmlspecialchars($conn->error));
    }

  
    $stmt->bind_param("ssss", $email, $hashed_password, $birthdate, $phone);

    if ($stmt->execute()) {
        echo "Sikeres regisztráció! Most már bejelentkezhet.";
    } else {
        echo "Hiba történt a regisztráció során: " . $stmt->error;
    }
    
    $stmt->close();
    $conn->close();
} else {

    header("Location: registracio.html");
    exit;
}
?>
