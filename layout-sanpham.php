
<div class="introduct-text">
        <p>Sản phẩm </p>
    </div>

    <section class="product-page" >
        <div class="product-page-text">
            <p>Danh mục</p>
            <div class="menu">
                <?php
                    $sql_menu = mysqli_query($conn,"SELECT * FROM danhmuc");
                    $danhmuc = mysqli_fetch_all($sql_menu, MYSQLI_ASSOC);
                
                    foreach($danhmuc as $row_dm){                       
                        $sql_menu = $conn->prepare("SELECT * FROM danhmuc_sp WHERE id_dm = ?");
                        $sql_menu->bind_param("i", $row_dm['id_dm']);
                        $sql_menu->execute();
                        $result = $sql_menu ->get_result();
                        $dm_sp = $result->fetch_all(MYSQLI_ASSOC);

                            if(count($dm_sp)>0){
                                echo "<ul class ='accordion-item'> ";
                                                           
                                foreach($dm_sp as $row_dm_sp){
                                    echo "<li class='accordion-header'><a href='?act=list-sanphamDM&sp=".$row_dm_sp['MaDM']."'>".$row_dm_sp['TenDM']."</a><i class='arrow fas fa-chevron-down'></i>";
                                    $sql_menu =$conn->prepare("SELECT * FROM loaisanpham WHERE MaDM = ?");
                                    $sql_menu->bind_param("i", $row_dm_sp['MaDM']);
                                    $sql_menu->execute();
                                    $result = $sql_menu ->get_result();
                                    $loaisp = $result->fetch_all(MYSQLI_ASSOC);

                                    if(count($loaisp)>0){
                                        echo "<ul class = 'accordion-body'>";
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
                ?>
            </div>
        </div>
             
        <?php require_once 'controll.php'; ?>