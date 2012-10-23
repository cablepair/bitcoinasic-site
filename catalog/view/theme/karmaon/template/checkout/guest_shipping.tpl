<fieldset>
  <legend>Guest Shipping</legend>
  <p class="description">If we have any problems, we can contact you through here.</p>
  <div class="form-row">
    <label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
    <div class="form-input">
      <input type="text" id="firstname" name="firstname" value="<?php echo $firstname; ?>">
    </div>
  </div>
  <div class="form-row">
    <label for="last" class="required"><?php echo $entry_lastname; ?></label>
    <div class="form-input">
      <input type="text" id="lastname" name="lastname" value="<?php echo $lastname; ?>">
    </div>
  </div>
  <div class="form-row">
    <label for="company"><?php echo $entry_company; ?></label>
    <div class="form-input">
      <input type="text" id="company" name="company" value="<?php echo $company; ?>">
    </div>
  </div>
  <div class="form-row">
    <label for="address_1" class="required"><?php echo $entry_address_1; ?></label>
    <div class="form-input">
      <input type="text" id="address_1" name="address_1" value="<?php echo $address_1; ?>">
    </div>
  </div>
  <div class="form-row">
    <label for="address_2"><?php echo $entry_address_2; ?></label>
    <div class="form-input">
      <input type="text" id="address_2" name="address_2" value="<?php echo $address_2; ?>">
    </div>
  </div>
  <div class="form-row">
    <label for="city" class="required"><?php echo $entry_city; ?></label>
    <div class="form-input">
      <input type="text" id="city" name="city" value="<?php echo $city; ?>">
    </div>
  </div>
  <div class="form-row">
    <label for="postcode"><?php echo $entry_postcode; ?></label>
    <div class="form-input">
      <input type="text" id="postcode" name="postcode" value="<?php echo $postcode; ?>">
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
  <div class="form-row">
    <label for="zone_id" class="required"><?php echo $entry_zone; ?></label>
    <div class="form-input">
      <select name="zone_id" id="zone_id"></select>
    </div>
  </div>
</fieldset>
<div class="form-actions clearfix">
  <input type="submit" value="<?php echo $button_continue; ?>" id="button-guest-shipping" class="primary button green" />
</div>
<script type="text/javascript"><!--
$('#shipping-address select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#shipping-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#shipping-postcode-required').show();
			} else {
				$('#shipping-postcode-required').hide();
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
			
			$('#shipping-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#shipping-address select[name=\'country_id\']').trigger('change');
//--></script>