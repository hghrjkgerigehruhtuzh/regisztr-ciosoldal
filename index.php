<?php
session_start();


if (!isset($_SESSION["user_id"])) {

    header("Location: login.php");
    exit;
}


$felhasznalo_email = htmlspecialchars($_SESSION["user_email"]);
?>
<!DOCTYPE html>
<html lang="hu">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>kijelentkezés</title>
  <link rel="stylesheet" href="be.css">
  <link rel="icon" type="image/png" href="favicon-96x96.png" sizes="96x96" />
  <link rel="icon" type="image/svg+xml" href="favicon.svg" />
  <link rel="shortcut icon" href="favicon.ico" />
  <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png" />
  <meta name="apple-mobile-web-app-title" content="MyWebSite" />
  <link rel="manifest" href="site.webmanifest" />
</head>
<body>
 
  <main>
    <h1>kijelentkezés</h1>
    <form action="logiout.php" method="post">
  <input type="submit" value="Kijelentkezés (nem müködik)">
</form>
  </main>
</body>
</html>
