<?php
session_start();
$itemID=$_GET['itemID'];
$updateNumber=$_GET['updateNumber'];
	if (!isset($_SESSION["shoppingCart"])) {
		$_SESSION["shoppingCart"]=array();
	} 
	if ($itemID == "0"){
		print array_sum($_SESSION["shoppingCart"]);
	} else if ($itemID == "-1") {
		unset($_SESSION["shoppingCart"]);
	} else {
		if (array_key_exists($itemID, $_SESSION["shoppingCart"])) {
			$newCount = $updateNumber + $_SESSION["shoppingCart"][$itemID];
			if ($newCount==0){
					unset($_SESSION["shoppingCart"][$itemID]);
				} else {
					$_SESSION["shoppingCart"][$itemID]=$newCount;
				}
		} else {
			$_SESSION["shoppingCart"][$itemID]=$updateNumber;
		}
		print array_sum($_SESSION["shoppingCart"]);
	}
?>