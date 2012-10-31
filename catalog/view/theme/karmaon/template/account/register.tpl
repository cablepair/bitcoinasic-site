<?php echo $header; ?>
<div class="container">
  <div id="view" class="clearfix">
    <div id="content2" class="left-content">
      <header class="clearfix">
        <h1><?php echo $heading_title; ?></h1>
        <a href="<?php echo $login; ?>" class="extra">Already have an account?</a>
      </header>
      <?php if ($error_warning) { ?>
        <div class="notification error"><?php echo $error_warning; ?></div>
      <?php } ?>
      <!-- Opencart has one of the worst templating systems EVER -->
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="horizontal">
        <fieldset>
          <legend>Your Personal Details</legend>
          <p class="description">If we have any problems, we can contact you through here.</p>
          <div class="form-row<?php if ($error_firstname) { echo " error"; } ?>">
            <label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
            <div class="form-input">
              <input type="text" id="firstname" name="firstname" value="<?php echo $firstname; ?>">
            </div>
            <?php if ($error_firstname) { ?>
              <span class="error"><?php echo $error_firstname; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_lastname) { echo " error"; } ?>">
            <label for="last" class="required"><?php echo $entry_lastname; ?></label>
            <div class="form-input">
              <input type="text" id="lastname" name="lastname" value="<?php echo $lastname; ?>">
            </div>
            <?php if ($error_lastname) { ?>
              <span class="error"><?php echo $error_lastname; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_email) { echo " error"; } ?>">
            <label for="email" class="required"><?php echo $entry_email; ?></label>
            <div class="form-input">
              <input type="text" id="email" name="email" value="<?php echo $email; ?>">
            </div>
            <?php if ($error_email) { ?>
              <span class="error"><?php echo $error_email; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_telephone) { echo " error"; } ?>">
            <label for="telephone" class="required"><?php echo $entry_telephone; ?></label>
            <div class="form-input">
              <input type="text" id="telephone" name="telephone" value="<?php echo $telephone; ?>">
            </div>
            <?php if ($error_telephone) { ?>
              <span class="error"><?php echo $error_telephone; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="fax"><?php echo $entry_fax; ?></label>
            <div class="form-input">
              <input type="text" id="fax" name="fax" value="<?php echo $fax; ?>">
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend>Your Address</legend>
          <p class="description">This is where we ship your items.</p>
          <div class="form-row">
            <label for="company"><?php echo $entry_company; ?></label>
            <div class="form-input">
              <input type="text" id="company" name="company" value="<?php echo $company; ?>">
            </div>
          </div>
          <div class="form-row">
            <label for="company_id"><?php echo $entry_company_id; ?></label>
            <div class="form-input">
              <input type="text" id="company_id" name="company_id" value="<?php echo $company_id; ?>">
            </div>
          </div>
          <div class="form-row">
            <label for="tax_id"><?php echo $entry_tax_id; ?></label>
            <div class="form-input">
              <input type="text" id="tax_id" name="tax_id" value="<?php echo $tax_id; ?>">
            </div>
          </div>
          <div class="form-row<?php if ($error_address_1) { echo " error"; } ?>">
            <label for="address_1" class="required"><?php echo $entry_address_1; ?></label>
            <div class="form-input">
              <input type="text" id="address_1" name="address_1" value="<?php echo $address_1; ?>">
            </div>
            <?php if ($error_address_1) { ?>
              <span class="error"><?php echo $error_address_1; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="address_2"><?php echo $entry_address_2; ?></label>
            <div class="form-input">
              <input type="text" id="address_2" name="address_2" value="<?php echo $address_2; ?>">
            </div>
          </div>
          <div class="form-row<?php if ($error_city) { echo " error"; } ?>">
            <label for="city" class="required"><?php echo $entry_city; ?></label>
            <div class="form-input">
              <input type="text" id="city" name="city" value="<?php echo $city; ?>">
            </div>
            <?php if ($error_city) { ?>
              <span class="error"><?php echo $error_city; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="postcode"><?php echo $entry_postcode; ?></label>
            <div class="form-input">
              <input type="text" id="postcode" name="postcode" value="<?php echo $postcode; ?>">
            </div>
          </div>
          <div class="form-row<?php if ($error_country) { echo " error"; } ?>">
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
              <?php if ($error_country) { ?>
                <span class="error"><?php echo $error_country; ?></span>
              <?php } ?>
            </div>
          </div>
          <div class="form-row<?php if ($error_zone) { echo " error"; } ?>">
            <label for="zone_id" class="required"><?php echo $entry_zone; ?></label>
            <div class="form-input">
              <select name="zone_id" id="zone_id"></select>
            </div>
            <?php if ($error_zone) { ?>
              <span class="error"><?php echo $error_zone; ?></span>
            <?php } ?>
          </div>
        </fieldset>
        <fieldset>
          <legend>Your Password</legend>
          <p class="description">To make sure you, and only you have access.</p>
          <div class="form-row<?php if ($error_password) { echo " error"; } ?>">
            <label for="password" class="required"><?php echo $entry_password; ?></label>
            <div class="form-input">
              <input type="password" id="password" name="password" value="<?php echo $password; ?>">
            </div>
            <?php if ($error_password) { ?>
              <span class="error"><?php echo $error_password; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_confirm) { echo " error"; } ?>">
            <label for="confirm" class="required"><?php echo $entry_confirm; ?></label>
            <div class="form-input">
              <input type="password" id="confirm" name="confirm" value="<?php echo $confirm; ?>">
            </div>
            <?php if ($error_confirm) { ?>
              <span class="error"><?php echo $error_confirm; ?></span>
            <?php } ?>
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
          <label for="agree" class="secondary"><input type="checkbox" name="agree" id="agree"><?php echo $text_agree; ?></label>
          <input type="submit" value="<?php echo $button_continue; ?>" class="button green primary" />
        </div>
      </form>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>

<script type="text/javascript"><!--
$('input[name=\'customer_group_id\']:checked').live('change', function() {
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

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
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
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script> 
<?php echo $footer; ?>