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
          <legend>Status</legend>
          <p>
            Change your subscription status.
          </p>
          <div class="form-row">
            <label for="newsletter"><?php echo $entry_newsletter; ?></label>
            <div class="form-input">
              <input type="checkbox" name="newsletter" id="newsletter" />
            </div>
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