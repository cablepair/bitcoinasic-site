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
        <div class="extra"><?php echo $text_total; ?> <?php echo $total; ?></div>
      </header>
        <?php if ($rewards) { ?>
          <table class="list">
            <thead>
              <tr>
                <td class="left"><?php echo $column_date_added; ?></td>
                <td class="left"><?php echo $column_description; ?></td>
                <td class="right"><?php echo $column_points; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($rewards  as $reward) { ?>
                <tr>
                  <td class="left"><?php echo $reward['date_added']; ?></td>
                  <td class="left"><?php if ($reward['order_id']) { ?>
                    <a href="<?php echo $reward['href']; ?>"><?php echo $reward['description']; ?></a>
                    <?php } else { ?>
                    <?php echo $reward['description']; ?>
                    <?php } ?></td>
                  <td class="right"><?php echo $reward['points']; ?></td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
          <div class="pagination"><?php echo $pagination; ?></div>
          <div class="buttons">
            <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
          </div>
        <?php } else { ?>
          <div class="empty">
            <span>X</span>
            <h2><?php echo $text_empty; ?></h2>
          </div>
        <?php } ?>
    </div>
  </div>
  <?php echo $column_right; ?>
</div>
<?php echo $footer; ?>