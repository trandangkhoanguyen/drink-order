<?php include('header.php')
?>

<main class="main_drink">
    <!-- Drink Search Section Starts -->
    <section class="drink-search text-center">
        <div class="container">
            <form action="drink-search.php" method="GET">
                <div>
                    <input type="text" name="s" placeholder=" Tìm kiếm thức uống..." >
                    <input type="submit" class="timkiem1"  value="Tìm kiếm" name="search">
                </div>
            </form>
        </div>
    </section>
    <!-- Drink Search Section Ends -->
    <!-- Drink Menu Section Starts -->
    <section class="drink-menu">
        <div class="container list-drink">
            <h2 class="text-center">Menu thức uống</h2>
            <?php
            if (isset($_SESSION['dathang'])) {
                echo $_SESSION['dathang'];
                unset($_SESSION['dathang']);
            }
            ?>
            <div class="row">

                <?php
                $sql = "SELECT * FROM thucuong where active='Còn hàng'";
                $res = mysqli_query($conn, $sql);
                if ($res == true) {
                    while ($rows = mysqli_fetch_assoc($res)) {
                        $id = $rows['id'];
                        $tieude = $rows['tieude'];
                        $mota = $rows['mota'];
                        $gia = $rows['gia'];
                        $hinhanh = $rows['hinhanh'];
                        $noibat = $rows['noibat'];
                        $active = $rows['active'];
                ?>
                        <div class="col-md-6">
                            <div class="drink-menu-box">
                                <div class="drink-menu-img">
                                    <img src="images/drink/<?php echo $hinhanh; ?>" class="img-responsive img-curve">
                                </div>
                                <div class="drink-menu-desc">
                                    <h4><?php echo $tieude; ?></h4>
                                    <p class="drink-price"><?php echo $gia ?>đ</p>
                                    <p class="drink-detail">
                                        <?php echo $mota; ?>
                                    </p>
                                    <a <?php
                                        if (isset($_SESSION['email_dangnhap'])) {
                                            echo "href='order.php?id=$id'";
                                        } else {
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
                ?>

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