<?php
session_start();
ob_start();
include "../WEBCAM/connect.php";
include "../WEBCAM/user.php";

if(isset($_POST['email']) && isset($_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Kiểm tra định dạng email hợp lệ
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        header('location: login.php');
        exit();
    }

    $checkUserQuery = "SELECT * FROM user WHERE email = '$email' AND password = '$password'";
    $result = mysqli_query($conn, $checkUserQuery);

    if(mysqli_num_rows($result) > 0) {
        // Người dùng tồn tại
        $user_info = mysqli_fetch_assoc($result);
        // $user_info = checkuser($email, $password);


        // Kiểm tra role
        if($user_info['role'] == 1) {
            $_SESSION['user_id'] = $user_info['user_id'];
            // $_SESSION['username'] = $user_info['name'];
            header('location: admin.php');
            exit();
        } else {
            header('location: index.php');
            exit();
        }
    } else {
        echo "Email hoặc mật khẩu không đúng.";
        exit();
    }
} else {
    // Trường dữ liệu bị thiếu
    echo "Dữ liệu không hợp lệ";
    exit();
}
?>