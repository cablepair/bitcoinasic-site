<?php echo $header; ?>
<div class="page">
    <div class="container">
      <header class="header">
        <h1><?php echo $heading_title; ?></h1>
      </header>
      <ul class="products clearfix">
        <?php foreach ($products as $product) { ?>
          <a href="<?php echo $product['href']; ?>">
            <li>
              <h3><?php echo $product['name']; ?></h3>
              <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
            </li>
          </a>
        <?php } ?>
      </ul>
    </div>
</div>
<?php echo $footer; ?>