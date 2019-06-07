<?php
	$conn=mysqli_connect('sophia.cs.hku.hk','yfyang','wsyyf199') or die ('Failed to Connect '.mysqli_error($conn));
	
	mysqli_select_db($conn, 'yfyang') or die ('Failed to Access DB'.mysqli_error($conn));

	if ($_GET['show']=="all") {
 		$query = "SELECT DISTINCT itemCategory FROM `catalog` ";
 	} 

 	$item_array=array();
 	$result = mysqli_query($conn,$query) or die('Error!'. mysqli_error($conn));
 	$index = 0;
 	while($row = mysqli_fetch_array($result)) {
 		$item_array[$index] = $row[0];
 		$index++;
 	}
 	sort($item_array);
  	print json_encode($item_array);
?>