<fieldset>
  <legend>Your Personal Details</legend>
  <p class="description">If we have any problems, we can contact you through here.</p>
  <div class="form-row">
    <label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
    <div class="form-input">
      <input type="text" id="firstname" name="firstname">
    </div>
  </div>
  <div class="form-row">
    <label for="last" class="required"><?php echo $entry_lastname; ?></label>
    <div class="form-input">
      <input type="text" id="lastname" name="lastname">
    </div>
  </div>
  <div class="form-row">
    <label for="email" class="required"><?php echo $entry_email; ?></label>
    <div class="form-input">
      <input type="text" id="email" name="email">
    </div>
  </div>
  <div class="form-row">
    <label for="telephone" class="required"><?php echo $entry_telephone; ?></label>
    <div class="form-input">
      <input type="text" id="telephone" name="telephone">
    </div>
  </div>
  <div class="form-row">
    <label for="fax"><?php echo $entry_fax; ?></label>
    <div class="form-input">
      <input type="text" id="fax" name="fax">
    </div>
  </div>
</fieldset>
<fieldset>
  <legend>Your Address</legend>
  <p class="description">This is where we ship your items.</p>
  <div class="form-row">
    <label for="company"><?php echo $entry_company; ?></label>
    <div class="form-input">
      <input type="text" id="company" name="company">
    </div>
  </div>
  <div class="form-row">
    <label for="company_id"><?php echo $entry_company_id; ?></label>
    <div class="form-input">
      <input type="text" id="company_id" name="company_id">
    </div>
  </div>
  <div class="form-row">
    <label for="tax_id"><?php echo $entry_tax_id; ?></label>
    <div class="form-input">
      <input type="text" id="tax_id" name="tax_id">
    </div>
  </div>
  <div class="form-row">
    <label for="address_1" class="required"><?php echo $entry_address_1; ?></label>
    <div class="form-input">
      <input type="text" id="address_1" name="address_1">
    </div>
  </div>
  <div class="form-row">
    <label for="address_2"><?php echo $entry_address_2; ?></label>
    <div class="form-input">
      <input type="text" id="address_2" name="address_2">
    </div>
  </div>
  <div class="form-row">
    <label for="city" class="required"><?php echo $entry_city; ?></label>
    <div class="form-input">
      <input type="text" id="city" name="city">
    </div>
  </div>
  <div class="form-row">
    <label for="postcode"><?php echo $entry_postcode; ?></label>
    <div class="form-input">
      <input type="text" id="postcode" name="postcode">
    </div>
  </div>
  <div class="form-row">
    <label for="country_id" class="required"><?php echo $entry_country; ?></label>
    <div class="form-input">
      <select name="country_id">
        <option value=""><?php echo $text_select; ?></option>
        <?php foreach ($countries as $country) { ?>
          <?php if ($country['country_id'] == $country_id) { ?>
            <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
          <?php } else { ?>
            <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
          <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  <div class="form-row">
    <label for="zone_id" class="required"><?php echo $entry_zone; ?></label>
    <div class="form-input">
      <select name="zone_id" id="zone_id"></select>
    </div>
  </div>
</fieldset>
<fieldset>
  <legend>Your Password</legend>
  <p class="description">To make sure you, and only you have access.</p>
  <div class="form-row">
    <label for="password" class="required"><?php echo $entry_password; ?></label>
    <div class="form-input">
      <input type="password" id="password" name="password">
    </div>
  </div>
  <div class="form-row">
    <label for="confirm" class="required"><?php echo $entry_confirm; ?></label>
    <div class="form-input">
      <input type="password" id="confirm" name="confirm">
    </div>
  </div>
</fieldset>
<fieldset>
  <legend>Newsletter</legend>
  <p class="description">We'll keep you updated with promotions and news.</p>
  <div class="form-row">
    <label for="newsletter"><?php echo $entry_newsletter; ?></label>
    <div class="form-input">
      <input type="checkbox" name="newsletter" id="newsletter" />
    </div>
  </div>
</fieldset>
<div class="form-actions clearfix">
  <div class="final">
  <label for="agree"><input type="checkbox" name="agree" id="agree"><?php echo $text_agree; ?></label>
  </div>
  <input type="button" value="<?php echo $button_continue; ?>" id="button-register" class="green button" />
</div>

<script type="text/javascript">
$('#payment-address input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('#payment-address input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('#payment-address select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#payment-postcode-required').show();
			} else {
				$('#payment-postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {

				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('#payment-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#payment-address select[name=\'country_id\']').trigger('change');