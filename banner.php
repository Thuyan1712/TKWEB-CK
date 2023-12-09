<?php 
    include("connect.php");
    $sql_banner= mysqli_query($conn,"SELECT image FROM banner ");
?>

<section class="banner owl-carousel owl-theme">
                <!-- <div class="banner-item banner-item-1">
                    <img src="img/1.png" alt="">
                    
                </div> -->
                <?php
                    while($row_banner = mysqli_fetch_array($sql_banner)){
                ?>
                <div class="banner-item banner-item-2">
                    <img src="img/<?php echo $row_banner['image']?>" alt="">
                    <div class="wraper">
                        <div class="banner-item-text">
                            <button>Mua Ngay</button>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <!-- <div class="banner-item banner-item-3">
                    <img src="img/3.png" alt="">
                </div>
                <div class="banner-item banner-item-4">
                    <img src="img/4.png" alt="">
                    <div class="wraper">
                        <div class="banner-item-text">
                            <button>Mua Ngay</button>
                        </div>
                    </div>
                </div> -->
            </section>
