<?php
session_start();


if (!isset($_SESSION["user_id"])) {

    header("Location: login.php");
    exit;
}


echo "Szia, " . $_SESSION["user_email"] . "!";


?>