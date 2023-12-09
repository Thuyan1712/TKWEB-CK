<?php
    include ("connect.php");
    if(isset($_GET['id'])){
        $id=$_GET['id'];
    }else{
        $id=" ";
    }
    $sql_chitiet= mysqli_query($conn,"SELECT *FROM product WHERE id ='$id'");
?>
<?php
    while($row_chitiet = mysqli_fetch_array($sql_chitiet)){
?>
<section class="product-content">
    <div class="pro">
        <div class="product-top">
        </div>
        <div class="product-content row">
            <div class="product-content-left row">
                <div class="product-content-left-big-img">

                    <img src="img/<?php echo $row_chitiet['image'] ?>">
                </div>
                 <div class="product-content-left-small-img">
                    <img src="img/<?php echo $row_chitiet['image'] ?>">
                    <img src="img/<?php echo $row_chitiet['image1'] ?>">
                </div>
            </div>
            
            <div class="product-content-right">
                <div class="product-content-right-product-name">
                    <h1><?php echo $row_chitiet['name'] ?></h1>
                    <p>MSP: <?php echo $row_chitiet['id'] ?></p>
                </div>



                <div class="product-content-right-product-feeback">
                    <div class="product-content-right-product-star">
                        <p>4.9 <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fas fa-star-half-alt"></i></p>
                    </div>
                    <div class="product-content-right-product-Evaluate">
                        <p>10,2k <small>Đánh giá</small></p>
                    </div>
                    <div class="product-content-right-product-sold">
                        <p>10,4k<small> Đã bán</small></p>
                    </div>
                    
                </div>

                <div class="product-content-right-product-price">
                    <div class="cost"><small><?php echo $row_chitiet['original_price'] ?> VND</small></div>
                    <div class="price"><?php echo $row_chitiet['price'] ?> VND</div>
                    <div class="sale-detail">Giảm <?php $sale=round((($row_chitiet['original_price']-$row_chitiet['price'])/$row_chitiet['original_price'])*100,1);
                                                echo $sale?>%</div>
                </div>
                <div class="product-content-right-product-deal">
                      <p style="font-weight: bold;">Deal</p>
                      <div>Mua với deal sốc</div>
                </div>
                <div class="quantity" >
                    <p style="font-weight: bold;">số lượng:</p>
                    <input type="number" min="0" value="1">
                    <p> 100 có sẵn</p>
                    <br>  
                </div>
                <div class="product-content-right-product-button">
                     
                        <button class="cart"><i class="fas fa-shopping-cart"></i><p>Thêm vào giỏ</p></button>
                        <button class="buy">Mua ngay</button>
                </div>
                <div class="product-content-right-product-icon">
                        <div class="product-content-right-product-icon-item">
                            <a href="#" title="+0123456789"><i class="fa-solid fa-phone-flip"></i> Hotline</a>
                        </div>
                        <div class="product-content-right-product-icon-item">
                            <a href="#" title="22itb@vku.udn.vn"><i class="fa-solid fa-envelope"></i> Mail</a>
                        </div>
                        <div class="product-content-right-product-icon-item">
                            <a href="#" title="Chat"><i class="far fa-comments"></i> Chat</a>
                        </div>
                </div>

            </div>
         </div>
        <div class="product-content-bottom">
            <div class="product-content-bottom-top">
                <i class="fa-solid fa-caret-down"></i>
            </div>

            <div class="product-content-bottom-content-big">
                <div class="product-content-bottom-content-title">
                    <div class="product-content-bottom-content-title-item chitiet">
                        <p>DETAILS INFORMATION</p>
                    </div>
                    <div class="product-content-bottom-content-title-item gioithieu">
                        <p>PRODUCT INTRODUCTION</p>
                    </div> 
                    <div class="product-content-bottom-content-title-item pictures">
                        <p>PICTURES</p>
                    </div>   
                </div>
                <div class="product-content-bottom-content">
                    <div class="product-content-bottom-content-chitiet">
                    <?php echo $row_chitiet['detail'] ?>
                    </div>
                    <div class="product-content-bottom-content-gioithieu">
                    <?php echo $row_chitiet['introduction'] ?>


                    </div>
                    <div class="product-content-bottom-content-img">
                        <div class="product-content-left-small-img">
                            <img src="img/<?php echo $row_chitiet['image'] ?>"> 
                            <img src="img/<?php echo $row_chitiet['image1'] ?>">         
                        </div>

                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
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
                    ?>s
</section>

<?php }
?>