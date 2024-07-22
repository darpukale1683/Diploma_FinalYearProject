<?php

session_start();
include('includes/db.php');
include('functions/functions.php');

?>


<?php

if(isset($_GET['c_id'])){

    $customer_id=$_GET['c_id'];
}

$user_ip=getIPAddress();

$total=0;

$fetxchcart="select * from cart where ip_add='$user_ip'  ";
$runfetcart= mysqli_query($conn,$fetxchcart);

$status='pending';

$invoice_no= mt_rand();

$count_pro=mysqli_num_rows($runfetcart);

while($records=mysqli_fetch_array($runfetcart)){
    $p_ID=$records['p_ID'];

    $herin="select * from products where product_ID='$p_ID'";
$runcart=mysqli_query($conn,$herin);

while($cartherin=mysqli_fetch_array($runcart)){
    $pro_id=$cartherin['product_ID'];

    $onlypro_price=$cartherin['product_price'];


    $pro_price= array($cartherin['product_price']);
    $value= array_sum($pro_price) ;
    $total +=$value;

}}

// getting quantity :::::


$get_cart="select * from cart where ip_add='$user_ip'";

$run_getcart=mysqli_query($conn,$get_cart);

$get_qtyy=mysqli_fetch_array($run_getcart);

$status='pending';
$qtyo=$get_qtyy['qty'];

if($qtyo==0){
    $qtyo=1;

    $subtotal=$total;
}
else{
    $qtyo=$qtyo;
    $subtotal=$total*$qtyo;
}

$insert_orders="INSERT INTO `customer_order`( `customer_id`, `due_amount`, `invoice_no`, `total_products`, `order_date`, `order_status`,`product_id`) 
VALUES ('$customer_id','$subtotal','$invoice_no','$count_pro',NOW(),'$status','$pro_id')";

$run_order=mysqli_query($conn,$insert_orders);


if($run_order)
{

    echo "<script>alert('order successfully submitted')</script>";
    header('location:customer/my-account.php');

    $empty_cart="delete from cart where ip_add='$user_ip'";
    $run_empty=mysqli_query($conn,$empty_cart);

    $insert_to_pending_orders="INSERT INTO `pending_orders`(`customer_id`, `invoice_no`, `product_id`, `qty`, `order_status`) 
    VALUES ('$customer_id','$invoice_no','$p_ID','$qtyo','$status')";

    $run_pending=mysqli_query($conn,$insert_to_pending_orders);
}



?>