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
      <table class="table">
        <thead>
          <tr>
            <th><?php echo $text_return_id; ?></th>
            <th><?php echo $text_status; ?></th>
            <th><?php echo $text_date_added; ?></th>
            <th><?php echo $text_order_id; ?></th>
            <th><?php echo $text_customer; ?></th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($returns as $return) { ?>
            <tr>
              <td><?php echo $return['return_id']; ?></td>
              <td><?php echo $return['status']; ?></td>
              <td><?php echo $return['date_added']; ?></td>
              <td><?php echo $return['order_id']; ?></td>
              <td><?php echo $return['name']; ?></td>
            </tr>
          <?php } ?>
        </tbody>
      </table>
      <?php if ($returns) { ?>
        <?php foreach ($returns as $return) { ?>
        <div class="return-list">
            <div class="return-info"><a href="<?php echo $return['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a></div>
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