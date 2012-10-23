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
        <a href="<?php echo $register; ?>" class="extra">Need an account?</a>
      </header>
      <?php if ($success) { ?>
        <div class="notification success">
          <div class="container">
            <?php echo $success; ?>
          </div>
        </div>
      <?php } ?>
      <?php if ($error_warning) { ?>
        <div class="notification error">
          <div class="container">
            <?php echo $error_warning; ?>
          </div>
        </div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <fieldset>
          <legend>Login Credentials</legend>
          <div class="form-row">
            <label for="email" class="required"><?php echo $entry_email; ?></label>
            <div class="form-input">
              <input type="text" id="email" name="email" value="<?php echo $email; ?>">
            </div>
          </div>
          <div class="form-row">
            <label for="password" class="required"><?php echo $entry_password; ?></label>
            <div class="form-input">
              <input type="password" id="password" name="password" value="<?php echo $password; ?>">
            </div>
          </div>
          <?php if ($redirect) { ?>
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
        </fieldset>
        <div class="form-actions clearfix">
          <input type="submit" value="<?php echo $button_login; ?>" class="button green" />
        </div>
      </form>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>