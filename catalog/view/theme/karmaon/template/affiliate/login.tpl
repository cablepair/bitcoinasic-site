<?php echo $header; ?>
<div id="breadcrumbs">
  <div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
</div>
<div class="page">
  <div class="container clearfix">
    <header class="header">
      <h1><?php echo $heading_title; ?></h1>
    </header>
    <?php if ($success) { ?>
      <div class="success"><?php echo $success; ?></div>
    <?php } ?>
    <?php if ($error_warning) { ?>
      <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <div class="login">
      <div class="about">
        <h2><?php echo $text_new_affiliate; ?></h2>
        <?php echo $text_description; ?>
        <?php echo $text_register_account; ?> <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a>
      </div>
      <div class="form">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <fieldset>
            <legend><?php echo $text_returning_affiliate; ?></legend>
            <p><?php echo $text_i_am_returning_affiliate; ?></p>
            <div class="form-row">
              <label for="email"><?php echo $entry_email; ?></label>
              <div class="form-input">
                <input type="text" id="email" name="email">
              </div>
            </div>
            <div class="form-row">
              <label for="password"><?php echo $entry_password; ?></label>
              <div class="form-input">
                <input type="text" id="password" name="password">
              </div>
            </div>
                <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
                <input type="submit" value="<?php echo $button_login; ?>" class="green button" />
                <?php if ($redirect) { ?>
                  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                <?php } ?>
          </fieldset>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>