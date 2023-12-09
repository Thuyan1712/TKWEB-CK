<?php include ("connect.php");?>
<header class="header">
                <div class="header-1">
                    <p><i class="fa-regular fa-clock"></i>  T2 - T7 : 08:00-20:00</p>
                    <div class="search-form">
                        <form action="">
                            <input type="text" placeholder=" Tìm kiếm......." >
                            <button  type="submit" name="btn-search" for="search-box" class="fas fa-search"></button>
                        </form>
                    </div>
                    <div class="icon-header">
                        <!-- <div id="search-btn" class="fas fa-search"></div> -->
                        <a href ="?act=cart"><div id="cart" class="fa fa-shopping-cart"></div></a>
                        <div id="login-btn" class="fa-regular fa-user"></div>
                    </div>    
                </div>
                <div class ="header-2">
                    <div class="container-header-2">
                        <div class="logo">
                            <a href="#" ><img src="img/logo.png" alt=""></a>
                        </div>
                        <nav class ="navbar">
                            <ul class ="nav"> 
                                <?php
                                    $sql_menu = mysqli_query($conn,"SELECT * FROM danhmuc");
                                    $danhmuc = mysqli_fetch_all($sql_menu, MYSQLI_ASSOC);
                                    // $sql_danhmuc = mysqli_query($conn,"SELECT * FROM danhmuc");
                                    
                                    foreach($danhmuc as $row_dm){
                                        echo "<li><a href='?act=" . $row_dm['url'] . "&id=" . $row_dm['id_dm'] . "'>" . $row_dm['name_dm'] . "</a>";
                                        // echo "<li><a href ='?act=sanpham&id=$row_dm['id_dm']'>".$row_dm['name_dm']."</a>";
                                            $sql_menu = $conn->prepare("SELECT * FROM danhmuc_sp WHERE id_dm = ?");
                                            $sql_menu->bind_param("i", $row_dm['id_dm']);
                                            $sql_menu->execute();
                                            $result = $sql_menu ->get_result();
                                            $dm_sp = $result->fetch_all(MYSQLI_ASSOC);

                                            if(count($dm_sp)>0){
                                                echo "<ul class ='nav'> ";

                                                // $sql_pro=mysqli_query($conn,"SELECT * FROM product p JOIN loaisanpham l ON p.MaLSP = l.MaLSP WHERE p.MaLSP= ".$_GET['id']." ORDER BY p.MaLSP DESC ");
                                                // while($row_pro=mysqli_fetch_array($sql_pro) ){
                                                 
                                               
                                               
                                                foreach($dm_sp as $row_dm_sp){
                                                    echo "<li><a href='?act=list-sanphamDM&sp=".$row_dm_sp['MaDM']."'>".$row_dm_sp['TenDM']."</a>";
                                                    $sql_menu =$conn->prepare("SELECT * FROM loaisanpham WHERE MaDM = ?");
                                                    $sql_menu->bind_param("i", $row_dm_sp['MaDM']);
                                                    $sql_menu->execute();
                                                    $result = $sql_menu ->get_result();
                                                    $loaisp = $result->fetch_all(MYSQLI_ASSOC);

                                                    if(count($loaisp)>0){
                                                        echo "<ul class = 'nav'>";
                                                        foreach($loaisp as $row_loaisp){
                                                            echo "<li><a href='?act=list-sanpham&sp=".$row_loaisp['MaLSP']."&loai=".$row_loaisp['TenLSP']."'>".$row_loaisp['TenLSP']."</a></li>";
                                                        }
                                                        echo "</ul>";
                                                    }
                                                    echo" </li> ";
                                                }
                                                
                                                echo "</ul>";
                                            }
                                            }
                                        echo "</li>";
                                    // }
                                ?>
                            </ul>

                            
                        </nav>
                    </div>
                </div>
            </header>