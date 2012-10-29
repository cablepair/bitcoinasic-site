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
    <div id="content2" class="left-content">
      <header class="clearfix">
        <h1><?php echo $heading_title; ?></h1>
      </header>
      <?php if ($error_warning) { ?>
        <div class="notification error">
          <div class="container">
            <?php echo $error_warning; ?>
          </div>
        </div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="horizontal">
        <fieldset>
          <legend>Request an RMA</legend>
          <?php echo $text_description; ?>
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
          <div class="form-row<?php if ($error_order_id) { echo " error"; } ?>">
            <label for="order_id" class="required"><?php echo $entry_order_id; ?></label>
            <div class="form-input">
              <input type="text" id="order_id" name="order_id" value="<?php echo $order_id; ?>">
            </div>
            <?php if ($error_order_id) { ?>
              <span class="error"><?php echo $error_order_id; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="date_ordered"><?php echo $entry_date_ordered; ?></label>
            <div class="form-input">
              <input type="text" id="date_ordered" name="date_ordered" value="<?php echo $date_ordered; ?>">
            </div>
          </div>
        </fieldset>
        <fieldset>
          <legend>Product Information</legend>
          <div class="form-row<?php if ($error_product) { echo " error"; } ?>">
            <label for="product" class="required"><?php echo $entry_product; ?></label>
            <div class="form-input">
              <input type="text" id="product" name="product" value="<?php echo $product; ?>">
            </div>
            <?php if ($error_product) { ?>
              <span class="error"><?php echo $error_product; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_model) { echo " error"; } ?>">
            <label for="model" class="required"><?php echo $entry_model; ?></label>
            <div class="form-input">
              <input type="text" id="model" name="model" value="<?php echo $model; ?>">
            </div>
            <?php if ($error_model) { ?>
              <span class="error"><?php echo $error_model; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="quantity" class="required"><?php echo $entry_quantity; ?></label>
            <div class="form-input">
              <input type="text" id="quantity" name="quantity" value="<?php echo $quantity; ?>">
            </div>
          </div>
          <div class="form-row<?php if ($error_reason) { echo " error"; } ?>">
            <label for="reason" class="required"><?php echo $entry_reason; ?></label>
            <div class="form-input">
              <select type="text" id="reason" name="return_reason_id">
                <?php foreach ($return_reasons as $return_reason) { ?>
                  <option value="<?php echo $return_reason['return_reason_id']; ?>">
                    <?php echo $return_reason['name']; ?>
                  </option>
                <?php } ?>
              </select>
            </div>
            <?php if ($error_reason) { ?>
              <span class="error"><?php echo $error_reason; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="comment"><?php echo $entry_fault_detail; ?></label>
            <div class="form-input">
              <textarea id="comment" name="comment" value="<?php echo $comment; ?>"></textarea>
            </div>
          </div>
          <div class="form-row">
            <label for="opened"><?php echo $entry_opened; ?></label>
            <div class="form-input">
              <input type="checkbox" id="opened" name="opened"<?php if ($opened) { echo ' checked="checked"'; } ?>></input>
            </div>
          </div>
          <div class="form-row<?php if ($error_captcha) { echo " error"; } ?>">
            <label for="captcha" class="required"><?php echo $entry_captcha; ?></label>
            <div class="form-input captcha clearfix">
              <input type="text" id="captcha" name="captcha" value="<?php echo $captcha; ?>">
              <img src="index.php?route=account/return/captcha" alt="" />
            </div>
           <?php if ($error_captcha) { ?>
              <span class="error"><?php echo $error_captcha; ?></span>
            <?php } ?>
          </div>
        </fieldset>
        <div class="form-actions clearfix">
          <a href="<?php echo $back; ?>" class="secondary">Back</a>
          <input type="submit" value="<?php echo $button_continue; ?>" class=" primary button green" />
        </div>
      </form>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});
//--></script> 
<?php echo $footer; ?>