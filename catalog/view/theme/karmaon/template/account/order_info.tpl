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
      <div class="order-info">
        <dl class="dump">
          <dt><?php echo $text_order_id; ?></dt>
          <dd><?php echo $order_id; ?></dd>
          <dt><?php echo $text_date_added; ?></dt>
          <dd><?php echo $date_added; ?></dd>
          <?php if ($payment_method) { ?>
            <dt><?php echo $text_payment_method; ?></dt>
            <dd><?php echo $payment_method; ?></dd>
          <?php } ?>
          <?php if ($shipping_method) { ?>
            <dt><?php echo $text_shipping_method; ?></dt>
            <dd><?php echo $shipping_method; ?></dd>
          <?php } ?>
        </dl>
        <div class="addresses clearfix">
          <div class="payment">
            <h3><?php echo $text_payment_address; ?></h3>
            <address>
              <?php echo $payment_address; ?>
            </address>
          </div>
          <?php if ($shipping_address) { ?>
            <div class="shipping">
              <h3><?php echo $text_shipping_address; ?></h3>
              <address>
                <?php echo $shipping_address; ?>
              </address>
            </div>
          <?php } ?>
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
      <table class="table">
        <thead>
          <tr>
            <td class="left"><?php echo $column_name; ?></td>
            <td class="left"><?php echo $column_model; ?></td>
            <td class="right"><?php echo $column_quantity; ?></td>
            <td class="right"><?php echo $column_price; ?></td>
            <td class="right"><?php echo $column_total; ?></td>
            <?php if ($products) { ?>
            <td style="width: 1px;"></td>
            <?php } ?>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr>
            <td class="left"><?php echo $product['name']; ?>
              <?php foreach ($product['option'] as $option) { ?>
              <br />
              &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
              <?php } ?></td>
            <td class="left"><?php echo $product['model']; ?></td>
            <td class="right"><?php echo $product['quantity']; ?></td>
            <td class="right"><?php echo $product['price']; ?></td>
            <td class="right"><?php echo $product['total']; ?></td>
            <td class="right"><a href="<?php echo $product['return']; ?>"><img src="catalog/view/theme/default/image/return.png" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>" /></a></td>
          </tr>
          <?php } ?>
          <?php foreach ($vouchers as $voucher) { ?>
            <tr>
              <td class="left"><?php echo $voucher['description']; ?></td>
              <td class="left"></td>
              <td class="right">1</td>
              <td class="right"><?php echo $voucher['amount']; ?></td>
              <td class="right"><?php echo $voucher['amount']; ?></td>
              <?php if ($products) { ?>
                <td></td>
              <?php } ?>
            </tr>
          <?php } ?>
        </tbody>
        <tfoot>
          <?php foreach ($totals as $total) { ?>
            <tr>
              <td colspan="3"></td>
              <td class="right"><b><?php echo $total['title']; ?>:</b></td>
              <td class="right"><?php echo $total['text']; ?></td>
              <?php if ($products) { ?>
                <td></td>
              <?php } ?>
            </tr>
          <?php } ?>
        </tfoot>
      </table>
      <?php if ($comment) { ?>
        <table class="list">
          <thead>
            <tr>
              <td class="left"><?php echo $text_comment; ?></td>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="left"><?php echo $comment; ?></td>
            </tr>
          </tbody>
        </table>
      <?php } ?>
  </div>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?> 