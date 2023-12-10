<?php
include "../WEBCAM/connect.php";
function checkuser($user, $password) {
    global $conn;

    $checkUserQuery = "SELECT * FROM user WHERE email = '$user'";
    $result = mysqli_query($conn, $checkUserQuery);
    $user_info = mysqli_fetch_assoc($result);

    // Kiểm tra sự tồn tại của người dùng
    if($user_info) {
        // So sánh mật khẩu
        if(password_verify($password, $user_info['password'])) {
            return $user_info['role'];
        } else {
            echo ('password sai');
            return false;
        }
    } else {
        echo ('email không tồn tại');
        return false;
    }
}


function registerUser($name, $email, $password) {
    $conn = mysqli_connect("localhost", "root", "", "tatshop") or die('connection failed');

    if(!$conn) {
        die("Connection failed: ".mysqli_connect_error());
    }
    $checkUserQuery = "SELECT * FROM user WHERE email = '$email'";
    $result = mysqli_query($conn, $checkUserQuery);

    if(mysqli_num_rows($result) > 0) {
        mysqli_close($conn);
        return "exist";
    }
    $insertQuery = "INSERT INTO user (name, email, password) VALUES ('$name', '$email', '$password')";

    if(mysqli_query($conn, $insertQuery)) {
        mysqli_close($conn);
        return "success";
    } else {
        mysqli_close($conn);
        return "error";
    }
}


?>