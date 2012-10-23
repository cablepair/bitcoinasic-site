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
      <?php if ($success) { ?>
        <div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
      <?php } ?>
      <?php if ($products) { ?>
        <div class="wishlist-info">
          <table>
            <thead>
              <tr>
                <td class="image"><?php echo $column_image; ?></td>
                <td class="name"><?php echo $column_name; ?></td>
                <td class="model"><?php echo $column_model; ?></td>
                <td class="stock"><?php echo $column_stock; ?></td>
                <td class="price"><?php echo $column_price; ?></td>
                <td class="action"><?php echo $column_action; ?></td>
              </tr>
            </thead>
            <?php foreach ($products as $product) { ?>
            <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
              <tr>
                <td class="image"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                  <?php } ?></td>
                <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
                <td class="model"><?php echo $product['model']; ?></td>
                <td class="stock"><?php echo $product['stock']; ?></td>
                <td class="price"><?php if ($product['price']) { ?>
                  <div class="price">
                    <?php if (!$product['special']) { ?>
                      <?php echo $product['price']; ?>
                    <?php } else { ?>
                      <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
                    <?php } ?>
                  </div>
                  <?php } ?></td>
                <td class="action"><img src="catalog/view/theme/default/image/cart-add.png" alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />&nbsp;&nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
              </tr>
            </tbody>
            <?php } ?>
          </table>
        </div>
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