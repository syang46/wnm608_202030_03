<?php

include_once "../lib/php/functions.php";

$output = [];

$data = json_decode(file_get_contents("php://input"));

if(!isset($data->type)) {
	$output['error'] = "No Type";
} else switch ($data->type) {
	case 'product_all':
		$output['result'] = getRows(makeConn(), "SELECT * FROM `products` LIMIT 12");
		break;
	case 'product_search':
		$output['result'] = getRows(makeConn(), 
			"SELECT * FROM `products` 
			WHERE 
				`title` like '%$data->search%' OR
				`description` like '%$data->search%'
			ORDER BY `date_create` DESC
			LIMIT 20
		");
		break;
	case 'product_filter':
		$output['result'] = getRows(makeConn(), 
			"SELECT * FROM `products` 
			WHERE `$data->column` like '%$data->value%'
			ORDER BY `date_create` DESC
			LIMIT 20
		");
		break;
	case 'product_sort':
		$output['result'] = getRows(makeConn(), 
			"SELECT * FROM `products` 
			ORDER BY `$data->column` $data->dir
			LIMIT 20
		");
		break;
	default:
		$output['error'] = "Didn't Match Type";
}


echo (json_encode(
	$output,
	JSON_UNESCAPED_UNICODE|
	JSON_NUMERIC_CHECK
))

?>
