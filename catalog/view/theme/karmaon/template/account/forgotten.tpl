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
        <div class="notification error"><?php echo $error_warning; ?></div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <fieldset>
          <legend>Reset Password</legend>
          <div class="form-row">
            <label for="email" class="required"><?php echo $entry_email; ?></label>
            <div class="form-input">
              <input type="text" id="email" name="email">
            </div>
          </div>
        </fieldset>
        <div class="form-actions clearfix">
          <input type="submit" value="<?php echo $button_continue; ?>" class="button green">
        </div>
      </form>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>