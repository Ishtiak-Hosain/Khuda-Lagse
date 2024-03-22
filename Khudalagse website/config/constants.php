<?php 
    //Start Session
    session_start();
    //Create Constants to Store Non Repeating Values
    define('SITEURL', 'http://khudalagse.zya.me/');
    define('LOCALHOST', 'sql208.hstn.me');
    define('DB_USERNAME', 'mseet_36067139');
    define('DB_PASSWORD','ishtiakk');
    define('DB_NAME', 'mseet_36067139_khudalagse');
    $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error()); //Database Connection
    $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error()); //SElecting Database
?>