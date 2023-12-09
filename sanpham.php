<?php 
                $sql_sp1= mysqli_query($conn,"SELECT * FROM product where dexuat ='co' ");

    // $sql_sp= mysqli_query($conn,"SELECT * FROM product p JOIN danhmuc_sp l ON p.MaDM = l.MaDM WHERE p.MaDM= ".$_GET['sp']."  ORDER BY p.MaDM DESC ");         

?>

             
     
<?php include 'layout-sanpham.php'; ?>

        <div class="product-left-content" id="existing-content">
            <div class="container">

                <?php
                    while($row_sp1 = mysqli_fetch_array($sql_sp1)){
                ?>
              
                    <div class="product-left-box"> 
                        <div class="product-left-content-box">
                            <div class="product-left-content-box-img">
                                <a href="?act=chitiet-sp&id=<?php echo $row_sp1['id']?>"><img src="img/<?php echo $row_sp1['image']?>"></a>
                            </div>
                            <div class="product-left-content-box-name">
                                <p><?php echo $row_sp1['name']?></p>
                            </div>
                            <div class="product-left-content-box-price">
                                <span><?php echo $row_sp1['price']?> VND</span>
                            </div>
                            <div class="product-left-content-box-or-price">
                                            <span><?php echo $row_sp1['original_price']?> VND</span>
                                        </div>
                        </div>  
                        <div class="reduction">
                            <img src="img/reduction.svg">
                                <div class="sale">
                                    <p>Giảm</p>
                                    <p><?php 
                                        $sale=round((($row_sp1['original_price']-$row_sp1['price'])/$row_sp1['original_price'])*100,1);
                                        echo $sale?>%</p>
                                </div>
                        </div>  
                    </div>
              
                <?php }?>                               
            </div>
        </div>


        </div>
</section>
