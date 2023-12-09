<!-- <section class="banner owl-carousel owl-theme">
                <div class="banner-item banner-item-1">
                    <img src="img/1.png" alt="">
                    
                </div>
                <div class="banner-item banner-item-2">
                    <img src="img/2.png" alt="">
                    <div class="wraper">
                        <div class="banner-item-text">
                            <button>Mua Ngay</button>
                        </div>
                    </div>
                </div>
                <div class="banner-item banner-item-3">
                    <img src="img/3.png" alt="">
                </div>
                <div class="banner-item banner-item-4">
                    <img src="img/4.png" alt="">
                    <div class="wraper">
                        <div class="banner-item-text">
                            <button>Mua Ngay</button>
                        </div>
                    </div>
                </div>
            </section> -->
            <?php include("banner.php") ?>
            <?php 
                include("connect.php");
                $sql_sp= mysqli_query($conn,"SELECT * FROM product where dexuat ='co' ");
            ?>

            <section class="product" >
                <div class="container">
                    <div class="product-left">
                        <div class="product-left-text">
                            <p>Camera</p>
                            <div class="text">

                            
                                <!-- <button>camera fujifilm</button> -->
                                <div class="text-2">
                                    <button onclick="toggleContent()">Camera Canon</button>
                                </div>
                    
                                <div class="text-2">
                                    <button onclick="toggleContent1()">camera fujifilm</button>
                                </div>
                        
                                <div class="text-2">
                                    <button onclick="toggleContent2()">camera sony</button>
                                </div>

                                <div class="text-2">
                                    <button onclick="toggleContent3()">phụ kiện</button>
                                </div>
                            </div>
                        </div>


                        <div class="product-left-content">
                            <div id="hidden-content" style="display: none;">
                                <div class="container">    
                                    <?php                                            
                                        $sql_canon= mysqli_query($conn,"SELECT * FROM product p JOIN loaisanpham l ON p.MaLSP = l.MaLSP WHERE l.MaLSP = '2' ");
                                    ?>
                                    <?php
                                        while($row_canon = mysqli_fetch_array($sql_canon)){
                                    ?>
                                        <div class="product-left-box">
                                            <div class="product-left-content-box">
                                                <div class="product-left-content-box-img">
                                                    <a href ="?act=chitiet-sp&id=<?php echo $row_canon['id']?>"><img src="img/<?php echo $row_canon['image']?>"></a>
                                                </div>
                                                <div class="product-left-content-box-name">
                                                    <p><?php echo $row_canon['name']?></p>
                                                </div>
                                                <div class="product-left-content-box-price">
                                                    <span><?php echo $row_canon['price']?>VND</span>
                                                </div>
                                                
                                            </div>
                                            <div class="reduction">
                                                <img src="img/reduction.svg">
                                                <div class="sale">
                                                    <p>Giảm</p>
                                                    <p>20$ </p>
                                                </div>
                                            </div>  
                                        </div>
                                    <?php }?>
                                </div>
                            </div>
                        </div>  
                                        
                        
                        
                        <div class="product-left-content">
                            <div id="hidden-content1" style="display: none;">
                                <div class="container">    
                                    <?php                                            
                                        $sql_fuji= mysqli_query($conn,"SELECT * FROM product p JOIN loaisanpham l ON p.MaLSP = l.MaLSP WHERE l.MaLSP = '3' ");
                                    ?>
                                    <?php
                                        while($row_fuji = mysqli_fetch_array($sql_fuji)){
                                    ?>
                                        <div class="product-left-box">
                                            <div class="product-left-content-box">
                                                <div class="product-left-content-box-img">
                                                    <a href ="?act=chitiet-sp&id=<?php echo $row_fuji['id']?>"><img src="img/<?php echo $row_fuji['image']?>"></a>
                                                </div>
                                                <div class="product-left-content-box-name">
                                                    <p><?php echo $row_fuji['name']?></p>
                                                </div>
                                                <div class="product-left-content-box-price">
                                                    <span><?php echo $row_fuji['price']?>VND</span>
                                                </div>
                                                
                                            </div>
                                            <div class="reduction">
                                                <img src="img/reduction.svg">
                                                <div class="sale">
                                                    <p>Giảm</p>
                                                    <p>20$ </p>
                                                </div>
                                            </div>  
                                        </div>
                                    <?php }?>
                                </div>
                            </div>
                        </div>  

                        <div class="product-left-content">
                            <div id="hidden-content2" style="display: none;">
                                <div class="container">    
                                    <?php                                            
                                        $sql_sony= mysqli_query($conn,"SELECT * FROM product p JOIN loaisanpham l ON p.MaLSP = l.MaLSP WHERE l.MaLSP = '1' ");
                                    ?>
                                    <?php
                                        while($row_sony = mysqli_fetch_array($sql_sony)){
                                    ?>
                                        <div class="product-left-box">
                                            <div class="product-left-content-box">
                                                <div class="product-left-content-box-img">
                                                    <a href ="?act=chitiet-sp&id=<?php echo $row_sony['id']?>"><img src="img/<?php echo $row_sony['image']?>"></a>
                                                </div>
                                                <div class="product-left-content-box-name">
                                                    <p><?php echo $row_sony['name']?></p>
                                                </div>
                                                <div class="product-left-content-box-price">
                                                    <span><?php echo $row_sony['price']?>VND</span>
                                                </div>
                                                
                                            </div>
                                            <div class="reduction">
                                                <img src="img/reduction.svg">
                                                <div class="sale">
                                                    <p>Giảm</p>
                                                    <p>20$ </p>
                                                </div>
                                            </div>  
                                        </div>
                                    <?php }?>
                                </div>
                            </div>
                        </div>  

                        <div class="product-left-content">
                            <div id="hidden-content3" style="display: none;">
                                <div class="container">    
                                    <?php                                            
                                        $sql_pk= mysqli_query($conn,"SELECT * FROM product p JOIN danhmuc_sp d ON p.MaDM = d.MaDM WHERE d.MaDM = '4' ");
                                    ?>
                                    <?php
                                        while($row_pk = mysqli_fetch_array($sql_pk)){
                                    ?>
                                        <div class="product-left-box">
                                            <div class="product-left-content-box">
                                                <div class="product-left-content-box-img">
                                                    <a href ="?act=chitiet-sp&id=<?php echo $row_pk['id']?>"><img src="img/<?php echo $row_pk['image']?>"></a>
                                                </div>
                                                <div class="product-left-content-box-name">
                                                    <p><?php echo $row_pk['name']?></p>
                                                </div>
                                                <div class="product-left-content-box-price">
                                                    <span><?php echo $row_pk['price']?>VND</span>
                                                </div>
                                            </div>
                                            <div class="reduction">
                                                <img src="img/reduction.svg">
                                                <div class="sale">
                                                    <p>Giảm</p>
                                                    <p>20$ </p>
                                                </div>
                                            </div>  
                                        </div>
                                    <?php }?>
                                </div>
                            </div>
                        </div>  

                        

                        <div class="product-left-content" id="existing-content">
                            <div class="container">

                            <?php
                                while($row_sp = mysqli_fetch_array($sql_sp)){
                            ?>
                                <div class="product-left-box">
                                    <div class="product-left-content-box">
                                        <div class="product-left-content-box-img">
                                            <a href ="?act=chitiet-sp&id=<?php echo $row_sp['id']?>"><img src="img/<?php echo $row_sp['image']?>"></a>
                                        </div>
                                        <div class="product-left-content-box-name">
                                            <p><?php echo $row_sp['name']?></p>
                                        </div>
                                        
                                        <div class="product-left-content-box-price">
                                            <span><?php echo $row_sp['price']?>VND</span>
                                        </div>
                                        <div class="product-left-content-box-or-price">
                                            <span><?php echo $row_sp['original_price']?>VND</span>
                                        </div>
                                    </div>
                                    <div class="reduction">
                                        <img src="img/reduction.svg">
                                        <div class="sale">
                                            <p>Giảm</p>
                                            <p>
                                            <?php 
                                                $sale=round((($row_sp['original_price']-$row_sp['price'])/$row_sp['original_price'])*100,1);
                                                echo $sale?>%
                                            </p>
                                        </div>
                                    </div>  
                                </div>
                            <?php }?>

                                
                            </div>
                        </div>
                    </div>




                    <div class="product-right">
                        <div class="container-product-right ">
                            <div class="product-right-text">
                                <p>Máy quay</p>
                            </div>
                            <div class="product-right-content">

                            <?php 
                                $item_per_page =!empty($_GET['per_page'])?$_GET['per_page']:6;
                                $current_page =!empty($_GET['page'])?$_GET['page']:3;
                                $offset = ($current_page-1)* $item_per_page;
                                $sql_mq = mysqli_query($conn,"SELECT * FROM product JOIN loaisanpham ON product.MaLSP = loaisanpham.MaLSP WHERE loaisanpham.MaLSP BETWEEN 6 AND 10 LIMIT ".$item_per_page." OFFSET ".$offset.";");
                                $total_mq = mysqli_query($conn,"SELECT * FROM product JOIN loaisanpham ON product.MaLSP = loaisanpham.MaLSP WHERE loaisanpham.MaLSP BETWEEN 6 AND 10;");
                                $total_mq= $total_mq->num_rows;
                                $total_page= ceil($total_mq / $item_per_page);

                            ?>
                            <?php
                                while($row_mq = mysqli_fetch_array($sql_mq)){
                            ?>
                            
                                <div class="product-right-content-box">
                                    <div class="product-right-content-box-img">
                                        <a><img src="img/<?php echo $row_mq['image']?>"></a>
                                    </div>
                                    <div class="product-right-content-box-name">
                                        <p><?php echo $row_mq['name']?> </p>
                                    </div>
                                    <div class="product-right-content-box-price">
                                        <span><?php echo $row_mq['price']?>VND</span>
                                    </div>
                                    
                                </div>
                            <?php }?>
                            <ul class="page" >
                                <?php for ($num=1;$num<= $total_page;$num++ ){?>
                                    <a href ="?per_page=6&page=<?=$num?>"><?=$num ?></a>
                               <?php } ?>
                                <!-- <a href ="?per_page=4&page=2">2</a>
                                <a href ="?per_page=4&page=3">3</a> -->
                            </ul>

                            <!-- <div class="product-right-content">
                                

                                 <div class="product-right-content-box">
                                    <a><img src="img/2.jpg"></a>
                                    <p>Ống Kính Sony 18-200mm </p>
                                    <span>200.000 VND</span>
                                </div>
                        
                                <div class="product-right-content-box">
                                    <a><img src="img/2.jpg"></a>
                                    <p>Ống Kính Sony 18-200mm </p>
                                    <span>200.000 VND</span>
                                </div>
                                <div class="product-right-content-box">
                                    <a><img src="img/2.jpg"></a>
                                    <p>Ống Kính Sony 18-200mm </p>
                                    <span>200.000 VND</span>
                                </div>
                                <div class="product-right-content-box">
                                    <a><img src="img/2.jpg"></a>
                                    <p>Ống Kính Sony 18-200mm </p>
                                    <span>200.000 VND</span>
                                </div>
                
                                <div class="product-right-content-box">
                                    <a><img src="img/2.jpg"></a>
                                    <p>Ống Kính Sony 18-200mm </p>
                                    <span>200.000 VND</span>
                                </div>
                       -->    
                            </div> 
                       

                        </div>
 
                           
                    </div>
                </div>

            </section>

            <?php
                $sql_spnew= mysqli_query($conn,"SELECT * FROM product where new ='new1' ");
                $sql_spnew1= mysqli_query($conn,"SELECT * FROM product where new ='new2' ");

             ?>
            
            <section class="product-new">
                <div class="product-new-container"> 
                    <?php
                                while($row_spnew = mysqli_fetch_array($sql_spnew)){
                            ?>
                    <div class="colum1">
                        <div class="colum1-content">
                           <a href ="?act=chitiet-sp&id=<?php echo $row_spnew['id']?>"><img src="img/<?php echo $row_spnew['image']?>"></a> 
                        </div>

                    </div>   
                    <?php }?>
                    
                    <?php
                        while($row_spnew1 = mysqli_fetch_array($sql_spnew1)){
                    ?>
                    <div class="colum2">
                        <div class="colum2-content">
                                <div class="content-colum1">
                                    <p><?php echo $row_spnew1['name']?></p>
                                    Giá:<span> <?php echo $row_spnew1['price']?> VND</span><br>
                                    <a href ="">Mua ngay <i class="fa-solid fa-arrow-right"></i></a>
                                </div>
                                <a href ="?act=chitiet-sp&id=<?php echo $row_spnew1['id']?>"><img src="img/<?php echo $row_spnew1['image']?>"></a> 
                        </div>

                    </div>
                 
                    <div class="colum3">
                        <div class="colum3-content">
                        
                            <a href ="?act=chitiet-sp&id=<?php echo $row_spnew1['id']?>"><img src="img/<?php echo $row_spnew1['image1']?>"></a>

                            <div class="name-product">
                                <p><?php echo $row_spnew1['name']?></p>
                                Giá:<span> <?php echo $row_spnew1['price']?> VND</span><br>
                                <a href ="">Mua ngay <i class="fa-solid fa-arrow-right"></i></a>
                            </div>
                        <?php }?>
                        </div>
                    </div>
                </div>
            </section>

            <?php
                $sql_spnb= mysqli_query($conn,"SELECT * FROM product where noibat ='co' ");
            ?>
            <section class="product-outstand">
                <div class="product-outstand-text">
                    <p>Sản Phẩm Nổi Bật</p>
                </div>
                <div class="container-product-outstand">
                    <?php
                        while($row_spnb = mysqli_fetch_array($sql_spnb)){
                    ?>
                    <div class="product-outstand-box">
                        <div class="product-outstand-box-content">
                            <div class="product-outstand-box-content-img">
                               <a href ="?act=chitiet-sp&id=<?php echo $row_spnb['id']?>"> <img src="img/<?php echo $row_spnb['image']?>"></a>
                            </div>
                            <div class="product-outstand-box-content-name">
                                <h3><?php echo $row_spnb['name']?></h3>
                            </div>
                            <div class="product-outstand-box-content-price">
                                <span><?php echo $row_spnb['price']?> VND</span>
                            </div> 
                        </div>
                    </div>

                    <?php
                    }
                    ?>
                    <!-- <div class="product-outstand-box">
                    <div class="product-outstand-box-content">
                            <img src="img/1.jpg">
                            <h3>MÁY ẢNH CANON EOS 3000D KIT EF-S18-55MM F3.5-5.6 III</h3>
                            <span>4.000.000VND</span>
                        </div>
                    </div>

                    <div class="product-outstand-box">
                    <div class="product-outstand-box-content">
                            <img src="img/1.jpg">
                            <h3>MÁY ẢNH CANON EOS 3000D KIT EF-S18-55MM F3.5-5.6 III</h3>
                            <span>4.000.000VND</span>
                        </div>
                    </div>
                    <div class="product-outstand-box">
                    <div class="product-outstand-box-content">
                            <img src="img/1.jpg">
                            <h3>MÁY ẢNH CANON EOS 3000D KIT EF-S18-55MM F3.5-5.6 III</h3>
                            <span>4.000.000VND</span>
                        </div>
                    </div>
                    <div class="product-outstand-box">
                    <div class="product-outstand-box-content">
                            <img src="img/1.jpg">
                            <h3>MÁY ẢNH CANON EOS 3000D KIT EF-S18-55MM F3.5-5.6 III</h3>
                            <span>4.000.000VND</span>
                        </div>
                    </div>
                    <div class="product-outstand-box">
                    <div class="product-outstand-box-content">
                            <img src="img/1.jpg">
                            <h3>MÁY ẢNH CANON EOS 3000D KIT EF-S18-55MM F3.5-5.6 III</h3>
                            <span>4.000.000VND</span>
                        </div>
                    </div>
                    <div class="product-outstand-box">
                        <div class="product-outstand-box-content">
                            <img src="img/1.jpg">
                            <h3>MÁY ẢNH CANON EOS 3000D KIT EF-S18-55MM F3.5-5.6 III</h3>
                            <span>4.000.000VND</span>
                        </div>
                    </div>
                    <div class="product-outstand-box">
                    <div class="product-outstand-box-content">
                            <img src="img/1.jpg">
                            <h3>MÁY ẢNH CANON EOS 3000D KIT EF-S18-55MM F3.5-5.6 III</h3>
                            <span>4.000.000VND</span>
                        </div>
                    </div>

                    <div class="product-outstand-box">
                    <div class="product-outstand-box-content">
                            <img src="img/1.jpg">
                            <h3>MÁY ẢNH CANON EOS 3000D KIT EF-S18-55MM F3.5-5.6 III</h3>
                            <span>4.000.000VND</span>
                        </div>
                    </div> -->

                </div>

            </section>