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
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="horizontal">
        <fieldset>
          <legend><?php echo $text_your_details; ?></legend>
          <p>
            Edit your personal details here.
          </p>
          <div class="form-row<?php if ($error_firstname) { echo " error"; } ?>">
            <label for="firstname" class="required"><?php echo $entry_firstname; ?></label>
            <div class="form-input">
              <input type="text" id="firstname" name="firstname" value="<?php echo $firstname; ?>">
            </div>
            <?php if ($error_firstname) { ?>
              <span class="error"><?php echo $error_firstname; ?></span>
            <?php } ?>
          </div>
          <div class="form-row<?php if ($error_lastname) { echo " error"; } ?>">
            <label for="last" class="required"><?php echo $entry_lastname; ?></label>
            <div class="form-input">
              <input type="text" id="lastname" name="lastname" value="<?php echo $lastname; ?>">
            </div>
            <?php if ($error_lastname) { ?>
              <span class="error"><?php echo $error_lastname; ?></span>
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
          <div class="form-row<?php if ($error_telephone) { echo " error"; } ?>">
            <label for="telephone" class="required"><?php echo $entry_telephone; ?></label>
            <div class="form-input">
              <input type="text" id="telephone" name="telephone" value="<?php echo $telephone; ?>">
            </div>
            <?php if ($error_telephone) { ?>
              <span class="error"><?php echo $error_telephone; ?></span>
            <?php } ?>
          </div>
          <div class="form-row">
            <label for="fax"><?php echo $entry_fax; ?></label>
            <div class="form-input">
              <input type="text" id="fax" name="fax" value="<?php echo $fax; ?>">
            </div>
          </div>
        </fieldset>
        <div class="form-actions clearfix">
          <a href="<?php echo $back; ?>" class="secondary"><?php echo $button_back; ?></a>
          <input type="submit" value="<?php echo $button_continue; ?>" class="button green primary" />
        </div>
      </form>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>