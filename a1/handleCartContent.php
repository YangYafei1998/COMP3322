<?php
session_start();
$conn=mysqli_connect('sophia.cs.hku.hk','yfyang','wsyyf199') or die ('Failed to Connect '.mysqli_error($conn));
mysqli_select_db($conn, 'yfyang') or die ('Failed to Access DB'.mysqli_error($conn));
	$cartContent=array();
	foreach ($_SESSION["shoppingCart"] as $key => $value) {
		$query = "select * from catalog where itemID='".$key."'";
		$result = mysqli_query($conn,$query) or die('Error!'. mysqli_error($conn));
		$row = mysqli_fetch_array($result);
		$cartContent[]=array('itemID'=>$key, 'quantity'=>$value, 'itemImage' => $row['itemImage'],'itemName' => $row['itemName'], 'itemPrice' => $row['itemPrice'], 'itemDescription' => $row['itemDescription']);
	}
	print json_encode($cartContent);

?>