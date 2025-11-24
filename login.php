<?php
session_start();
require 'db.php'; 

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    
    $email = $_POST["email"]; 
    $password = $_POST["password"];

    
    $stmt = $conn->prepare("SELECT id, email, password FROM regriszt WHERE email = ?");
    if (!$stmt) {
        die('Prepare failed: ' . htmlspecialchars($conn->error));
    }
    
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows === 0) {
        
        echo "Hibás e-mail cím vagy jelszó!";
        exit;
    }

    $stmt->bind_result($id, $db_email, $hashedPassword);
    $stmt->fetch();


    if (password_verify($password, $hashedPassword)) {
        
        $_SESSION["user_id"] = $id;
        $_SESSION["user_email"] = $db_email; 

       
        header("Location: index.php");
        exit; 
    } else {
        echo "Hibás e-mail cím vagy jelszó!";
    }
} else {
  
    header("Location: bejelentkezes.html"); 
    exit;
}

$stmt->close();
$conn->close();
?>

