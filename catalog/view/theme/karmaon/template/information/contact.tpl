<?php echo $header; ?>
<div id="breadcrumbs">
  <div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
</div>
<div class="page">
  <header class="header">
    <h1><?php echo $heading_title; ?></h1>
  </header>
  <div class="contact">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="part">
      <fieldset>
        <legend>Your Message</legend>
        <p>Please fill out this regarding your contact.</p>
        <div class="form-row">
          <label for="name" class="required"><?php echo $entry_name; ?></label>
          <div class="form-input">
            <input type="text" id="name" name="name" value="<?php echo $name; ?>">
          </div>
          <?php if ($error_enquiry) { ?>
            <span class="error"><?php echo $error_enquiry; ?></span>
          <?php } ?>
        </div>
        <div class="form-row">
          <label for="email" class="required"><?php echo $entry_email; ?></label>
          <div class="form-input">
            <input type="text" id="email" name="email" value="<?php echo $email; ?>">
          </div>
        </div>
        <div class="form-row">
          <label for="enquiry" class="required"><?php echo $entry_enquiry; ?></label>
          <div class="form-input">
            <textarea id="enquiry" name="enquiry" value="<?php echo $enquiry; ?>"></textarea>
          </div>
        </div>
        <div class="form-row">
          <label for="captcha" class="required"><?php echo $entry_captcha; ?></label>
          <div class="form-input">
            <input id="captcha" name="captcha" value="<?php echo $captcha; ?>"></input>
            <img src="index.php?route=information/contact/captcha" alt="">
          </div>
        </div>
      </fieldset>
      <input type="submit" value="<?php echo $button_continue; ?>" class="button green" />
    </form>
    <aside>
      <h3><?php echo $text_location; ?></h3>
      <address>
        <?php echo $store; ?><br>
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
<div id="content" class="normal clearfix"><?php echo $content_top; ?>
  <header>
    <h1 class="header"><?php echo $heading_title; ?></h1>
  </header>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="part">
      </div>
      </div>
      <h2><?php echo $text_contact; ?></h2>
      <div class="content">
      <b><?php echo $entry_name; ?></b><br />
      <input type="text" name="name" value="<?php echo $name; ?>" />
      <br />
      <?php if ($error_name) { ?>
      <span class="error"><?php echo $error_name; ?></span>
      <?php } ?>
      <br />
      <b><?php echo $entry_email; ?></b><br />
      <input type="text" name="email" value="<?php echo $email; ?>" />
      <br />
      <?php if ($error_email) { ?>
      <span class="error"><?php echo $error_email; ?></span>
      <?php } ?>
      <br />
      <b><?php echo $entry_enquiry; ?></b><br />
      <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
      <br />
      <?php if ($error_enquiry) { ?>
      <span class="error"><?php echo $error_enquiry; ?></span>
      <?php } ?>
      <br />
      <b><?php echo $entry_captcha; ?></b><br />
      <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
      <br />
      <img src="index.php?route=information/contact/captcha" alt="" />
      <?php if ($error_captcha) { ?>
      <span class="error"><?php echo $error_captcha; ?></span>
      <?php } ?>
      </div>
      <div class="buttons">
        <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
      </div>
    </form>
  <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>