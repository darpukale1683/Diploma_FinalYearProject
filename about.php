<?php
include('includes/db.php');
include('functions/functions.php');
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>Freshshop - Ecommerce Bootstrap 4 HTML Template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <!-- Start Main Top -->
    <div class="main-top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				
                  
                    <div class="our-link">
                        <ul>
                            <li><a href="customer/my-account.php"><i class="fa fa-user s_color"></i> My Account</a></li>
                            <li><a 
                            <?php
                              if(!isset($_SESSION['customer_email']))
                              {
                                  echo "href='customer_login.php'";
                              }
                              else{
                                
                                echo "href='about.php'";
                                  
                              }
                            ?>
                            ><i class="fa-solid fa-file-user"></i> login</a></li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- End Main Top -->

    <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="index.php"><img src="images/logo1.png" class="logo" style="background-color:transparent;" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="index.php">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.php">About Us</a></li>
                
                        <li class="nav-item"><a class="nav-link" href="category.php">category</a></li>

                        <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">memu</a>
                            <ul class="dropdown-menu">
                                <li><a href="cart.php">Cart</a></li>
                                <li><a href="customer/my-account.php">My Account</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                        <li class="side-menu">
							<a href="#">
								<i class="fa fa-shopping-bag"></i>
								<span class="badge"><?php cartno() ?></span>
								<p>My Cart</p>
							</a>
						</li>
                    </ul>
                </div>
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->

            <div class="side">
                <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                <li class="cart-box">
                    <ul class="cart-list">

                    <?php

$user_id=getIPAddress();

$total=0;

$fetxchcart="select * from cart where ip_add='0'";
$runfetcart= mysqli_query($conn,$fetxchcart);
while($record=mysqli_fetch_array($runfetcart)){
    $Proid=$record['p_ID'];

$herin="select * from products where product_ID='$Proid'";
$runcart=mysqli_query($conn,$herin);

while($cartherin=mysqli_fetch_array($runcart)){
    $pro_id=$cartherin['product_ID'];
    $pro_title=$cartherin['product_title'];
    $pro_img=$cartherin['product_img1'];

    $onlypro_price=$cartherin['product_price'];

    $pro_price= array($cartherin['product_price']);
    $value= array_sum($pro_price);
    $total +=$value;


    ?>
                        <li>
                            <a href="#" class="photo"><img src="admin_area/product_images/<?php echo $pro_img ; ?>" class="cart-thumb" alt="" /></a>
                            <h6><a href="#"><?php echo $pro_title ; ?> </a></h6>
                            <p>1x - <span class="price"><?php echo $onlypro_price ; ?></span></p>
                        </li>

                        <?php }} ?>
                        <li class="total">
                            <a href="cart.php" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                            <span class="float-right"><strong>Total</strong>:<?php echo  $total;?></span>
                        </li>
                    </ul>
                </li>
            </div>
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
        <form action="result.php" method="GET">
            <div class="input-group">
                <input type="text" name="search" class="form-control" placeholder="Search" required>
                <button style='cursor:pointer;' class="input-group-addon"><i class="fa fa-search"></i></button>
            </div>
            </form>
        </div>
    </div>
    <!-- End Top Search -->

   
    <!-- Start About Page  -->
    <div class="about-box-main">
        <div class="container">
            <div class="row">
				
            <div class="row my-4">
                <div class="col-12">
                    <h2 class="noo-sh-title">Meet Our Team</h2>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/dimple.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Dimple</h3> <span class="post">Web Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="https://instagram.com/dimpllee19?igshid=YmMyMTA2M2Y=" class="fab fa-instagram"></a>
                                </li>
                        

                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate. </p> -->
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/vajeda.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Vajeda</h3> <span class="post">Web Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="https://instagram.com/vajeda_01?igshid=YmMyMTA2M2Y=" class="fab fa-instagram"></a>
                                </li>
                          

                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true" ></i> </div>
                        </div>
                        <div class="team-description">
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate. </p> -->
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/herin.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">herin</h3> <span class="post">Web Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="https://instagram.com/herin_bhatt?igshid=YmMyMTA2M2Y=" class="fab fa-instagram"></a>
                                </li>
                         
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate. </p> -->
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="images/venus.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">venus</h3> <span class="post">Web Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="https://instagram.com/khiraiyavenus?igshid=YmMyMTA2M2Y=" class="fab fa-instagram"></a>
                                </li>
                        
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate. </p> -->
                        </div>
                        <hr class="my-0"> </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End About Page -->


  
    <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-sm-12">
						
					</div>
					<div class="col-lg-4 col-md-12 col-sm-12">
					
                        <div class="footer-top-box">
							<h3>Social Media</h3>
							<p>check out some more information about locamart on our social media pages.</p>
							<ul>
                                <li><a href="https://m.facebook.com/bookmarks/"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="https://instagram.com/dimpllee19?igshid=YmMyMTA2M2Y="><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                            </ul>
						</div>
					</div>

					<div class="col-lg-4 col-md-12 col-sm-12"></div>

				</div>
			
                <div class="row">
                    
                    <div class="col-lg-4 col-md-12 col-sm-12"></div>


                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>About locamart</h4>
                            <p>locamart is a online shopping website for urban and rural handicraft all over handicraft all over gujarat state </p> 
							<p>we develop this website with the aim of uplifting the handicraft item for small scale industries of which people have forgot the importance. </p> 							
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->



    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/inewsticker.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/baguetteBox.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>