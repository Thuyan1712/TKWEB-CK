<?php 
	if(isset($_GET['act'])){$act=$_GET['act'];}else{$act="";}
	switch($act)
	{
		case "home":
		    require_once("home.php");
        break;
        case "gioithieu":
		    require_once("gioithieu.php");
        break;
        case "lienhe":
		    require_once("lienhe.php");
        break;
        case "sanpham":
		    require_once("sanpham.php");
        break;
		case "list-sanpham":
		    require_once("list-sanpham.php");
        break;
		case "list-sanphamDM":
		    require_once("list-sanphamDM.php");
        break;
		case "cart":
			require_once("cart.php");
        break;
		case "chitiet-sp":
			require_once("chitiet-sp.php");
        break;
        default:
			require_once('home.php');
		break;

	}
?>
