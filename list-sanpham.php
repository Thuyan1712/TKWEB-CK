
        <?php 
            $sql_pro=mysqli_query($conn,"SELECT * FROM product p JOIN loaisanpham l ON p.MaLSP = l.MaLSP WHERE p.MaLSP= ".$_GET['sp']."  ORDER BY p.MaLSP DESC ");
            // $sql_sp= mysqli_query($conn,"SELECT * FROM product where dexuat ='co' ");
            
        ?>
        <?php require_once 'layout-sanpham.php'; ?>
                    <div class="product-left-content" id="existing-content">
                            <div class="container">

                            <?php
                                while($row_pro = mysqli_fetch_array($sql_pro)){
                            ?>
                                <div class="product-left-box">
                                    <div class="product-left-content-box">
                                        <div class="product-left-content-box-img">
                                            <a href ="?act=chitiet-sp&id=<?php echo $row_pro['id']?>"><img src="img/<?php echo $row_pro['image']?>"></a>
                                        </div>
                                        <div class="product-left-content-box-name">
                                            <p><?php echo $row_pro['name']?></p>
                                        </div>
                                        <div class="product-left-content-box-price">
                                            <span><?php echo $row_pro['price']?> VND</span>
                                        </div>
                                        <div class="product-left-content-box-or-price">
                                            <span><?php echo $row_pro['original_price']?> VND</span>
                                        </div>
                                        
                                    </div>
                                    <div class="reduction">
                                        <img src="img/reduction.svg">
                                        <div class="sale">
                                            <p>Giảm</p>
                                            <p>
                                            <?php 
                                                $sale=round((($row_pro['original_price']-$row_pro['price'])/$row_pro['original_price'])*100,1);
                                                echo $sale?>%
                                            </p>
                                        </div>
                                    </div>  
                                </div>
                            <?php }?>

                                
                            </div>
                        </div>
                </div>
</section>




