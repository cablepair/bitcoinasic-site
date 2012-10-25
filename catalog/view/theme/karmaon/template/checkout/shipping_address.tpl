<div id="details-section">
  <?php if ($addresses) { ?>
    <div class="selection">
      <p>
        <input type="radio" name="shipping_address" value="existing" id="shipping-address-existing" checked="checked" />
        <label for="shipping-address-existing"><?php echo $text_address_existing; ?></label>
      </p>
      <div id="shipping-existing">
        <select name="address_id" id="address_id" style="width: 100%; margin-bottom: 15px;" size="5">
          <?php foreach ($addresses as $address) { ?>
            <?php if ($address['address_id'] == $address_id) { ?>
              <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
            <?php } else { ?>
              <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
            <?php } ?>
          <?php } ?>
        </select>
      </div>
    </div>
  <?php } ?>
  <div class="selection">
    <p>
      <input type="radio" name="shipping_address" value="new" id="shipping-address-new" />
      <label for="shipping-address-new"><?php echo $text_address_new; ?></label>
    </p>
    <div id="shipping-new"<?php echo ($addresses) ? 'style="display: none"' : ''; ?>>
      <form class="horizontal">
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
              <select name="country_id" id="country_id">
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
              <input type="hidden" id="zone_id" name="zone_id">
            </div>
          </div>
        </fieldset>
      </form>
    </div>
  </div>
  <div class="form-actions clearfix">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-address" class="button green primary" />
  </div>
  <script type="text/javascript">
      $('#country_id').select2();
      $('#address_id').select2();

      $('#checkout-main input[name=\'shipping_address\']').live('change', function() {
        if (this.value == 'new') {
          $('#shipping-existing').hide();
          $('#shipping-new').show();
        } else {
          $('#shipping-existing').show();
          $('#shipping-new').hide();
        }
      });



    $('#checkout-main select[name=\'country_id\']').bind('change', function() {
    	$.ajax({
    		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
    		dataType: 'json',
        success: function(json) {
          if (json['postcode_required'] == '1') {
            $('#payment-postcode-required').show();
          } else {
            $('#payment-postcode-required').hide();
          }
  console.log('asdf');
          var data = [];

          for (var i = 0; i < json['zone'].length; i++) {
            data.push({
              id: json['zone'][i]['zone_id'],
              text: json['zone'][i]['name']
            })
          }
          
          $('#zone_id').select2({
            data: data,
            placeholder: 'Select a State'
          });
        },
    		error: function(xhr, ajaxOptions, thrownError) {
    			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    		}
    	});
    });

    $('#checkout-main select[name=\'country_id\']').trigger('change');
  </script>
</div>