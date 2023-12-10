<?php
session_start();
ob_start();
include "../WEBCAM/connect.php";
include "../WEBCAM/user.php";

if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['password'])) {
    // Nhận dữ liệu từ form
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Kiểm tra định dạng email hợp lệ
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        header('location: register.php');
        exit();
    }

    // kiểm tra và thêm người dùng vào cơ sở dữ liệu
    $result = registerUser($name, $email, $password);

    if ($result) {
        header('location: login.php');
        exit();
    } else {
        echo "Lỗi: " . mysqli_error($conn);
        exit();
    }
} else {
    // Trường dữ liệu bị thiếu
    echo ('Dữ liệu không hợp lệ');
    // header('location: register.php');
    // exit();
}
?>