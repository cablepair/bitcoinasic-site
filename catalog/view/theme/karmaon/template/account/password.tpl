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
          <legend><?php echo $text_password; ?></legend>
          <p class="description">
            Change your password.
          </p>
          <div class="form-row<?php if ($error_password) { echo " error"; } ?>">
            <label for="last" class="required"><?php echo $entry_password; ?></label>
            <div class="form-input">
              <input type="text" id="password" name="password" value="<?php echo $password; ?>">
            </div>
            <?php if ($error_password) { ?>
              <span class="error"><?php echo $error_password; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_confirm) { echo " error"; } ?>">
            <label for="last" class="required"><?php echo $entry_confirm; ?></label>
            <div class="form-input">
              <input type="text" id="confirm" name="confirm" value="<?php echo $confirm; ?>">
            </div>
            <?php if ($error_confirm) { ?>
              <span class="error"><?php echo $error_confirm; ?></span>
            <?php } ?>
          </div>
        </fieldset>
        <div class="form-actions clearfix">
          <a href="<?php echo $back; ?>" class="secondary"><?php echo $button_back; ?></a>
          <input type="submit" value="<?php echo $button_continue; ?>" class="button green primary" /></div>
        </div>
      </form>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>