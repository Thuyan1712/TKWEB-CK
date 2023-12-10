<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
</head>
<header class="header">
    <div class="header-1">
        <p><i class="fa-regular fa-clock"></i> T2 - T7 : 08:00-20:00</p>
        <div class="search-form">
            <form action="">
                <input type="text" placeholder=" Tìm kiếm.......">
                <button type="submit" name="btn-search" for="search-box" class="fas fa-search"></button>
            </form>
        </div>
        <div class="icon-header">
            <!-- <div id="search-btn" class="fas fa-search"></div> -->
            <div id="cart" class="fa fa-shopping-cart"></div>
            <!-- <div id="login-btn" class="fa-regular fa-user"> -->
            <a href="login.php" class="icon-header"><i class="fa-regular fa-user"></i></a>
            <a href="logout.php" class="icon-header"><i class="fa fa-sign-out" aria-hidden="true"></i></a>
        </div>

        <?php
        $conn = mysqli_connect("localhost", "root", "", "tatshop") or die('connection failed');
        $isLoggedIn = true;
        if($isLoggedIn) {
            $userId = 1;
            $query = "SELECT name FROM user WHERE id = $userId";
            $result = $conn->query($query);

            if($result && $result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $name = $row['name'];
                echo "<div class='welcome-container'>Chào mừng, $name! | <a href='logout.php'>Đăng xuất</a></div>";
            } else {
                echo "<div>Không tìm thấy thông tin người dùng</div>";
            }
        }
        ?>


    </div>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        .welcome-container {
            position: absolute;
            top: 40px;
            right: 10px;
            background-color: #fff;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
    <div class="header-2">
        <div class="container-header-2">
            <div class="logo">
                <a href="#"><img src="img/logo.png" alt=""></a>
            </div>
            <nav class="navbar">
                <a href="?act=home">trang chủ</a>
                <a href="?act=sanpham">sản phẩm </a>
                <a href="?act=gioithieu">giới thiệu </a>
                <a href="?act=lienhe">liên hệ </a>
            </nav>
        </div>
    </div>
</header>