<?php if ($addresses) { ?>
  <p>
    <input type="radio" name="payment_address" value="existing" id="payment-address-existing" checked="checked" />
    <label for="payment-address-existing"><?php echo $text_address_existing; ?></label>
  </p>
  <div id="payment-existing">
    <select name="address_id" style="width: 100%; margin-bottom: 15px;" size="5">
      <?php foreach ($addresses as $address) { ?>
        <?php if ($address['address_id'] == $address_id) { ?>
            <option value="<?php echo $address['address_id']; ?>" selected="selected">
              <?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?>
            </option>
        <?php } else { ?>
          <option value="<?php echo $address['address_id']; ?>">
            <?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?>
          </option>
        <?php } ?>
      <?php } ?>
    </select>
  </div>
  <p>
    <input type="radio" name="payment_address" value="new" id="payment-address-new" />
    <label for="payment-address-new"><?php echo $text_address_new; ?></label>
  </p>
<?php } ?>
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
<div class="form-actions">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-address" class="button green" />
</div>
<script type="text/javascript"><!--
$('#payment-address input[name=\'payment_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#payment-existing').hide();
		$('#payment-new').show();
	} else {
		$('#payment-existing').show();
		$('#payment-new').hide();
	}
});
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
//--></script>