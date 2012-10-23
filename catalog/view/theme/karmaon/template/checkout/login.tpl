<div class="register">
  <fieldset>
    <legend><?php echo $text_new_customer; ?></legend>
    <p><?php echo $text_register_account; ?></p>
    <label for="register">
      <?php if ($account == 'register') { ?>
        <input type="radio" name="account" value="register" id="register" checked="checked" />
      <?php } else { ?>
        <input type="radio" name="account" value="register" id="register" />
      <?php } ?>
      <b><?php echo $text_register; ?></b>
    </label>
  </fieldset>
  <input type="button" value="<?php echo $button_continue; ?>" id="button-account" class="button green" />
</div>
<div id="login" class="login">
  <fieldset>
    <legend><?php echo $text_returning_customer; ?></legend>
    <p><?php echo $text_i_am_returning_customer; ?></p>
    <div class="form-row">
      <div class="form-input">
        <input type="text" id="email" name="email" placeholder="Email">
      </div>
    </div>
    <div class="form-row">
      <div class="form-input">
        <input type="text" id="password" name="password" placeholder="Password">
      </div>
    </div>
    <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
  </fieldset>
  <input type="button" value="<?php echo $button_login; ?>" id="button-login" class="green button" /><br />
</div>