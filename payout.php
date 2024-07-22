<?php

session_start();

include('includes/db.php');
include('functions/functions.php');
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
    <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
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
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand"  href= "#"><img src="images/logo.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item active"><a class="nav-link" href="index.php">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.php">About Us</a></li>
                
                        <li class="nav-item"><a class="nav-link" href="category.php">category</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact-us.php">Contact Us</a></li>

                        <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">memu</a>
                            <ul class="dropdown-menu">
                                <li><a href="cart.php">Cart</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="my-account.html">My Account</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul>
                        <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                       
                    </ul>
                </div>
                <!-- End Atribute Navigation -->
            </div>
          
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

    



    <!-- Start Cart  -->
    <div class="cart-box-main">
        <div class="container">
           
            <div class="row">
                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="checkout-address">
                        <div class="title-left">
                            <h3>Billing address</h3>
                        </div>

 <?php

$c_ip=getIPAddress();

$cc_pp=$_SESSION['customer_email'];

$c_details= "select * from customer where customer_email='$cc_pp'";

$run_customer=mysqli_query($conn,$c_details);

while($fetch_customer=mysqli_fetch_array($run_customer)){
    $customer_name=$fetch_customer['customer_name'];
    $customer_email=$fetch_customer['customer_email'];
    $customer_address=$fetch_customer['customer_address'];
    $customer_state=$fetch_customer['customer_state'];
    $customer_city=$fetch_customer['customer_city'];

}
?>
                                         
                            <div class="mb-3">
                                <label for="username">Username *</label>
                                <div class="input-group">
                                    <p class="form-control" id="username"  ><?php echo $customer_name ; ?> </p>
                                    
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="email">Email Address *</label>
                                <p class="form-control" id="email" ><?php echo $customer_email ?></p>
                                
                            </div>

                            <?php

                           
   
if(isset($_POST['update'])){

    $newaddress=$_POST['newaddress'];
    $newcity=$_POST['newcity'];
    $newstate=$_POST['newstate'];
    
        
       $updatecustomer="UPDATE `customer` SET `customer_state`=' $newstate',`customer_city`='$newcity',`customer_address`='$newaddress' WHERE customer_email='$cc_pp' ";
$runnewdetail=mysqli_query($conn, $updatecustomer);

}


?>
                <form class="needs-validation" action="" method="POST" novalidate>
                            <div class="mb-3">
                                <label for="address">Address *</label>
                                <input type="text" name="newaddress" class="form-control" id="address" placeholder="<?php echo $customer_address ; ?>" required>
                                
                            </div>

                            <div class="row">
                                <div class="col-md-5 mb-3">
                                    <label for="state">State *</label>
                                    <input type="text" name="newstate" class="form-control" id="state" placeholder="<?php echo $customer_state ; ?>" required>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label for="city">City *</label>
                                  
                                    <input type="text" name="newcity" class="form-control" id="city" placeholder=" <?php echo $customer_city ; ?>" required>
						
                                </div>
                                <div class="col-12 d-flex shopping-box"> <input name="update" type="submit" value="update details"  class="ml-auto btn hvr-hover" placeholdr="update details"></div>
                            </div>
                            <hr class="mb-4">
                </form> 

                            
              
                           
                            
                                
                    </div>
                </div>

                <div class="col-sm-6 col-lg-6 mb-3">
                    <div class="row">
                        <div class="col-md-12 col-lg-12">
                            <div class="shipping-method-box">
                                <div class="title-left">
                                    <h3>Shipping Method</h3>
                                </div>
                                <div class="mb-4">
                                    <div class="custom-control custom-radio">
                                        <input id="shippingOption1" name="shipping-option" class="custom-control-input" checked="checked" type="radio">
                                        <label class="custom-control-label" for="shippingOption1">Standard Delivery</label> <span class="float-right font-weight-bold">FREE</span> </div>
                                    
                                 
                            </div>
                        </div>
                
                   
                      
                          
                                <div class="title-left">
                                    <h3>payment Method</h3>
                                </div>
                                <div class="mb-4">
                                    <div class="custom-control custom-radio">
                                        <input id="shippingOption1" name="payment-option" class="custom-control-input" checked="checked" type="radio">
                                        <label class="custom-control-label" for="shippingOption1">cash on delivery</label>  </div>
                                    
                                
</div>
                       
                        

                        <div class="col-md-12 col-lg-12">
                            <div class="odr-box">
                            <div class="title-left">
                                    <h3>Shopping cart</h3>
                                </div>
                                <div class="rounded p-2 bg-light">
                            <?php

$user_id=getIPAddress();

$total=0;

$fetxchcart="select * from cart where ip_add='$user_id'";
$runfetcart= mysqli_query($conn,$fetxchcart);
while($record=mysqli_fetch_array($runfetcart)){
    $Proid=$record['p_ID'];
    $proqty=$record['qty'];

$herin="select * from products where product_ID='$Proid'";
$runcart=mysqli_query($conn,$herin);

while($cartherin=mysqli_fetch_array($runcart)){
    $pro_id=$cartherin['product_ID'];
    $pro_title=$cartherin['product_title'];
    

    $onlypro_price=$cartherin['product_price'];



    $pro_price= array($cartherin['product_price']);
    $value= array_sum($pro_price);
    $total +=$value;

$ger=$total* $proqty;

    ?>
                               
                                
                                    <div class="media mb-2 border-bottom">
                                        <div class="media-body"> <a href="detail.html"> <?php echo $pro_title ; ?></a>
                                            <div class="small text-muted">Price: <?php echo $onlypro_price ; ?><span class="mx-2">|</span> Qty: <?php 
                                            
                                            if($proqty==0){
                                                echo "1";
                                            }
                                         else{
                                            echo $proqty ;
                                         } ?>  </div>
                                        </div>
                                        
                                    </div>
                                    <?php }} ?>
                              
                                 
                                </div>
                            </div>
</div>
</div>
</div>
                        <div class="col-md-12 col-lg-12">
                            <div class="order-box">
                                <div class="title-left">
                                    <h3>Your order</h3>
                                </div>
                                <div class="d-flex">
                                    <div class="font-weight-bold">Product</div>
                                    <div class="ml-auto font-weight-bold">Total</div>
                                </div>
                                <hr class="my-1">
                                <div class="d-flex">
                                    <h4>Sub Total</h4>
                                    <div class="ml-auto font-weight-bold"> <?php echo $ger ; ?> </div>
                                </div>
                             
                             
                                <div class="d-flex">
                                    <h4>Tax</h4>
                                    <?php
                               $gst=8;
            

                             

                               $gra=$ger*8/100;

                               $gratoto=$gra+$ger;
                              
                               ?>
                                    <div class="ml-auto font-weight-bold"> <?php echo  $gst ."%   " ;?> </div>
                                </div>
                                <div class="d-flex">
                                    <h4>Shipping Cost</h4>
                                    <div class="ml-auto font-weight-bold"> Free </div>
                                </div>
                                <div class="d-flex">
                                    <h4>Payment Method</h4>
                                    <div class="ml-auto font-weight-bold"> Cash On Delivery </div>
                                </div>
                                <hr>
                                <div class="d-flex gr-total">
                                    <h5>Grand Total</h5>
                                    <div class="ml-auto h5"> <?php echo $gratoto ; ?> </div>
                                </div>
                                <hr> </div>
                        </div>


                        <?php

$customer_id=getIPAddress();

$fetchcart="select * from customer where customer_ip='$customer_id'";

$runfetchcart=mysqli_query($conn,$fetchcart);

$fetchfromcustomer=mysqli_fetch_array($runfetchcart);

$c_id=$fetchfromcustomer['customer_id'];


                        ?>
                        <div class="col-12 d-flex shopping-box"> <a href="order.php" name="placeorder" class="ml-auto btn hvr-hover">Place Order</a> </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- End Cart -->



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
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
							<ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
						</div>
					</div>

					<div class="col-lg-4 col-md-12 col-sm-12"></div>

				</div>
			
                <div class="row">
                    
                    <div class="col-lg-4 col-md-12 col-sm-12"></div>


                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>About Freshshop</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> 
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p> 							
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