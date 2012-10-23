<section id="products">
  <div class="container clearfix">
    <ul>
      <?php foreach ($products as $product) { ?>
        <li>
          <a href="<?php echo $product['href']; ?>">
            <?php if ($product['thumb']) { ?>
              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
            <?php } ?>
            <!--<h3><?php echo $product['name']; ?></h3>-->
          </a>
        </li>
      <?php } ?>
    </ul>
  </div>
</section>