<?php echo $header; ?>	
<div class="container clearfix">
	<div id="progress">
		<div class="bar"></div>
		<ul class="clearfix">
			<li id="checkout-progress">
				<div class="arrow"></div>
				<h3>Checkout Options</h3>
			</li>
			<li id="billing-details-progress">
				<div class="arrow"></div>
				<h3>Billing Details</h3>
			</li>
			<li id="delivery-details-progress">
				<div class="arrow"></div>
				<h3>Delivery Details</h3>
			</li>
			<li id="delivery-method-progress">
				<div class="arrow"></div>
				<h3>Delivery Method</h3>
			</li>
			<li id="payment-method-progress">
				<div class="arrow"></div>
				<h3>Payment Method</h3>
			</li>
			<li id="confirmation-progress">
				<div class="arrow"></div>
				<h3>Confirmation</h3>
			</li>
		</ul>
	</div>
	<div class="window clearfix">
		<div id="checkout-main">
		</div>
    <div class="overview">
      <h2>Overview</h2>
      <ul>
	      <?php if ($weight) { ?>
          <li class="clearfix">
            <span class="category">Total weight</span>
            <span class="amount"><?php echo $weight; ?></span>
          </li>
        <?php } ?>
        <?php foreach ($totals as $total) { ?>
          <li class="clearfix">
            <span class="category"><?php echo $total['title']; ?></span>
            <span class="amount"><?php echo $total['text']; ?></span>
          </li>
        <?php } ?>
      </ul>
    </div>
  </div>
</div>
<script type="text/javascript">
	function errorField(name, error) {
		$('#checkout-main input[name=\'' + name + '\']').parent().parent().addClass('error');
		$('#checkout-main input[name=\'' + name + '\']').parent().after('<span class="error">' + error + '</span>');
	}

	function errorNotice(error) {
		$('#checkout-main').prepend('<div class="notification warning">' + error + '</div>');
	}

	<?php if ( ! $logged) { ?> 
		$(document).ready(function() {
			$.ajax({
				url: 'index.php?route=checkout/login',
				dataType: 'html',
				success: function(html) {
					$('#checkout-progress').addClass('active');
					$('#checkout-main').html(html);
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});	
		});		
	<?php } else { ?>
		$(document).ready(function() {
			$.ajax({
				url: 'index.php?route=checkout/payment_address',
				dataType: 'html',
				success: function(html) {
					$('#checkout-progress').addClass('complete');
					$('#billing-details-progress').addClass('active');
					$('#checkout-main').html(html);
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});	
		});
	<?php } ?>

	// Login
	$('#button-login').live('click', function() {
		$.ajax({
			url: 'index.php?route=checkout/login/validate',
			type: 'post',
			data: $('#checkout-main :input'),
			dataType: 'json',
			beforeSend: function() {
				$('#button-login').attr('disabled', true);
			},	
			complete: function() {
				$('#button-login').attr('disabled', false);
			},				
			success: function(json) {
				$('.notification, span.error').remove();
				
				if (json['redirect']) {
					location = json['redirect'];
				} else if (json['error']) {
					errorNotice(json['error']['warning']);
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});	
	});

	// Payment Address	
	$('#button-payment-address').live('click', function() {
		$.ajax({
			url: 'index.php?route=checkout/payment_address/validate',
			type: 'post',
			data: $('#checkout-main input[type=\'text\'], #checkout-main input[type=\'password\'], #checkout-main input[type=\'checkbox\']:checked, #checkout-main input[type=\'radio\']:checked, #checkout-main input[type=\'hidden\'], #checkout-main select'),
			dataType: 'json',
			beforeSend: function() {
				$('#button-payment-address').attr('disabled', true);
			},	
			complete: function() {
				$('#button-payment-address').attr('disabled', false);
			},			
			success: function(json) {
				$('.notification, span.error').remove();
				
				if (json['redirect']) {
					location = json['redirect'];
				} else if (json['error']) {
					if (json['error']['warning']) {
						$('#checkout-main').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
						
						$('.warning').fadeIn('slow');
					}
									
					json['error']['firstname'] && errorField('firstname', json['error']['firstname']);
					json['error']['lastname'] && errorField('lastname', json['error']['lastname']);
					json['error']['telephone'] && errorField('telephone', json['error']['telephone']);
					json['error']['company_id'] && errorField('company_id', json['error']['company_id']);
					json['error']['tax_id'] && errorField('tax_id', json['error']['tax_id']);
					json['error']['address_1'] && errorField('address_1', json['error']['address_1']);
					json['error']['city'] && errorField('city', json['error']['city']);
					json['error']['postcode'] && errorField('postcode', json['error']['postcode']);
					json['error']['country'] && errorField('country', json['error']['country']);
					json['error']['zone'] && errorField('zone_id', json['error']['zone']);

				} else {
					$('#billing-details-progress').addClass('complete');
					$('#billing-details-progress').removeClass('active');
					$('#details-section').animate({ 'margin-top': '-1000px' }, 300, function() {
						<?php if ($shipping_required) { ?>
							$.ajax({
								url: 'index.php?route=checkout/shipping_address',
								dataType: 'html',
								success: function(html) {
									$('#delivery-details-progress').addClass('active');
									$('#checkout-main').html(html);
								},
								error: function(xhr, ajaxOptions, thrownError) {
									alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
								}
							});
						<?php } else { ?>
						$.ajax({
							url: 'index.php?route=checkout/payment_method',
							dataType: 'html',
							success: function(html) {
								$('#payment-method .checkout-content').html(html);
							},
							error: function(xhr, ajaxOptions, thrownError) {
								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});	
						<?php } ?>
						
						$.ajax({
							url: 'index.php?route=checkout/payment_address',
							dataType: 'html',
							success: function(html) {
								$('#payment-address .checkout-content').html(html);
							},
							error: function(xhr, ajaxOptions, thrownError) {
								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
					});			
				}	  
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});	
	});
	// Shipping Address			
	$('#button-shipping-address').live('click', function() {
		$.ajax({
			url: 'index.php?route=checkout/shipping_address/validate',
			type: 'post',
			data: $('#checkout-main input[type=\'text\'], #checkout-main input[type=\'password\'], #checkout-main input[type=\'checkbox\']:checked, #checkout-main input[type=\'radio\']:checked, #checkout-main input[type=\'hidden\'], #checkout-main select'),
			dataType: 'json',
			success: function(json) {
				$('.notification, span.error').remove();
				
				if (json['redirect']) {
					location = json['redirect'];
				} else if (json['error']) {
					if (json['error']['warning']) {
						$('#shipping-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
						
						$('.warning').fadeIn('slow');
					}
									
					json['error']['firstname'] && errorField('firstname', json['error']['firstname']);
					json['error']['lastname'] && errorField('lastname', json['error']['lastname']);
					json['error']['telephone'] && errorField('telephone', json['error']['telephone']);
					json['error']['company_id'] && errorField('company_id', json['error']['company_id']);
					json['error']['tax_id'] && errorField('tax_id', json['error']['tax_id']);
					json['error']['address_1'] && errorField('address_1', json['error']['address_1']);
					json['error']['city'] && errorField('city', json['error']['city']);
					json['error']['postcode'] && errorField('postcode', json['error']['postcode']);
					json['error']['country'] && errorField('country', json['error']['country']);
					json['error']['zone'] && errorField('zone_id', json['error']['zone']);

				} else {
					$('#delivery-details-progress').removeClass('active');
					$('#delivery-method-progress').addClass('active');

					$('#details-section').animate({ 'margin-top': '-1000px' }, 300, function() {
						$.ajax({
							url: 'index.php?route=checkout/shipping_method',
							dataType: 'html',
							success: function(html) {
								$('#checkout-main').html(html);
								
								$.ajax({
									url: 'index.php?route=checkout/shipping_address',
									dataType: 'html',
									success: function(html) {
										$('#delivery-details-progress').addClass('complete');
										$('#shipping-address .checkout-content').html(html);
									},
									error: function(xhr, ajaxOptions, thrownError) {
										alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
									}
								});						
							},
							error: function(xhr, ajaxOptions, thrownError) {
								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
					});
				}  
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});	
	});

	$('#button-shipping-method').live('click', function() {
		$.ajax({
			url: 'index.php?route=checkout/shipping_method/validate',
			type: 'post',
			data: $('#checkout-main select, #checkout-main textarea'),
			dataType: 'json',	
			success: function(json) {
				$('.notification, span.error').remove();
				
				if (json['redirect']) {
					location = json['redirect'];
				} else if (json['error']) {
					if (json['error']['warning']) {
						$('#shipping-method .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
						
						$('.warning').fadeIn('slow');
					}			
				} else {
					$('#delivery-method-progress').addClass('complete');
					$('#delivery-method-progress').removeClass('active');
					$('#payment-method-progress').addClass('active');
					$('#details-section').animate({ 'margin-top': '-1000px' }, 300, function() {
						$.ajax({
							url: 'index.php?route=checkout/payment_method',
							dataType: 'html',
							success: function(html) {
								$('#checkout-main').html(html);
								$('#shipping-method .checkout-heading').append('<a class="edit"><?php echo $text_modify; ?></a>');	

							},
							error: function(xhr, ajaxOptions, thrownError) {
								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
					});
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});	
	});

	$('#button-payment-method').live('click', function() {
		$.ajax({
			url: 'index.php?route=checkout/payment_method/validate', 
			type: 'post',
			data: $('#checkout-main select, #checkout-main input[type=\'checkbox\']:checked, #checkout-main textarea'),
			dataType: 'json',
			beforeSend: function() {
				$('#button-payment-method').attr('disabled', true);
			},	
			complete: function() {
				$('#button-payment-method').attr('disabled', false);
			},			
			success: function(json) {
				$('.notification, span.error').remove();
				
				if (json['redirect']) {
					location = json['redirect'];
				} else if (json['error']) {
					if (json['error']['warning']) {
						errorNotice(json['error']['warning'])
					}			
				} else {
					$('#payment-method-progress').addClass('complete');
					$('#payment-method-progress').removeClass('active');
					$('#details-section').animate({ 'margin-top': '-1000px' }, 300, function() {
						$.ajax({
							url: 'index.php?route=checkout/confirm',
							dataType: 'html',
							success: function(html) {
								$('#checkout-main').html(html);
								$('#confirmation-progress').addClass('active');
							},
							error: function(xhr, ajaxOptions, thrownError) {
								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
					});
				}
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});	
	});
</script> 
<?php echo $footer; ?>