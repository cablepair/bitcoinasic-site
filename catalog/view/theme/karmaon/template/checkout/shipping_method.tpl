<?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($shipping_methods) { ?>
  <?php foreach ($shipping_methods as $shipping_method) { ?>
    <div class="form-row">
      <label for="shipping_method" class="required">Shipping Method</label>
      <div class="form-input">
        <?php if ( ! $shipping_method['error']) { ?>
          <select id="shipping_method" name="shipping_method">
            <?php foreach ($shipping_method['quote'] as $quote) { ?>
              <option value="<?php echo $quote['code']; ?>"><?php echo $quote['title']; ?> (<?php echo $quote['text']; ?>)</option>
            <?php } ?>
          </select>
        <?php } else { ?>
          <?php echo $shipping_method['error']; ?>
        <?php }?>
      </div>
    </div>
  <?php } ?>
<?php } ?>
<div class="form-row">
  <label for="comment"><?php echo $text_comments; ?></label>
  <div class="form-input">
    <textarea id="comment" name="comment" value="<?php echo $comment; ?>"></textarea>
  </div>
</div>
<div class="form-actions">
  <input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" class="button green">
</div>