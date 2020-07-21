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
	 
	  <?php get_cart(); ?>
	 
	 <div id="shopping_cart">
	       <span style="float:right;font-size:18px;padding:5px;line-height:35px;">
		  
		   <?php 
		      if(isset($_SESSION['customer_email']))
			  {
				  
				  echo "<b>Welcome</b>"."  ".$_SESSION['customer_email'];
				  
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
		     if(!isset($_SESSION['customer_email'])){
				 
				 include("login.php");
				 
			 }
			 else{
				 
				 include("payment.php");
			 }
		   ?>
		 
		 </div>
		 
		 </div>
		 </div>
		 	<!--content wrapper ends-->

		
		 <div id="footer">
		 <h2>&copy;2014 by www.shopnix.com</h2>
		 </div>

		 </div>
	   	<!--main wrapper ends-->

	   
	</body>
</html>