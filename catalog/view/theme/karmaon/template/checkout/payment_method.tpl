<div id="details-section">
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <form class="horizontal">
    <fieldset>
      <legend>Payment Method</legend>
      <p><?php echo $text_payment_method; ?></p>
      <?php if ($payment_methods) { ?>
        <div class="form-row">
          <label for="payment_method">Payment Method</label>
          <div class="form-input">
            <select name="payment_method" id="payment_method">
              <?php foreach ($payment_methods as $payment_method) { ?>
                  <option value="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></option>
              <?php } ?>
            </select>
          </div>
        </div>
      <?php } ?>
      <div class="form-row">
        <label for="comment"><?php echo $text_comments; ?></label>
        <div class="form-input">
          <textarea name="comment"><?php echo $comment; ?></textarea>
        </div>
      </div>
    </fieldset>
    <?php if ($text_agree) { ?>
      <div class="form-actions clearfix">
        <label for="agree" class="secondary">
          <?php if ($agree) { ?>
            <input type="checkbox" name="agree" id="agree" value="1" checked="checked" />
          <?php } else { ?>
            <input type="checkbox" name="agree" id="agree" value="1" />
          <?php } ?>
          <?php echo $text_agree; ?>
        </label>
          <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button green primary" />
        </div>
      </div>
    <?php } else { ?>
      <div class="buttons">
        <div class="right">
          <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" />
        </div>
      </div>
    <?php } ?>
  </form>
</div>
<script type="text/javascript">
  $('#payment_method').select2();
</script>
