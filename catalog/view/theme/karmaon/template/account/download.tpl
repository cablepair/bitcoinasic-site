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
      <?php if ($downloads) { ?>
        <?php foreach ($downloads as $download) { ?>
          <div class="download-list">
            <div class="download-id"><b><?php echo $text_order; ?></b> <?php echo $download['order_id']; ?></div>
            <div class="download-status"><b><?php echo $text_size; ?></b> <?php echo $download['size']; ?></div>
            <div class="download-content">
              <div><b><?php echo $text_name; ?></b> <?php echo $download['name']; ?><br />
                <b><?php echo $text_date_added; ?></b> <?php echo $download['date_added']; ?></div>
              <div><b><?php echo $text_remaining; ?></b> <?php echo $download['remaining']; ?></div>
              <div class="download-info">
                <?php if ($download['remaining'] > 0) { ?>
                <a href="<?php echo $download['href']; ?>"><img src="catalog/view/theme/default/image/download.png" alt="<?php echo $button_download; ?>" title="<?php echo $button_download; ?>" /></a>
                <?php } ?>
              </div>
            </div>
          </div>
        <?php } ?>
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