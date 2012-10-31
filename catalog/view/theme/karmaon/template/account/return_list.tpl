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
      <?php if ($returns) { ?>
        <ul class="returns">
          <?php foreach ($returns as $return) { ?>
            <li class="clearfix">
              <div class="id">
                #<?php echo $return['return_id']; ?>
              </div>
              <div class="status">
                <?php echo $return['status']; ?>
              </div>
              <div class="date_added">
                <?php echo $return['date_added']; ?>
              </div>
              <div class="actions">
                <a href="<?php echo $return['href']; ?>">
                  <img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" />
                </a>
              </div>
            </li>
          <?php } ?>
        </ul>
        <div class="pagination"><?php echo $pagination; ?></div>
      <?php } else { ?>
        <div class="empty">
          <span>X</span>
          <h2><?php echo $text_empty; ?></h2>
        </div>
      <?php } ?>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>