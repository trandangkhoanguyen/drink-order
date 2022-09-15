<?php include('header.php') ?>

    <main>
        <!-- Drink Search Section Starts -->
        <section class="drink-search text-center">
            <div class="container">
                    <?php
                        if(isset($_GET['search'])){
                            $s = $_GET['s'];
                            $sql = "SELECT * FROM thucuong where active='Còn hàng' and tieude like '%$s%'";
                        }
                        
                    ?>
                
                <h2 style="margin-top: 10px;">Kết quả cho <a href="#" style="color: #ff4d4d;"><?php echo $_GET['s']; ?></a></h2>
            </div>
        </section>
        <!-- Drink Search Section Ends -->
        <!-- Drink Menu Section Starts -->
        <section class="drink-menu">
            <div class="container list-drink">
                <h2 class="text-center">Menu thức uống</h2>
                <div class="row">
                    <?php 
                        $res = mysqli_query($conn,$sql);
                        $count = mysqli_num_rows($res);
                        if($count>0){
                            if($res==true){
                                while($rows = mysqli_fetch_assoc($res)){
                                    $id = $rows['id'];
                                    $tieude=$rows['tieude'];
                                    $mota =$rows['mota'];
                                    $gia=$rows['gia'];
                                    $hinhanh = $rows['hinhanh'];
                                    $noibat =$rows['noibat'];
                                    $active=$rows['active'];
                                    ?>
                                        <div class="col-md-6">
                                            <div class="drink-menu-box">
                                                <div class="drink-menu-img">
                                                    <img src="images/drink/<?php echo $hinhanh;?>" class="img-responsive img-curve">
                                                </div>
                                                <div class="drink-menu-desc">
                                                    <h4><?php echo $tieude;?></h4>
                                                    <p class="drink-price"><?php echo $gia ?>đ</p>
                                                    <p class="drink-detail">
                                                    <?php echo $mota;?>
                                                    </p>
                                                    <a 
                                    <?php 
                                        if (isset($_SESSION['email_dangnhap'])) {
                                            echo "href='order.php?id=$id'";
                                        }else{
                                            echo "onclick='yeucaudangnhap()'";
                                        }
                                    ?> class="btn" name="datngay">Đặt ngay</a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>                                    
                                    <?php
                                }
                            }
                        }else{
                            if($_GET['s'] != ''){
                                echo '<div class="text-center">Không tìm thấy kết quả, quay lại menu <a href="drinks.php" style="color:#ff4d4d;">tại đây</a></div>';
                            }
                        }
                    ?>
                </div>
            </div>

        </section>
        <!-- Drink Menu Section Ends -->
    </main>
    <script>
    function yeucaudangnhap() {
        alert('Bạn phải đăng nhập trước khi đặt hàng');
    }
</script>
    <?php include('footer.php') ?>