<?php

function productListTemplate($r, $o) {
return $r.<<<HTML
	<div class="container">
		<div class="col-4 col-s-4">
			<div class="product-description">
				<a href="product_item.php?id=$o->id">
					<img src="img/little.jpg">
					<div>
						<h2>$o->title</h2>
						<p>&dollar;$o->price</p>
					</div>
				</a>
			</div>
		</div>
	</div>
HTML;
}

function selectAmount($amount=1, $total=10) {
	$output = "<select class='form-input' name='amount'>";
	for($i=1;$i<=$total;$i++) {
		$output .= "<option ".($i==$amount?"selected":"").">$i</option>";
	}
	$output .= "</select>";
	return $output;
}

function cartListTemplate($r, $o) {
$pricefixed = number_format($o->total, 2, '.', '');
$selectamount = selectAmount($o->amount, 10);
return $r.<<<HTML
	<div class="display-flex card-section">
		<div class="flex-none product-thumbs">
			<img src="img/little.jpg">
		</div>
		<div class="flex-stretch">
			<div class="display-flex">
				<div class="flex-stretch">
					<strong>$o->title ($o->amount)</strong>
				</div>
				<div class="flex-none">&dollar;$pricefixed</div>
			</div>
			<div>
				<form method="get" action="data/form_actions.php" onchange="this.submit()">
					<input type="hidden" name="action" value="delete-cart-item">
					<input type="hidden" name="id" value="$o->id">
					<div class="display-flex">
						<div class="flex-none"> 
							<input type="submit" class="button delete" value="delete">
						</div>
					</div>
				</form>
			</div>
			<div>
				<form method="get" action="data/form_actions.php" onchange="this.submit()">
					<input type="hidden" name="action" value="update-cart-amount">
					<input type="hidden" name="id" value="$o->id">
					<div class="display-flex">
						<div class="flex-none"> 
							$selectamount
						</div>
					</div>
				</form>
			</div>

		</div>
	</div>
HTML;
}

function cartTotals() {
$cart = getCartItems();
$cartprice = array_reduce($cart, function($r,$o) {return $r + ($o->amount * $o->price);}, 0);
$pricefixed = number_format($cartprice, 2, '.', '');
$taxfixed = number_format($cartprice*0.0725, 2, '.', '');
$taxedfixed = number_format($cartprice*1.0725, 2, '.', '');

return <<<HTML
	<div class="card-section">
		<div class="display-flex">
			<div class="flex-stretch">
				<strong>Sub-Total</strong>
			</div>
			<div class="flex-none">&dollar;$pricefixed</div>
		</div>
		<div class="display-flex">
			<div class="flex-stretch">
				<strong>Taxes</strong>
			</div>
			<div class="flex-none">&dollar;$taxfixed</div>
		</div>
		<div class="display-flex">
			<div class="flex-stretch">
				<strong>Total</strong>
			</div>
			<div class="flex-none">&dollar;$taxedfixed</div>
		</div>
		
	</div>
HTML;
}

function makeCartBadge() {
	if(!isset($_SESSION['cart']) || !count($_SESSION['cart'])) {
		return "";
	} else {
		$total_amount= array_reduce($_SESSION['cart'], function($r, $o) {
			return $r + $o->amount;
		}, 0);
		return "($total_amount)";
	}
}

?>