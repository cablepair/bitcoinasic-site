<?php echo $header; ?>
<h1 class="heading"><?php echo $heading_title; ?></h1>
<div class="container clearfix">
  <div class="contact clearfix">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="part horizontal">
      <fieldset>
        <legend>Your Message</legend>
        <p>Please fill out this regarding your contact.</p>
        <div class="form-row<?php if ($error_name) { echo " error"; } ?>">
          <label for="name" class="required"><?php echo $entry_name; ?></label>
          <div class="form-input">
            <input type="text" id="name" name="name" value="<?php echo $name; ?>">
          </div>
          <?php if ($error_name) { ?>
            <span class="error"><?php echo $error_name; ?></span>
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
        <div class="form-row<?php if ($error_enquiry) { echo " error"; } ?>">
          <label for="enquiry" class="required"><?php echo $entry_enquiry; ?></label>
          <div class="form-input">
            <textarea id="enquiry" name="enquiry" value="<?php echo $enquiry; ?>"></textarea>
          </div>
          <?php if ($error_enquiry) { ?>
            <span class="error"><?php echo $error_enquiry; ?></span>
          <?php } ?>
        </div>
        <div class="form-row<?php if ($error_captcha) { echo " error"; } ?>">
          <label for="captcha" class="required"><?php echo $entry_captcha; ?></label>
          <div class="form-input captcha clearfix">
            <input type="text" id="captcha" name="captcha" value="<?php echo $captcha; ?>"></input>
            <img src="index.php?route=information/contact/captcha" alt="">
          </div>
          <?php if ($error_captcha) { ?>
            <span class="error"><?php echo $error_captcha; ?></span>
          <?php } ?>
        </div>
      </fieldset>
      <div class="form-actions clearfix">
        <input type="submit" value="<?php echo $button_continue; ?>" class="button green primary" />
      </div>
    </form>
    <aside>
      <address>
        <h3><?php echo $store; ?></h3>
        <?php echo $address; ?><br>
        <abbr title="<?php echo $text_telephone; ?>">P:</abbr> <?php echo $telephone; ?>
        <?php if ($fax) { ?>
          <br>
          <abbr title="<?php echo $text_fax; ?>">P:</abbr> <?php echo $fax; ?>
        <?php } ?>
      </address>
    </aside>
  </div>
</div>
<?php echo $footer; ?>