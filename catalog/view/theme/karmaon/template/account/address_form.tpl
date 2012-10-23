<?php echo $header; ?>
<div id="breadcrumbs">
  <div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
</div>
<div class="container">
  <div id="view" class="clearfix">
    <div id="content2">
      <header class="clearfix">
        <h1><?php echo $heading_title; ?></h1>
      </header>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <fieldset>
          <legend>New Address</legend>
          <div class="form-row<?php if ($error_firstname) { echo " error"; } ?>">
            <label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
            <div class="form-input">
              <input type="text" id="firstname" name="firstname" value="<?php echo $firstname; ?>">
            </div>
            <?php if ($error_firstname) { ?>
              <span class="error"><?php echo $error_firstname; ?></span>
            <?php } ?>
          </div>
          <div class="form-row <?php if ($error_lastname) { echo " error"; } ?>">
            <label for="last" class="required"><?php echo $entry_lastname; ?></label>
            <div class="form-input">
              <input type="text" id="lastname" name="lastname" value="<?php echo $lastname; ?>">
            </div>
            <?php if ($error_lastname) { ?>
              <span class="error"><?php echo $error_firstname; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="company"><?php echo $entry_company; ?></label>
            <div class="form-input">
              <input type="text" id="company" name="company" value="<?php echo $company; ?>">
            </div>
          </div>
          <div class="form-row <?php if ($error_firstname) { echo " error"; } ?>">
            <label for="company_id"><?php echo $entry_company_id; ?></label>
            <div class="form-input">
              <input type="text" id="company_id" name="company_id" value="<?php echo $company_id; ?>">
            </div>
            <?php if ($error_company_id) { ?>
              <span class="error"><?php echo $error_company_id; ?></span>
            <?php } ?>
          </div>
          <div class="form-row <?php if ($error_address_1) { echo " error"; } ?>">
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
          <div class="form-row <?php if ($error_city) { echo " error"; } ?>">
            <label for="city" class="required"><?php echo $entry_city; ?></label>
            <div class="form-input">
              <input type="text" id="city" name="city" value="<?php echo $city; ?>">
            </div>
            <?php if ($error_city) { ?>
              <span class="error"><?php echo $error_city; ?></span>
            <?php } ?>
          </div>
          <div class="form-row <?php if ($error_postcode) { echo " error"; } ?>">
            <label for="postcode"><?php echo $entry_postcode; ?></label>
            <div class="form-input">
              <input type="text" id="postcode" name="postcode" value="<?php echo $postcode; ?>">
            </div>
            <?php if ($error_postcode) { ?>
              <span class="error"><?php echo $error_postcode; ?></span>
            <?php } ?>
          </div>
          <div class="form-row <?php if ($error_country) { echo " error"; } ?>">
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
          <div class="form-row <?php if ($error_firstname) { echo " error"; } ?>">
            <label for="zone_id" class="required"><?php echo $entry_zone; ?></label>
            <div class="form-input">
              <select name="zone_id" id="zone_id"></select>
            </div>
            <?php if ($error_zone) { ?>
              <span class="error"><?php echo $error_zone; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="default"><?php echo $entry_default; ?></label>
            <div class="form-input">
              <input type="checkbox" name="default" id="default" />
            </div>
          </div>
        </fieldset>
        <div class="form-actions clearfix">
          <input type="submit" value="<?php echo $button_continue; ?>" class="button green" />
        </div>
      </form>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/address/country&country_id=' + this.value,
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