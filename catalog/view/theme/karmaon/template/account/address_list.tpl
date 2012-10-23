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
        <a href="<?php echo $insert; ?>" class="button green extra"><?php echo $button_new_address; ?></a>
      </header>
      <?php if ($success) { ?>
        <div class="notification success"><?php echo $success; ?></div>
      <?php } ?>
      <?php if ($error_warning) { ?>
        <div class="notification error"><?php echo $error_warning; ?></div>
      <?php } ?>
      <ul class="addresses">
        <?php foreach ($addresses as $result) { ?>
          <li class="clearfix">
            <div class="address">
              <?php echo $result['address']; ?>
            </div>
            <div class="actions">
              <a href="<?php echo $result['update']; ?>">
              <a href="<?php echo $result['delete']; ?>"><?php echo $button_delete; ?></a>
            </div>
          </li>
        <?php } ?>
      </ul>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>