<?php
 $con = mysqli_connect("localhost","root","","ecommerce");
 
 //getting the ip address of the user
 function getIp() {
    $ip = $_SERVER['REMOTE_ADDR'];
 
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    }
 
    return $ip;
}

  
 //adding items into the cart
 function get_cart(){
	  global $con;
	 
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
 }	
	
	//getting total items in the cart
	
	function total_items(){
		
		
		
		if(isset($_GET['add_cart'])){
			global $con;
			
			$ip = getIp();
			
			$item_query = "select * from cart where ip_add = '$ip'";
			
			$run_query = mysqli_query($con,$item_query);
			
			$count_items = mysqli_num_rows($run_query);
			
		}
		else{
			global $con;
			
			$ip = getIp();
			
			$item_query = "select * from cart where ip_add = '$ip'";
			
			$run_query = mysqli_query($con,$item_query);
			
			$count_items = mysqli_num_rows($run_query);
			
			
		}
		
		echo "$count_items";
		
		
		
	}
	
	//getting the total price of the items in the cart
	
	function total_price(){
		
		$total =0;
		
		global $con;
		
		$ip = getIp();
		
		$create_query = "select * from cart where ip_add = '$ip'";
		
		$run_query = mysqli_query($con,$create_query);
		
		while($price = mysqli_fetch_array($run_query)){
			
			$pro_id = $price['pii_id'];
			
			$price_query = "select * from products where p_id = '$pro_id'";
			
			$price_run_query = mysqli_query($con,$price_query);
			
			while($pp_price = mysqli_fetch_array($price_run_query))
			{
				$final_price = array($pp_price['p_price']);
				
				$total_price = array_sum($final_price);
				
				$total += $total_price;
				
				
			}
		}
		
		
		 echo "$".$total;
		
	}
	
 
 //getting the categories
 
 function getcats(){
	 
	 global $con;
	 
	 $get_cats = "select * from categories";
	 
	 $run_cats = mysqli_query($con,$get_cats);
	 
	 while($row_cats = mysqli_fetch_array($run_cats))
	 {
		 
		 $cat_id = $row_cats['cat_id'];
		 $cat_title = $row_cats['cat_title'];
		 
		 echo "<li><a href='index.php?cat=$cat_id'>$cat_title</a></li>";
	 }
	 
 }
 ?>
 
 <?php
 $con = mysqli_connect("localhost","root","","ecommerce");
 
 //getting the brands
 
 function getbrands(){
	 
	 global $con;
	 
	 $get_brands = "select * from brands";
	 
	 $run_brands = mysqli_query($con,$get_brands);
	 
	 while($row_brands = mysqli_fetch_array($run_brands))
	 {
		 
		 $brand_id = $row_brands['brand_id'];
		 $brand_title = $row_brands['brand_title'];
		 
		 echo "<li><a href='index.php?brand=$brand_id'>$brand_title</a></li>";
	 }
	 
 }
 ?>
 <?php

   
   function get_pro(){
	         if(!isset($_GET['cat'])){
				 if(!isset($_GET['brand'])){
			
	  global $con;
     $get_pro = "select * from products LIMIT 0,6";
                                                               
															   
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
					<p id='title1'><b>Price :$$pro_price</b></p>
	<a href='details.php?pro_id=$pro_id' id= 'details' style='text-decoration:none;float:left;font-size:18px'>Details</a>
	<a href='index.php?add_cart=$pro_id'><button style='float:right'>Add to cart</button></a>
	           </div>
	           ";
      }	  
				 }
			 }
	     }
?>

<?php

   
   function get_cat_pro(){
	         if(isset($_GET['cat'])){
				 
			$get_cat= $_GET['cat'];
	      global $con;
     $get_cat_pro = "select * from products where p_category = '$get_cat'";
                                                               
															   
     $run_cat_pro = mysqli_query($con,$get_cat_pro);
                                                                    
while($row_cat_pro = mysqli_fetch_array($run_cat_pro)){
	      
	      $pro_id = $row_cat_pro['p_id'];
		  $pro_cat = $row_cat_pro['p_category'];
	      $pro_price = $row_cat_pro['p_price'];
	      $pro_brand = $row_cat_pro['p_brand'];                
	      $pro_image = $row_cat_pro['p_image'];
	      $pro_title = $row_cat_pro['p_title'];
		  
        echo "
		      <div id='single_product'>
	                <h3 id='title'>$pro_title</h3>
					<img src='admin_area/product_images/$pro_image' width='230'  height='230'>
					<p id='title1'><b>Price :$$pro_price</b></p>
	                  <a href='details.php?pro_id=$pro_id' style='text-decoration:none','float:left';>Details</a>
					  <a href='index.php?add_cart=$pro_id'><button style='float:right'>Add to cart</button></a>
	           </div>
	           ";
        
				 }
			 }
	     }
?>


<?php

   
   function get_brand_pro(){
	        
	         if(isset($_GET['brand'])){
				 
			$get_brand= $_GET['brand'];
	      global $con;
     $get_brand_pro = "select * from products where p_brand = '$get_brand'";
                                                               
															   
     $run_brand_pro = mysqli_query($con,$get_brand_pro);
                                                                    
while($row_brand_pro = mysqli_fetch_array($run_brand_pro)){
	      
	      $pro_id = $row_brand_pro['p_id'];
		  $pro_cat = $row_brand_pro['p_category'];
	      $pro_price = $row_brand_pro['p_price'];
	      $pro_brand = $row_brand_pro['p_brand'];                
	      $pro_image = $row_brand_pro['p_image'];
	      $pro_title = $row_brand_pro['p_title'];
		  
        echo "
		      <div id='single_product'>
	                <h3 id='title'>$pro_title</h3>
					<img src='admin_area/product_images/$pro_image' width='230'  height='230'>
					<p id='title1'><b>Price :$$pro_price</b></p>
	                  <a href='details.php?pro_id=$pro_id' style='text-decoration:none','float:left';>Details</a>
					  <a href='index.php?pro_id=$pro_id'><button style='float:right'>Add to cart</button></a>
	           </div>
	           ";
        
				 }
			 }
	     }
?>
