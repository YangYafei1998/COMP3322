<?php
	$conn=mysqli_connect('sophia.cs.hku.hk','yfyang','wsyyf199') or die ('Failed to Connect '.mysqli_error($conn));
	
	mysqli_select_db($conn, 'yfyang') or die ('Failed to Access DB'.mysqli_error($conn));

	$category = $_GET['category'];
	$page = (int)$_GET['page'];


	$countQuery= "SELECT COUNT(*) FROM `catalog` WHERE itemCategory='".$category."'";
	$countResult = mysqli_query($conn,$countQuery) or die('Error_1!'. mysqli_error($conn));
	$count = mysqli_fetch_array($countResult)[0];
	$mod = $count % 3;
	$numOfPages = ($count-$mod)/3;

	if ($category == 'Books') {
		$startId = ($page*3)-2;
		$endId = $page*3;
	}elseif ($category == 'Electric Appliances') {
		$startId = ($page*3)-2+9;
		$endId = $page*3+9;
	}elseif ($category == 'Baverage') {
		$startId = ($page*3)-2+18;
		$endId = $page*3+18;
	}
	$query = "SELECT * FROM `catalog` WHERE itemID Between ".$startId." AND ".$endId;
 	$result = mysqli_query($conn,$query) or die('Error_2!'. mysqli_error($conn));

 	$response_array=array();
 	$items_array=array();
 	$response_array['numOfPages'] = $numOfPages;
 	
 	while($row = mysqli_fetch_array($result)) {
 		$items_array[]=array('itemID' => $row['itemID'], 'itemImage' => $row['itemImage'],'itemName' => $row['itemName'], 'itemPrice' => $row['itemPrice'], 'itemDescription' => $row['itemDescription'] );
 	}
 	$items_sub_array=array();
 	foreach ($items_array as $key => $row) {
 		$items_sub_array[$key]=$row['itemName'];
 	}
 	array_multisort($items_sub_array, SORT_ASC, $items_array);
 	$response_array['items']=$items_array;
 	
 	print json_encode($response_array);


?>