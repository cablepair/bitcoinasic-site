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
      <?php if ($error_warning) { ?>
        <div class="notification error"><?php echo $error_warning; ?></div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <fieldset>
          <legend>Details</legend>
          <p><?php echo $text_description; ?></p>
          <div class="form-row<?php if ($error_to_name) { echo " error"; } ?>">
            <label for="to_name" class="required"><?php echo $entry_to_name; ?></label>
            <div class="form-input">
              <input type="text" id="to_name" name="to_name" value="<?php echo $to_name; ?>">
            </div>
            <?php if ($error_to_name) { ?>
              <span class="error"><?php echo $error_to_name; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_to_email) { echo " error"; } ?>">
            <label for="to_email" class="required"><?php echo $entry_to_email; ?></label>
            <div class="form-input">
              <input type="text" id="to_email" name="to_email" value="<?php echo $to_email; ?>">
            </div>
            <?php if ($error_to_email) { ?>
              <span class="error"><?php echo $error_to_email; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_from_name) { echo " error"; } ?>">
            <label for="from_name" class="required"><?php echo $entry_from_name; ?></label>
            <div class="form-input">
              <input type="text" id="from_name" name="from_name" value="<?php echo $from_name; ?>">
            </div>
            <?php if ($error_from_name) { ?>
              <span class="error"><?php echo $error_from_name; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_from_email) { echo " error"; } ?>">
            <label for="from_email" class="required"><?php echo $entry_from_email; ?></label>
            <div class="form-input">
              <input type="text" id="from_email" name="from_email" value="<?php echo $from_email; ?>">
            </div>
            <?php if ($error_from_name) { ?>
              <span class="error"><?php echo $error_from_name; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="message" class="required"><?php echo $entry_message; ?></label>
            <div class="form-input">
              <textarea type="text" id="message" name="message" value="<?php echo $message; ?>"></textarea>
            </div>
          </div>
          <div class="form-row">
            <label for="vouncher_theme_id" class="required"><?php echo $entry_theme; ?></label>
            <div class="form-input">
              <select id="vouncher_theme_id">
                <?php foreach ($voucher_themes as $voucher_theme) { ?>
                    <option value="<?php echo $voucher_theme['voucher_theme_id']; ?>">
                      <?php echo $voucher_theme['name']; ?>
                    </option>
                <?php } ?>
              </select>
            </div>
            <?php if ($error_theme) { ?>
              <span class="error"><?php echo $error_theme; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_amount) { echo " error"; } ?>">
            <label for="amount" class="required"><?php echo $entry_amount; ?></label>
            <div class="form-input">
              <input type="text" id="amount" name="amount" value="<?php echo $amount; ?>">
            </div>
            <?php if ($error_from_name) { ?>
              <span class="error"><?php echo $error_from_name; ?></span>
            <?php } ?>
          </div>
        </fieldset>
        <div class="form-actions clearfix">
          <div class="final">
          <label for="agree"><input type="checkbox" name="agree" id="agree"><?php echo $text_agree; ?></label>
          </div>
          <input type="submit" value="<?php echo $button_continue; ?>" class="button green" />
        </div>
      </form>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>