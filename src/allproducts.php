<!DOCTYPE>
<?php
 session_start();
 include("functions/functions.php");


?>
<html>
  <head>
      <title>MY online store</title>
	  <link rel="stylesheet" href="styles/style.css" media="all">
  </head>
    <body>
	<!--main wrapper starts-->
	   <div class="main_wrapper">
	   	
		<!--header wrapper starts-->

	     <div class="header_wrapper">
		 <img id="logo" src="images\logo.png">
		 <img id="banner" src="images\banner2.jpg">
		  </div>
		  
		  	<!--header wrapper ends-->

				<!--menubar starts-->

		 <div class="menubar">
		 <ul id="menu">
		   <li><a href="index.php">Home</a><li>
		   <li><a href="allproducts.php">All Products</a><li>
		   <li><a href="register.php">Sign Up</a><li>
		   <li><a href="cart.php">Shopping Cart</a><li>
		   <li><a href="contact_us.php">Contact Us</a><li>
		 
		 </ul>
		 <div id="form">
		 <form method="get" action="results.php" enctype="multipart/form-data">
		 <input id="text" type="text" placeholder="search item" name="user_query">
         <input id="search" type="submit" value="Search" name="search">		 
		 </form>
		 
		 </div>
		 
		 </div>
		 
		 	<!--menubar ends-->

			
				<!--content wrapper starts-->

		 <div class="content_wrapper">
		 
		 <div id="sidebar">
		 
		 <div id="sidebar-title">CATEGORIES</div>
		 
		 <ul id="cats">
		 
		 <?php getcats(); ?>
		 
       </ul>
	   
	   <div id="sidebar-title">BRANDS</div>
		 
		 <ul id="cats">
		 
		<?php getbrands(); ?>
       </ul>
	</div>
	 
	 <div id="content_area">
	 
        <?php 
		  
		  if(isset($_GET['add_cart'])){
		 
		  
		   
		   $ip = getIp();
		   
		   
		   $pro_id = $_GET['add_cart'];
		 
		    $check_pro = "select * from cart where ip_add='$ip' AND pii_id='$pro_id'";
			
			$run_check = mysqli_query($con,$check_pro);
			
			if(mysqli_num_rows($run_check)>0){
				
				
				echo"<script>
				alert('item   already exist in the cart');
				window.open('index.php','_self');
				</script>
				";
				
			}
		else{
				$insert_pro = "insert into cart(pii_id,ip_add) values('$pro_id','$ip')";
				
				$run_pro = mysqli_query($con,$insert_pro);
				
				echo"<script>
				alert('item added to the cart');
				window.open('index.php','_self');
				</script>
				";
				
				
			
		}
		 
		 
	 }
 

		?>
	 
	 <div id="shopping_cart">
	       <span style="float:right;font-size:18px;padding:5px;line-height:35px;">
		   
		    <?php 
		      if(isset($_SESSION['customer_email']))
			  {
				  
				  echo "<b style='color:darkturquoise;font-size:26px'>Welcome:-</b>"."  ".$_SESSION['customer_email'];
				  
			  }
		   else{
			   
			   echo "<b>Welcome Guest!!</b>";
		   }
		      
			  ?>
		  
		    <b style="color:yellow">Shopping Cart- </b>Total Items:<?php total_items(); ?>  Total Price: <?php total_price(); ?> <a href="cart.php" style="color:red;text-decoration:none">Go to Cart</a>
		     
		   
		 </span>
	 </div>
		 <div id='products_box'>
		   <?php
		     $get_pro = "select * from products";
                                                               
															   
 $run_pro = mysqli_query($con,$get_pro);
                                                                    
while($row_pro = mysqli_fetch_array($run_pro)){
	      
	      $pro_id = $row_pro['p_id'];
		  $pro_cat = $row_pro['p_category'];
	      $pro_price = $row_pro['p_price'];
	      $pro_brand = $row_pro['p_brand'];                
	      $pro_image = $row_pro['p_image'];
	      $pro_title = $row_pro['p_title'];
		   
        echo "
		      <div id='single_product'>
	                <h3 id='title'>$pro_title</h3>
					<img src='admin_area/product_images/$pro_image' width='230'  height='230'>
					<p id='title1'><b>Price: $$pro_price</b></p>
	                  <a href='details.php?pro_id=$pro_id' id= 'details' style='text-decoration:none;float:left;font-size:18px'>Details</a>
					  <a href='allproducts.php?add_cart=$pro_id'><button style='float:right' >Add to cart</button></a>
	           </div>
	           ";
      }	  
		   ?>
		 
		 </div>
		 
		 </div>
		 </div>
		 	<!--content wrapper ends-->
     
		
		 <div id="footer"><h2>&copy;2014 by www.shopnix.com</h2></div>

		 </div>
	   	<!--main wrapper ends-->

	</body>
</html>