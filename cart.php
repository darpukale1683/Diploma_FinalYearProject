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

    <style>

.btncart{
    border:none;
    background-color:black;
    color:white;
}

.btncart:hover{
    background-color:#b0b435;
    cursor: pointer;
}
</style>
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
                                
                                echo "href='cart.php'";
                                  
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
                    <a class="navbar-brand" href="index.html"><img src="images/logo1.png" class="logo" style="background-color:transparent;" alt=""></a>
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
                     
                    </ul>
                </div>
                <!-- End Atribute Navigation -->
            </div>
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
                <div class="col-lg-12">
                    <div class="table-main table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Images</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>update qty</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>

                   

<?php

$user_id=getIPAddress();

$total=0;

$fetxchcart="select * from cart where ip_add='$user_id'  ";
$runfetcart= mysqli_query($conn,$fetxchcart);
while($record=mysqli_fetch_array($runfetcart)){
    $Proid=$record['p_ID'];

    $proqty=$record['qty'];

 

$herin="select * from products where product_ID='$Proid'";
$runcart=mysqli_query($conn,$herin);

while($cartherin=mysqli_fetch_array($runcart)){
    $pro_id=$cartherin['product_ID'];
    $pro_title=$cartherin['product_title'];
    $pro_img=$cartherin['product_img1'];

    $onlypro_price=$cartherin['product_price'];

    

    $pro_price= array($onlypro_price);
    $value= array_sum($pro_price) ;
    $total +=$value;

    
    ?>
    
<?php

if(isset($_POST['upcart'])){
    $qtys=$_POST['qty'];


    $dess="UPDATE `cart` SET `qty`='$qtys' WHERE ip_add='$user_id' and p_ID='$pro_id'";
    $rui=mysqli_query($conn,$dess);

    if($qtys==0){
        $total= $total*1;
    }
    else{
        $total = $total*$qtys;
    }
    
}

?>

                            <tbody>
                                <tr>
                                    <td class="thumbnail-img">
                                        <a href="#">
									<img class="img-fluid" src="admin_area/product_images/<?php echo $pro_img ; ?>" alt="" />
								</a>
                                    </td>
                                    <td class="name-pr">
                                        <a href='detail.php?cartdelpro_id=<?php echo $pro_id ?>'>
									<?php echo   $pro_title ;?>
								</a>
                                    </td>
                                    <td class="price-pr">
                                        <p><?php echo  $onlypro_price ;?></p>
                                    </td>


                                    <form action="cart.php" method="POST">
                                    <td class="quantity-box"><input type="number" name="qty" value="<?php 
                                    
                                    if($proqty==0){
                                        echo "1";
                                    }

                                    else{
                                    echo $proqty; 
                                    }?>" class="c-input-text qty text">


<td>
                
<div class="update-box">                   
<a href="cart.php?B_id=<?php echo $pro_id ; ?>"><input type="submit" class="btncart" name="upcart" value="Update qty"></a>
 </div>

</td>
</form>




<form action="cart.php" method="POST">
                                   
                                    <td class="remove-pr">
                                    <input type="checkbox" name="remove[]" value="<?php echo $pro_id ; ?>">
                                    <?php }} ?>
                                    </td>
                                </tr>
                            </tbody>
                       
                           


            </table>
           
                    </div>
                </div>
            </div>
            
            <div class="row my-5">
                <div class="col-lg-6 col-sm-6">
                    <div class="coupon-box">
                       
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="update-box">
                       
                        <input type="submit" name="update" value="Update Cart" type="submit">
                        </form>

                        
                    </div>
                </div>
            </div>

            <?php

function cartfunctoerror(){
    global $conn;
if(isset($_POST['update'])){
    
       foreach($_POST['remove'] as $remove_id)
       {
           
        $herinn="delete from cart where p_ID='$remove_id'";
        $remresult=mysqli_query($conn,$herinn);

        if($remresult){
            echo "<script>window.open('cart.php','_self')</scirpt>";
        }
       }


}
}

echo @$herinbhat=cartfunctoerror();
            ?>
           

            <div class="row my-5">
                <div class="col-lg-8 col-sm-12"></div>
                <div class="col-lg-4 col-sm-12">
                    <div class="order-box">
                        <h3>Order summary</h3>
                        <div class="d-flex">
                            <h4>Sub Total</h4>
                            <div class="ml-auto font-weight-bold"> <?php echo  $total; ?>
                               <?php
                               $gst=8;
            

                             

                               $gra=$total*8/100;

                               $gratoto=$gra+$total;
                              
                               ?> </div>
                        </div>
                            
                        <div class="d-flex">
                            <h4>Tax</h4>
                            <div class="ml-auto font-weight-bold"> <?php echo  $gst ."%   " ;?> </div>
                        </div>
                        <div class="d-flex">
                            <h4>Shipping Cost</h4>
                            <div class="ml-auto font-weight-bold"> FREE </div>
                        </div>
                        <hr>
                        <div class="d-flex gr-total">
                            <h5>Grand Total</h5>
                            <div class="ml-auto h5"> 
                             <?php

                              echo  $gratoto;
                             ?>
                            </div>
                        </div>
                        <hr> </div>
                </div>
                <div class="col-12 d-flex shopping-box"><a href="checkout.php" class="ml-auto btn hvr-hover">Checkout</a> </div>
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
							<p>check out some more information about locamart on our social media pages.</p>
							<ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                           
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