<?php
session_start();

// Hủy session
session_destroy();
header("Location: login.php");
exit();
?>