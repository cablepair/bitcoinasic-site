<?php echo $header; ?>
<h1 class="heading"><?php echo $heading_title; ?></h1>
<div class="container">
  <ul class="products clearfix">
    <?php foreach ($products as $product) { ?>
      <li>
        <a href="<?php echo $product['href']; ?>">
          <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
          <div class="info">
            <h3><?php echo $product['name']; ?></h3>
          </div>
        </a>
      </li>
    <?php } ?>
  </ul>
</div>
<?php echo $footer; ?>