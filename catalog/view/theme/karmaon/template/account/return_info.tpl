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
      <div class="return-info">
        <dl class="dump">
          <dt><?php echo $text_return_id; ?></dt>
          <dd><?php echo $return_id; ?></dd>
          <dt><?php echo $text_date_added; ?></dt>
          <dd><?php echo $date_added; ?></dd>
          <dt><?php echo $text_order_id; ?></dt>
          <dd><?php echo $order_id; ?></dd>
          <dt><?php echo $text_date_ordered; ?></dt>
          <dd><?php echo $date_ordered; ?></dd>
        </dl>
        <div class="details">
          <h3><?php echo $text_product; ?></h3>
          <dl class="dump">
            <dt><?php echo $column_product; ?></dt>
            <dd><?php echo $product; ?></dd>
            <dt><?php echo $column_model; ?></dt>
            <dd><?php echo $model; ?></dd>
            <dt><?php echo $column_quantity; ?></dt>
            <dd><?php echo $quantity; ?></dd>
            <dt><?php echo $column_reason; ?></dt>
            <dd><?php echo $reason; ?></dd>
            <dt><?php echo $column_opened; ?></dt>
            <dd><?php echo $opened; ?></dd>
            <?php if ($comment) { ?>
              <dt><?php echo $text_comment; ?></dt>
              <dd><?php echo $comment; ?></dd>
            <?php } ?>
          </dl>
        </div>
        <?php if ($histories) { ?>
          <div class="history">
            <h3><?php echo $text_history; ?></h3>
            <ul>
              <?php foreach ($histories as $history) { ?>
                <li>
                  <span class="date"><?php echo $history['date_added']; ?></span>
                  <span class="status"><?php echo $history['status']; ?></span>
                  <span class="comment"><?php echo $history['comment']; ?></span>
                </li>
              <?php } ?>
            </ul>
          </div>
        <?php } ?>
      </div>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>